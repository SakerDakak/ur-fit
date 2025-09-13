part of 'subscription_cubit.dart';

@freezed
abstract class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default([]) List<PackageModel> packages,
    @Default(null) int? selectedPackage,
    @Default(null) String? paymentUrl,
    @Default(null) DiscountValueModel? discountValue,
    @Default(null) String? coupon,
    @Default(RequestState.initial) RequestState getPackagesState,
    @Default(RequestState.initial) RequestState getPaymentUrlState,
    @Default(RequestState.initial) RequestState paymentResponseState,
    @Default(RequestState.initial) RequestState couponState,
    @Default('') String errMessage,
  }) = _SubscriptionState;
}
