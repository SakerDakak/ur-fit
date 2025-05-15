import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/const.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/loading_helper.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/subscription_module/data/models/discount_value_model.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/service_locator.dart';

part 'subscription_state.dart';

part 'subscription_cubit.freezed.dart';
// enum PlanType {exercise ,diet ,both}
class SubscriptionCubit extends Cubit<SubscriptionState> {
  final BaseSubscriptionRepo _subscriptionRepo;

  SubscriptionCubit(this._subscriptionRepo) : super(const SubscriptionState());

  getPackages({required PlanType planType}) {
    emit(state.copyWith(getPackagesState: RequestState.loading));

    _subscriptionRepo.getPackages(planType: planType).then((result) {
      result.fold(
        (failure) => emit(state.copyWith(
          getPackagesState: RequestState.failure,
          errMessage: failure.message,
        )),
        (successData) => emit(state.copyWith(
          getPackagesState: RequestState.success,
          packages: successData,
          // packages: successData,
        )),
      );
    });
  }

  updateSelectedPackage(int index) async {
    emit(state.copyWith(selectedPackage: index));
    if(state.coupon != null) {
     await checkCouponCode(coupon: state.coupon!);
    }
  }

  paymentResponse(String url) async {
    LoadingHelper.startLoading();
    emit(state.copyWith(paymentResponseState: RequestState.loading));
    final result = await _subscriptionRepo.paymentResponse(url: url);

    result.fold(
      (failure) {

        showDialog(context: navigatorKey.currentContext!, builder: (BuildContext context) {
          return AlertDialog(
            title: Text(failure.message,style: CustomTextStyle.bold_24.copyWith(color: Colors.black),),
            content: Text(failure.message,style: CustomTextStyle.bold_24.copyWith(color: Colors.black),),
            actions: [
              TextButton(onPressed: () {
                context.pop();
              }, child: Text("Ok"))
            ],
          );
        });
        LoadingHelper.stopLoading();

      },
      (successData) async {

        final package = state.packages.firstWhere((package) => package.id == state.selectedPackage || package.id == state.packages.first.id);
       switch(package.type){

         case PlanType.exercise:
           await rootScaffoldKey.currentContext!.read<WorkoutCubit>().generateWorkOutPlan();
           break;
         case PlanType.diet:
           await rootScaffoldKey.currentContext!.read<MealsCubit>().generateMealPlan();
           sl<AuthenticationBloc>().add(GetUserDataFromServer());

            break;
         case PlanType.both:
           await rootScaffoldKey.currentContext!.read<MealsCubit>().generateMealPlan();
           await rootScaffoldKey.currentContext!.read<WorkoutCubit>().generateWorkOutPlan();
           sl<AuthenticationBloc>().add(GetUserDataFromServer());
            break;
       }
        LoadingHelper.stopLoading();
        showDialog(context: navigatorKey.currentContext!, builder: (BuildContext context) {
          return AlertDialog(
            title: Text(successData.toString(),style: CustomTextStyle.bold_24.copyWith(color: Colors.black),),
            content: Text(successData.toString(),style: CustomTextStyle.bold_24.copyWith(color: Colors.black),),
            actions: [
              TextButton(onPressed: () {
                context.pop();
              }, child: Text("Ok"))
            ],
          );
        });
      //   emit(state.copyWith(
      //   paymentResponseState: RequestState.success,
      //   // packages: successData,
      // ));
      },
    );
  }

  getPaymentUrl() async {
    emit(state.copyWith(getPaymentUrlState: RequestState.loading));
      print("coupon code : ${state.coupon}");
      if(state.discountValue  != null && state.discountValue?.final_price == 0 || state.discountValue?.final_price == 0.0) {
        final package = state.packages.firstWhere((package) => package.id == state.selectedPackage || package.id == state.packages.first.id);
        switch(package.type){

          case PlanType.exercise:
            await rootScaffoldKey.currentContext!.read<WorkoutCubit>().generateWorkOutPlan();
            break;
          case PlanType.diet:
            await rootScaffoldKey.currentContext!.read<MealsCubit>().generateMealPlan();
            sl<AuthenticationBloc>().add(GetUserDataFromServer());

            break;
          case PlanType.both:
            await rootScaffoldKey.currentContext!.read<MealsCubit>().generateMealPlan();
            await rootScaffoldKey.currentContext!.read<WorkoutCubit>().generateWorkOutPlan();
            sl<AuthenticationBloc>().add(GetUserDataFromServer());
            break;
        }
        LoadingHelper.stopLoading();
      }else {
        final result =
        await _subscriptionRepo.getPaymentUrl(
            packageId: state.selectedPackage ?? state.packages.first.id,
            couponeCode: state.coupon);
        result.fold(
              (failure) =>
              emit(state.copyWith(
                getPaymentUrlState: RequestState.failure,
                errMessage: failure.message,
              )),
              (successData) {
            print("successData : $successData");
            emit(state.copyWith(
              getPaymentUrlState: RequestState.success,
              paymentUrl: successData,
              // packages: successData,
            ));
          },
        );
      }
  }

  checkCouponCode({ required String coupon}) async {
    final price = state.packages.firstWhere((package) => package.id == state.selectedPackage ).price;
    emit(state.copyWith(couponState: RequestState.loading,coupon:coupon));
    final result  = await _subscriptionRepo.getDiscountValue(price: num.parse(price), coupon: coupon);

    result.fold((l){
      print("error : ${l.message}");

      emit(state.copyWith(
        couponState: RequestState.failure,
        errMessage: "هذا الكوبون غير صالح ",
      ));
    }, (r){
      emit(state.copyWith(
        couponState: RequestState.success,
        discountValue: r,
      ));
    });

  }
}
