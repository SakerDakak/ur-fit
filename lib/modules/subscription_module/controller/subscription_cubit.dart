import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/modules/subscription_module/data/models/discount_value_model.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';

import '../../../core/presentation/utils/enums.dart';

part 'subscription_cubit.freezed.dart';
part 'subscription_state.dart';

// enum PlanType {exercise ,diet ,both}
class SubscriptionCubit extends Cubit<SubscriptionState> {
  final SubscriptionRepo _subscriptionRepo;

  SubscriptionCubit(this._subscriptionRepo) : super(const SubscriptionState());

  getPackages({PlanType? planType}) {
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

  updateSelectedPackage(int id) async {
    emit(state.copyWith(selectedPackage: id));
    if (state.coupon != null) {
      await checkCouponCode(coupon: state.coupon!);
    }
  }

  paymentResponse(String url) async {
    LoadingHelper.startLoading();
    emit(state.copyWith(paymentResponseState: RequestState.loading));
    final result = await _subscriptionRepo.paymentResponse(url: url);

    result.fold(
      (failure) {
        showDialog(
            context: AppConst.navigatorKey.currentContext!,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  failure.message,
                  style: TStyle.bold_24.copyWith(color: Colors.black),
                ),
                content: Text(
                  failure.message,
                  style: TStyle.bold_24.copyWith(color: Colors.black),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text("Ok"))
                ],
              );
            });
        LoadingHelper.stopLoading();
      },
      (successData) async {
        LoadingHelper.stopLoading();
        showDialog(
            context: AppConst.navigatorKey.currentContext!,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  successData.toString(),
                  style: TStyle.bold_24.copyWith(color: Colors.black),
                ),
                content: Text(
                  successData.toString(),
                  style: TStyle.bold_24.copyWith(color: Colors.black),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Session().getUserDataFromServer();

                        context.pop();
                      },
                      child: Text("Ok"))
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
    final result = await _subscriptionRepo.getPaymentUrl(
        packageId: state.selectedPackage ?? state.packages.first.id, couponeCode: state.coupon);
    result.fold(
      (failure) => emit(state.copyWith(
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
    // }
  }

  clearCoupon() {
    emit(state.copyWith(coupon: null, discountValue: null, couponState: RequestState.initial));
  }

  checkCouponCode({required String coupon}) async {
    final price = state.packages.firstWhere((package) => package.id == state.selectedPackage).price;
    emit(state.copyWith(couponState: RequestState.loading, coupon: coupon));
    final result = await _subscriptionRepo.getDiscountValue(price: num.parse(price), coupon: coupon);

    result.fold((l) {
      print("error : ${l.message}");

      emit(state.copyWith(
        couponState: RequestState.failure,
        errMessage: L10n.tr().couponIsInValid,
      ));
    }, (r) {
      emit(state.copyWith(
        couponState: RequestState.success,
        discountValue: r,
      ));
    });
  }
}
