// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  final PageState pageState;
  final int countryId;
  final int cityId;
  final String verificationId;
  final String phone;
  final String otp;
  final bool remember;
  final String email;
  final String firstName;
  final String accountType;
  final String password;
  final String errMessage;
  final String otpErrMessage;
  final String clientState;
  final String recaptcha_token;
  final String newPassword;
  final String confirmPassword;
  final bool acceptTerms;
  final Map<String, dynamic> userTypes;
  const LoginState({
    this.pageState = PageState.initial,
    this.userTypes = const {},
    this.acceptTerms = false,
    this.firstName = '',
    this.accountType = "",
    this.countryId = 1,
    this.cityId = 1,
    this.verificationId = '',
    this.phone = '',
    this.otp = '',
    this.remember = false,
    this.email = '',
    this.password = '',
    this.newPassword = '',
    this.confirmPassword = '',
    this.errMessage = '',
    this.otpErrMessage = '',
    this.clientState = "NOT INITIALIZED",
    this.recaptcha_token = '',
  });

  @override
  List<Object?> get props => [
        userTypes,
        pageState,
        countryId,
        cityId,
        verificationId,
        phone,
        otp,
        remember,
        email,
        password,
        newPassword,
        confirmPassword,
        errMessage,
        otpErrMessage,
        clientState,
        recaptcha_token,
        firstName,
        acceptTerms,
      ];

  LoginState copyWith({
    Map<String, dynamic>? userTypes,
    PageState? pageState,
    int? countryId,
    int? cityId,
    String? verificationId,
    String? phone,
    String? otp,
    bool? remember,
    String? email,
    String? password,
    String? newPassword,
    String? confirmPassword,
    String? errMessage,
    String? otpErrMessage,
    String? clientState,
    String? recaptcha_token,
    String? firstName,
    String? accountType,
    bool? acceptTerms,
  }) {
    return LoginState(
      userTypes: userTypes ?? this.userTypes,
      pageState: pageState ?? this.pageState,
      countryId: countryId ?? this.countryId,
      cityId: cityId ?? this.cityId,
      verificationId: verificationId ?? this.verificationId,
      phone: phone ?? this.phone,
      otp: otp ?? this.otp,
      remember: remember ?? this.remember,
      email: email ?? this.email,
      password: password ?? this.password,
      newPassword: newPassword ?? this.newPassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      errMessage: errMessage ?? this.errMessage,
      otpErrMessage: otpErrMessage ?? this.otpErrMessage,
      clientState: clientState ?? this.clientState,
      recaptcha_token: recaptcha_token ?? this.recaptcha_token,
      accountType: accountType ?? this.accountType,
      firstName: firstName ?? this.firstName,
      acceptTerms: acceptTerms ?? this.acceptTerms,
    );
  }
}
