part of 'onboarding_cubit.dart';

abstract class OnboardingState {}

class OnboardingInitial extends OnboardingState {}

abstract class CitiesStates extends OnboardingState {}

class OnboardingLoadingCities extends CitiesStates {}

class OnboardingCitiesLoaded extends CitiesStates {
  final List<CountryModel> cities;

  OnboardingCitiesLoaded(this.cities);
}

class OnboardingCitiesFailed extends CitiesStates {
  final String message;

  OnboardingCitiesFailed(this.message);
}

abstract class CountriesStates extends OnboardingState {}

class OnboardingLoadingCountries extends CountriesStates {}

class OnboardingCountriesLoaded extends CountriesStates {
  final List<CountryModel> countries;

  OnboardingCountriesLoaded(this.countries);
}

class OnboardingCountriesFailed extends CountriesStates {
  final String message;

  OnboardingCountriesFailed(this.message);
}
