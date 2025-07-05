abstract class AuthStates {}

class AuthInitial extends AuthStates {}

abstract class AuthLoginStates extends AuthStates {}

class AuthLoginLoading extends AuthLoginStates {}

class AuthLoginSuccess extends AuthLoginStates {
  final String message;
  AuthLoginSuccess(this.message);
}

class AuthLoginError extends AuthLoginStates {
  final String error;
  AuthLoginError(this.error);
}
