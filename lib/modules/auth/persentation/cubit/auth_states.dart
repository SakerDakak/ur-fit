import 'package:urfit/modules/auth/data/models/user/user_model.dart';

abstract class AuthStates {}

class AuthInitialState extends AuthStates {}

abstract class LoginStates extends AuthStates {}

class LoginLoadingState extends LoginStates {}

class LoginErrorState extends LoginStates {
  final String? error;

  LoginErrorState({this.error});
}

class LoginSuccessState extends LoginStates {
  UserModel user;
  LoginSuccessState(this.user);
}

abstract class RegisterStates extends AuthStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  final String? error;

  RegisterErrorState({this.error});
}

class RegisterSuccessState extends RegisterStates {}
