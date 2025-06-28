part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

// splash screen
class AuthenticationUninitialized extends AuthenticationState {}

// on boarding
// class AuthenticationOnBoarding extends AuthenticationState {
//   final List<SliderImageModel>  sliderImages;
//   const AuthenticationOnBoarding({required this.sliderImages});
// }

// authenticated => home
class AuthenticationAuthenticated extends AuthenticationState {
  const AuthenticationAuthenticated();
}
class AuthenticatedWithoutSubscription extends AuthenticationState {
  const AuthenticatedWithoutSubscription();
}
class AuthenticationForgetPassword extends AuthenticationState {}

//Unauthenticated => search brand
class AuthenticationUnauthenticated extends AuthenticationState {}

class AuthenticationGoToChooseLang extends AuthenticationState {}

class AuthenticationChooseLang extends AuthenticationState {}
class AuthenticationChooseCountry extends AuthenticationState {}
class AuthenticationOnBoardingTwo extends AuthenticationState {}

class AuthenticationPersonalInfo extends AuthenticationState {}

class AuthenticationRegister extends AuthenticationState {
  // final String token ;

  const AuthenticationRegister();
}

// class AuthenticationAddAddress extends AuthenticationState {}

class AuthenticationAsGuest extends AuthenticationState {}
class AuthenticationUpdatePassword extends AuthenticationState {}

// class AuthenticationUpdateUserData extends AuthenticationState {}

class AuthenticationLoginFlow extends AuthenticationState {}
// class AuthenticationRequestPrice extends AuthenticationState {}
