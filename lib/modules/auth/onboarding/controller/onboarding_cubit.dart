import 'package:bloc/bloc.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/modules/auth/onboarding/model/country/country_model.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final AuthenticationRepo authenticationRepo;
  OnboardingCubit(this.authenticationRepo) : super(OnboardingInitial());

  CountryModel? _selectedCountry;
  getCountries() async {
    emit(OnboardingLoadingCountries());
    final result = await authenticationRepo.getCountries();
    result.fold(
      (l) => emit(OnboardingError(l.message)),
      (r) {
        _selectedCountry ??= r.first;
        emit(OnboardingCountriesLoaded(r));
      },
    );
  }

  getCities() async {
    emit(OnboardingLoadingCities());
    final result = await authenticationRepo.getCities(countryId: _selectedCountry!.id);
    result.fold(
      (l) => emit(OnboardingError(l.message)),
      (r) => emit(OnboardingCitiesLoaded(r)),
    );
  }

  void setCountries(CountryModel selectedCountry) {
    _selectedCountry = selectedCountry;
  }
}
