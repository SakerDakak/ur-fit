part of 'authentication_bloc.dart';


abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent([List props = const []]) : super();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';
}



class LoggedOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';
}

class LoginFlow extends AuthenticationEvent {
  @override
  String toString() => 'loginFlow';
}
class ForgetPasswordFlowEvent extends AuthenticationEvent {
  @override
  String toString() => 'ForgetPasswordFlow';
}

class GetUserData extends AuthenticationEvent {

  // final UserModel userModel;

  GetUserData() : super([]);

  @override
  String toString() => 'GetUserData }';
}
// class ConfirmEmail extends AuthenticationEvent {
//   @override
//   String toString() => 'confirm';
// }
//
class GoBack extends AuthenticationEvent {
  @override
  String toString() => 'goBack';
}
class RegisterEvent extends AuthenticationEvent {
  @override
  String toString() => 'RegisterEvent';
}
class LoggedIn extends AuthenticationEvent {
  final String token;
  // final UserModel userModel;

  LoggedIn({required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn { token: $token ,}';
}

class CheckOnBoardingEvent extends AuthenticationEvent {
  @override
  String toString() => 'onboarding';
}

class DoneOnBoardingEvent extends AuthenticationEvent {
  final CountryModel city;

  DoneOnBoardingEvent(this.city);
  @override
  String toString() => 'onboarding';
}
class GoToChooseCity extends AuthenticationEvent {
  final CountryModel country;

  GoToChooseCity(this.country);
  @override
  String toString() => 'GoToChooseLanguage';
}
class GoToChooseLanguage extends AuthenticationEvent {
  @override
  String toString() => 'GoToChooseLanguage';
}
class DoneChooseLanguageEvent extends AuthenticationEvent {
  final dynamic language;

  DoneChooseLanguageEvent(this.language);
  @override
  String toString() => 'doneChooseLanguage';
}

class GuestLogin extends AuthenticationEvent {

  @override
  String toString() => 'Guest';
}

class GetUserDataFromServer extends AuthenticationEvent {

  @override
  String toString() => 'GetUserDataFromServer';
}
class GetSliderImageEvent extends AuthenticationEvent {

  @override
  String toString() => 'GetUserDataFromServer';
}
class UpdatePasswordEvent extends AuthenticationEvent {

  @override
  String toString() => 'UpdatePasswordEvent';
}

class UpdateSubscriptionEvent extends AuthenticationEvent {

  @override
  String toString() => 'UpdateSubscriptionEvent';
}


class NavigateToRequestPrice extends AuthenticationEvent {

  @override
  String toString() => 'Request Price';
}



