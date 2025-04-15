part of 'subscription_cubit.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default([]) List<PackageModel> packages,
    @Default(null) int? selectedPackage,
    @Default('') String paymentUrl,

    @Default(RequestState.initial) RequestState getPackagesState,
    @Default(RequestState.initial) RequestState getPaymentUrlState,
    @Default(RequestState.initial) RequestState paymentResponseState,


    @Default('') String errMessage,



  }) = _SubscriptionState;
}
