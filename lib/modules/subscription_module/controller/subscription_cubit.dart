import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
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
    emit(state.copyWith(paymentResponseState: RequestState.loading));
    final result = await _subscriptionRepo.paymentResponse(url: url);

    result.fold(
      (failure) {
        // عرض رسالة فشل الدفع باستخدام Toast بدلاً من Alert Dialog
        Alerts.showToast(
          L10n.tr().paymentFailed, // رسالة مترجمة لفشل الدفع
          error: true,
          length: Toast.LENGTH_LONG,
        );
        emit(state.copyWith(
          paymentResponseState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) async {
        // عرض رسالة نجاح الدفع باستخدام Toast
        Alerts.showToast(
          L10n.tr().paymentSuccessful, // رسالة مترجمة لنجاح الدفع
          error: false,
          length: Toast.LENGTH_LONG,
        );

        // تحديث بيانات المستخدم بعد نجاح الدفع
        await Session().getUserDataFromServer();

        emit(state.copyWith(
          paymentResponseState: RequestState.success,
        ));

        // إعادة تحميل الصفحة الرئيسية لتحديث الواجهات
        if (AppConst.navigatorKey.currentContext != null) {
          AppConst.navigatorKey.currentContext!.go('/main');
        }
      },
    );
  }

  getPaymentUrl() async {
    emit(state.copyWith(
      getPaymentUrlState: RequestState.loading,
      paymentUrl: null, // إعادة تعيين رابط الدفع عند بدء عملية جديدة
    ));
    print("coupon code : ${state.coupon}");
    final result = await _subscriptionRepo.getPaymentUrl(
        packageId: state.selectedPackage ?? state.packages.first.id,
        couponeCode: state.coupon);
    result.fold(
      (failure) {
        emit(state.copyWith(
          getPaymentUrlState: RequestState.failure,
          errMessage: failure.message,
        ));
        // إعادة تعيين الحالة إلى الحالة الأولية بعد عرض رسالة الخطأ
        Future.delayed(const Duration(milliseconds: 100), () {
          emit(state.copyWith(getPaymentUrlState: RequestState.initial));
        });
      },
      (successData) {
        print("successData : $successData");
        emit(state.copyWith(
          getPaymentUrlState: RequestState.success,
          paymentUrl: successData,
          // packages: successData,
        ));
        // إعادة تعيين الحالة إلى الحالة الأولية بعد معالجة النتيجة
        Future.delayed(const Duration(milliseconds: 100), () {
          emit(state.copyWith(getPaymentUrlState: RequestState.initial));
        });
      },
    );
    // }
  }

  clearCoupon() {
    emit(state.copyWith(
        coupon: null, discountValue: null, couponState: RequestState.initial));
  }

  checkCouponCode({required String coupon}) async {
    final price = state.packages
        .firstWhere((package) => package.id == state.selectedPackage)
        .price;
    emit(state.copyWith(couponState: RequestState.loading, coupon: coupon));
    final result = await _subscriptionRepo.getDiscountValue(
        price: num.parse(price), coupon: coupon);

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
