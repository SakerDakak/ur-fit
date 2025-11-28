import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/subscription_module/data/models/discount_value_model.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';

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
        // تحديث بيانات المستخدم بعد نجاح الدفع
        await Session().getUserDataFromServer();

        // إنشاء خطط التمرين والتغذية بعد نجاح الاشتراك
        await _createPlansAfterSubscription();

        // عرض رسالة نجاح الدفع باستخدام Toast بعد انتهاء جميع العمليات
        Alerts.showToast(
          L10n.tr().paymentSuccessful, // رسالة مترجمة لنجاح الدفع
          error: false,
          length: Toast.LENGTH_LONG,
        );

        // تحديث الحالة إلى success بعد انتهاء جميع العمليات
        emit(state.copyWith(
          paymentResponseState: RequestState.success,
        ));
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
      },
      (successData) {
        print("successData : $successData");
        emit(state.copyWith(
          getPaymentUrlState: RequestState.success,
          paymentUrl: successData,
        ));
      },
    );
  }

  /// معالجة الاشتراك المجاني (كوبون 100%)
  Future<void> handleFreeSubscription() async {
    // تحديث الحالة إلى loading للحفاظ على اللودينج
    emit(state.copyWith(paymentResponseState: RequestState.loading));

    try {
      // تحديث بيانات المستخدم من السيرفر
      await Session().getUserDataFromServer();

      // إنشاء خطط التمرين والتغذية بعد الاشتراك المجاني
      await _createPlansAfterSubscription();

      // عرض رسالة نجاح
      Alerts.showToast(
        L10n.tr().youHaveSuccessfullySubscribedToPlan,
        error: false,
        length: Toast.LENGTH_LONG,
      );

      // تحديث الحالة إلى success بعد انتهاء جميع العمليات
      emit(state.copyWith(paymentResponseState: RequestState.success));
    } catch (e) {
      print("خطأ في الاشتراك المجاني: $e");

      // تحديث الحالة إلى failure
      emit(state.copyWith(
        paymentResponseState: RequestState.failure,
        errMessage: 'حدث خطأ أثناء الاشتراك: $e',
      ));

      // عرض رسالة خطأ
      Alerts.showToast(
        'حدث خطأ: $e',
        error: true,
        length: Toast.LENGTH_LONG,
      );
    }
  }

  /// إعادة تعيين حالة الدفع إلى الحالة الأولية
  void resetPaymentState() {
    emit(state.copyWith(getPaymentUrlState: RequestState.initial));
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

  // دالة إنشاء خطط التمرين والتغذية بعد نجاح الاشتراك
  Future<void> _createPlansAfterSubscription() async {
    try {
      final user = Session().currentUser;
      if (user?.hasValidSubscription != true || user?.packageId == null) return;

      // الحصول على السياق من NavigatorKey
      final context = AppConst.navigatorKey.currentContext;
      if (context == null) return;

      // الحصول على تفاصيل الباقة من API
      final packageType = await _getPackageTypeFromServer(user!.packageId!);
      if (packageType == null) return;

      if (packageType == PlanType.exercise || packageType == PlanType.both) {
        // إنشاء خطة التمرين إذا لم تكن موجودة
        if (user.haveExercisePlan != true) {
          final workoutCubit = context.read<WorkoutCubit>();
          await workoutCubit.generateWorkOutPlan();

          // انتظار قليل ثم تحديث بيانات المستخدم مرة أخرى
          await Future.delayed(const Duration(seconds: 2));
          await Session().getUserDataFromServer();
        }
      }

      if (packageType == PlanType.diet || packageType == PlanType.both) {
        // إنشاء خطة التغذية إذا لم تكن موجودة
        if (user.haveMealPlan != true) {
          final mealsCubit = context.read<MealsCubit>();
          await mealsCubit.generateMealPlan();
        }
      }

      // تحديث بيانات المستخدم مرة أخيرة بعد إنشاء الخطط
      await Session().getUserDataFromServer();
    } catch (e) {
      print("خطأ في إنشاء الخطط بعد الاشتراك: $e");
    }
  }

  /// الحصول على نوع الباقة من السيرفر
  Future<PlanType?> _getPackageTypeFromServer(int packageId) async {
    try {
      final result = await _subscriptionRepo.getPackages();

      return result.fold(
        (failure) {
          print("خطأ في تحميل تفاصيل الباقة: ${failure.message}");
          return null;
        },
        (packages) {
          final package = packages.where((p) => p.id == packageId).firstOrNull;
          if (package == null) {
            print("لم يتم العثور على الباقة مع المعرف: $packageId");
            return null;
          }
          return package.type;
        },
      );
    } catch (e) {
      print("خطأ في تحميل تفاصيل الباقة: $e");
      return null;
    }
  }
}
