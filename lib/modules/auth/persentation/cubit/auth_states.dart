abstract class AuthStates {}

class AuthInitialState extends AuthStates {}

abstract class LoginStates extends AuthStates {}

class LoginLoadingState extends LoginStates {}

class LoginErrorState extends LoginStates {
  final String? error;

  LoginErrorState({this.error});
}

abstract class LoginSuccessState extends LoginStates {}

class UnCheckedUser extends LoginSuccessState {}

class CheckedUncompletedInfoUser extends LoginSuccessState {}

class CheckedWithInfoUser extends LoginSuccessState {}

abstract class RegisterStates extends AuthStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  final String? error;

  RegisterErrorState({this.error});
}

class RegisterSuccessState extends RegisterStates {}
