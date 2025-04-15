import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/modules/auth_module/onboarding/model/country/country_model.dart';
import 'package:urfit/modules/auth_module/repo/authentication_repo.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final BaseAuthenticationRepo authenticationRepo;
  OnboardingCubit(this.authenticationRepo) : super(const OnboardingState());

  getCountries() async {
    final result = await authenticationRepo.getCountries();
    result.fold(
      (l) => emit(state.copyWith(countries: [])),
      (r) => emit(state.copyWith(countries: r)),
    );
  }


  getCities() async {
    final result = await authenticationRepo.getCities(countryId: state.selectedCountry);
    result.fold(
          (l) => emit(state.copyWith(countries: [])),
          (r) => emit(state.copyWith(cities: r)),
    );
  }
  void setCountries(CountryModel selectedCountry) {

    emit(state.copyWith(selectedCountry: selectedCountry.id));
  }
}
