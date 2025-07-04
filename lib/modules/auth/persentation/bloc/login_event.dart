// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Login widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginEvent extends Equatable {}

/// Event that is dispatched when the Login widget is first created.
class LoginInitialEvent extends LoginEvent {
 

  LoginInitialEvent();
  @override
  List<Object?> get props => [];
}

// class OnChangeCountryCodeEvent extends LoginEvent {
//   final String countryCode;
//
//   OnChangeCountryCodeEvent(this.countryCode);
//
//   @override
//   List<Object> get props => [countryCode];
// }

class Login extends LoginEvent {

 final BuildContext context;
  // final UserModel userModel;

  Login(this.context);

  @override
  String toString() => 'login }';

  @override
  List<Object> get props => [];
}

class OnChangePhoneEvent extends LoginEvent {
  final String phone;

  OnChangePhoneEvent(this.phone);

  @override
  List<Object> get props => [phone];
}
class OnChangeFirstNameEvent extends LoginEvent {
  final String firstName;

  OnChangeFirstNameEvent(this.firstName);

  @override
  List<Object> get props => [firstName];
}
// class OnChangeLastNameEvent extends LoginEvent {
//   final String lastName;
//
//   OnChangeLastNameEvent(this.lastName);
//
//   @override
//   List<Object> get props => [lastName];
// }
class OnChangeAccountTypeEvent extends LoginEvent {
  final String type;

  OnChangeAccountTypeEvent(this.type);

  @override
  List<Object> get props => [type];
}

class OnChangeEmailEvent extends LoginEvent {
  final String email;

  OnChangeEmailEvent(this.email);

  @override
  List<Object> get props => [email];
}
class OnChangePasswordEvent extends LoginEvent {
  final String password;

  OnChangePasswordEvent(this.password);

  @override
  List<Object> get props => [password];
}
class OnChangeNewPasswordEvent extends LoginEvent {
  final String password;

  OnChangeNewPasswordEvent(this.password);

  @override
  List<Object> get props => [password];
}
class OnChangeNewPasswordConfirmEvent extends LoginEvent {
  final String password;

  OnChangeNewPasswordConfirmEvent(this.password);

  @override
  List<Object> get props => [password];
}
class ResetPasswordEvent extends LoginEvent {


  ResetPasswordEvent();

  @override
  List<Object> get props => [];
}
class ForgetPasswordEvent extends LoginEvent {


  ForgetPasswordEvent();

  @override
  List<Object> get props => [];
}
class RecaptchaInit extends LoginEvent {
  final String siteKey ;
  final bool isForgetPassword;

  RecaptchaInit(this.siteKey, this.isForgetPassword);

  @override
  List<Object> get props => [siteKey,isForgetPassword];
}
class GetRecaptchaToken extends LoginEvent {
  final bool isForgetPassword;
  GetRecaptchaToken(this.isForgetPassword);

  @override
  List<Object> get props => [isForgetPassword];
}
class OnChangeOtpEvent extends LoginEvent {
  final String otp;

  OnChangeOtpEvent(this.otp);

  @override
  List<Object> get props => [otp];
}
class ResetBlocEvent extends LoginEvent {

  ResetBlocEvent();

  @override
  List<Object> get props => [];
}
class ClearErrorEvent extends LoginEvent {

  ClearErrorEvent();

  @override
  List<Object> get props => [];
}

class SendCodeEvent extends LoginEvent {

// final String phone;

  SendCodeEvent();

  @override
  List<Object> get props => [];
}

class CodeSentEvent extends LoginEvent {
  final String phone;
  final String verificationId;

  CodeSentEvent({required this.verificationId, required this.phone});

  @override
  List<Object> get props => [verificationId,phone];
}
class SubscriptionInfoEvent extends LoginEvent {
  final String token;


  SubscriptionInfoEvent({ required this.token});

  @override
  List<Object> get props => [token];
}

class GoogleLoginEvent extends LoginEvent {

  GoogleLoginEvent();

  @override
  List<Object?> get props => [];
}


class VerifyOtpCodeEvent extends LoginEvent {
  final String? code;

  VerifyOtpCodeEvent(this.code);

  @override
  List<Object?> get props => [code];
}

class ToggleRemember extends LoginEvent {
  final bool remember;

  ToggleRemember(this.remember);

  @override
  List<Object> get props => [remember];
}
class ToggleTerms extends LoginEvent {
  final bool accepted;

  ToggleTerms(this.accepted);

  @override
  List<Object> get props => [accepted];
}
class ForgetPasswordGoBack extends LoginEvent {

  ForgetPasswordGoBack();

  @override
  List<Object> get props => [];
}
class RegisterGoBack extends LoginEvent {

  RegisterGoBack();

  @override
  List<Object> get props => [];
}
class GetUserTypes extends LoginEvent {

  GetUserTypes();

  @override
  List<Object> get props => [];
}
class RegisterNowEvent extends LoginEvent {

  RegisterNowEvent();

  @override
  List<Object> get props => [];
}
class RegisterResendCode extends LoginEvent {
  final String via;
  RegisterResendCode(this.via);

  @override
  List<Object> get props => [via];
}
class RegisterUpdatePhone extends LoginEvent {
  RegisterUpdatePhone();

  @override
  List<Object> get props => [];
}
  class RegisterVerifyCode extends LoginEvent {

  RegisterVerifyCode();

  @override
  List<Object> get props => [];
}

// class SetCountryEvent extends LoginEvent {
//   final int country;
//   SetCountryEvent(this.country);

//   @override
//   List<Object> get props => [country];
// }
// class SetCityEvent extends LoginEvent {
//   final int city;
//   SetCityEvent(this.city);

//   @override
//   List<Object> get props => [city];
// }
class SaveUserDataEvent extends LoginEvent {
  final String token;
  final UserModel userModel;

  SaveUserDataEvent({required this.userModel, required this.token});

  @override
  List<Object> get props => [userModel, token];
}

class GetTokenEvent extends LoginEvent {
  final String phone;

  GetTokenEvent(this.phone);

  @override
  List<Object?> get props => [phone];
}

class GuestLoginEvent extends LoginEvent {

  GuestLoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginErrorEvent extends LoginEvent {

  LoginErrorEvent();

  @override
  List<Object?> get props => [];
}


