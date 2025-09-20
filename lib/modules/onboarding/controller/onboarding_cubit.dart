import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/onboarding/model/country/country_model.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final AuthRepo authenticationRepo;
  OnboardingCubit(this.authenticationRepo) : super(OnboardingInitial());

  CountryModel? _selectedCountry;
  int? get selectedCountryId => _selectedCountry?.id;
  getCountries() async {
    emit(OnboardingLoadingCountries());
    final result = await authenticationRepo.getCountries();
    result.fold(
      (l) => emit(OnboardingCountriesFailed(l.message)),
      (r) {
        _selectedCountry ??= r.first;
        emit(OnboardingCountriesLoaded(r));
      },
    );
  }

  getCities() async {
    emit(OnboardingLoadingCities());
    final result =
        await authenticationRepo.getCities(countryId: _selectedCountry!.id);
    result.fold(
      (l) => emit(OnboardingCitiesFailed(l.message)),
      (r) => emit(OnboardingCitiesLoaded(r)),
    );
  }

  void setCountries(CountryModel selectedCountry) {
    _selectedCountry = selectedCountry;
    di<SharedPreferences>().setInt(StorageKeys.countryId, selectedCountry.id);
  }
}
