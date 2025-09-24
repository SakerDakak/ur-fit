import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/register_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final _repo = di<AuthRepo>();
  AuthCubit() : super(AuthInitialState());

  Future<void> login(bool remember) async {
    emit(LoginLoadingState());
    final user = await _repo.login(
        email: emailController.text.trim(),
        password: loginPasswordController.text.trim());
    user.fold((l) async {
      emit(LoginErrorState(error: l.message));
    }, (response) async {
      TokenService.setToken(response.token);
      emit(LoginSuccessState(response.user));
    });
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final loginPasswordController = TextEditingController();

  Future register() async {
    final req = RegisterRequest(
      name: nameController.text.trim(),
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      cityId: Session().cityId,
      countryId: Session().countryId,
    );
    emit(RegisterLoadingState());
    final user = await _repo.register(req);
    user.fold((l) {
      emit(RegisterErrorState(error: l.message));
    }, (response) async {
      TokenService.setToken(response.token);
      emit(RegisterSuccessState());
    });
  }

  // Future<bool> resendOTP() async {
  //   final result = await _repo.resendOtp(email: emailController.text.trim());
  //   return result.fold((l) => false, (response) => true);
  // }

  // Future<void> submitOTP(String otp) async {
  //   final result = await _repo.otpCheckCode(code: otp, email: emailController.text.trim());
  //   return result.fold((l) {}, (user) {
  //     TokenService.setToken(Session().tempToken!);
  //     Session().setCurrentUser = user;
  //     AppConst.navigatorKey.currentContext?.go(StartPersonalInfoScreen.route);
  //   });
  // }

  sendOTP() async {
    final result = await _repo.resendOtp(email: emailController.text.trim());
    return result.fold((l) => false, (response) => true);
  }

  @override
  void emit(AuthStates state) {
    if (isClosed) return;
    super.emit(state);
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    loginPasswordController.dispose();
    return super.close();
  }
}
