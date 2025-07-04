part of 'onboarding_cubit.dart';

abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoadingCities extends OnboardingState {}

class OnboardingCitiesLoaded extends OnboardingState {
  final List<CountryModel> cities;

  OnboardingCitiesLoaded(this.cities);
}

class OnboardingLoadingCountries extends OnboardingState {}

class OnboardingCountriesLoaded extends OnboardingState {
  final List<CountryModel> countries;

  OnboardingCountriesLoaded(this.countries);
}

class OnboardingError extends OnboardingState {
  final String message;

  OnboardingError(this.message);
}
