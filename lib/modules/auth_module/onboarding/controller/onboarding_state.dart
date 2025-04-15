part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default([]) List<CountryModel> countries,
    @Default([]) List<CountryModel> cities,

    @Default(1) int selectedCountry,

  }) = _OnboardingState;
}
