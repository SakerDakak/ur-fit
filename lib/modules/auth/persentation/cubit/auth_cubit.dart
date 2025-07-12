import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/register_model.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final _repo = di<AuthRepo>();
  final int cityId;
  final int countryId;
  AuthCubit(this.countryId, this.cityId) : super(AuthInitialState());

  Future<void> login(bool remember) async {
    emit(LoginLoadingState());
    // AppConst.latestFunctionCalled = login;
    final user = await _repo.login(email: emailController.text.trim(), password: loginPasswordController.text.trim());
    user.fold((l) async {
      emit(LoginErrorState());
    }, (response) async {
      final user = response.user;
      await Future.wait([
        if (remember) FlutterKeychain.put(key: 'email', value: emailController.text.trim()),
        if (remember) FlutterKeychain.put(key: 'password', value: loginPasswordController.text.trim()),
      ]);
      if (user.isChecked != true) {
        Session().tempToken = response.token;
        emit(UnCheckedUser());
      } else {
        TokenService.setToken(response.token);
        Session().currentUser = user;
        if (user.hasCompleteStepOne) {
          emit(CheckedWithInfoUser());
        } else {
          emit(CheckedUncompletedInfoUser());
        }
      }
    });
  }

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final loginPasswordController = TextEditingController();

  register() async {
    final req = RegisterRequest(
      name: nameController.text.trim(),
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      cityId: cityId,
      countryId: countryId,
    );
    emit(RegisterLoadingState());
    // AppConst.latestFunctionCalled = register;
    final user = await _repo.register(req);
    user.fold((l) {
      emit(RegisterErrorState(error: l.message));
    }, (response) async {
      Session().tempToken = response.token;
      // await TokenService.setToken(response.token);
      emit(RegisterSuccessState());
    });
  }

  Future<bool> resendOTP() async {
    final result = await _repo.resendOtp(email: emailController.text.trim());
    return result.fold((l) => false, (response) => true);
  }

  Future<void> submitOTP(String otp) async {
    final result = await _repo.otpCheckCode(code: otp, email: emailController.text.trim());
    return result.fold((l) {}, (user) {
      TokenService.setToken(Session().tempToken!).then((_) => Session().tempToken = null);
      Session().currentUser = user;
    });
  }

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
