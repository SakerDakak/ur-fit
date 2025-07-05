import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import '../../../../../core/presentation/routes/routes.dart';
import '../../../../../core/presentation/utils/loading_helper.dart';
import '../../../data/models/user/user_model.dart';
import '../../../data/repo/authentication_repo.dart';
import '../login_bloc.dart';

part 'authentication_state.dart';

class AuthenticationBloc extends Cubit<AuthenticationState> {
  final AuthenticationRepo authenticationRepo;
  UserModel? currentUser;

  AuthenticationBloc(this.authenticationRepo) : super(AuthenticationUninitialized());

  FutureOr<void> loggedOut() async {
    await TokenService.deleteToken();
    AppConst.rootScaffoldKey.currentContext?.read<LoginBloc>().resetBloc();
    emit(AuthenticationUnauthenticated());
  }

  FutureOr<void> logInFlow() {
    LoadingHelper.stopLoading();
    emit(AuthenticationLoginFlow());
  }

  FutureOr<void> guestLogin() {
    AppConst.navigatorKey.currentContext?.pushNamed(AppRouter.authenticationScreen);

    emit(AuthenticationAsGuest());
  }

  Future<FutureOr<void>> getUserData() async {
    final result = await authenticationRepo.getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (loadedUser) async {
      currentUser = loadedUser;
      log("currentUser: ${currentUser?.toJson()}");
      if (currentUser?.isChecked == null || currentUser?.isChecked != '1') {
        AppConst.rootScaffoldKey.currentContext?.read<LoginBloc>().sendCode(currentUser!.email.toString(), "success");
        emit(AuthenticationForgetPassword());
      } else if (currentUser?.isChecked == '1' && currentUser?.hasValidSubscription == false) {
        emit(AuthenticationPersonalInfo());
      } else if (currentUser?.isChecked == '1' &&
          currentUser?.age != null &&
          currentUser?.targetWeight != null &&
          currentUser?.hasValidSubscription == true) {
        AppConst.navigatorKey.currentContext?.pushReplacementNamed(AppRouter.authenticationScreen);
        emit(const AuthenticationAuthenticated());
      } else {
        AppConst.navigatorKey.currentContext?.pushReplacementNamed(AppRouter.authenticationScreen);
        emit(const AuthenticationAuthenticated());
      }

      LoadingHelper.stopLoading();
    });
  }

  FutureOr<void> updatePasswordEvent() {
    emit(AuthenticationUpdatePassword());
  }

  FutureOr<void> goBack() {
    AppConst.rootScaffoldKey.currentContext?.read<LoginBloc>().resetBloc();
    emit(AuthenticationUnauthenticated());
  }

  Future<FutureOr<void>> getUserDataFromServer() async {
    final result = await authenticationRepo.getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (r) async {
      currentUser = r;
      LoadingHelper.stopLoading();
    });
  }

  FutureOr<void> forgetPasswordFlow() {
    emit(AuthenticationForgetPassword());
  }

  FutureOr<void> updateSubscription() {
    getUserDataFromServer();
  }

  @override
  void onError(Object error, StackTrace stackTrace) {}
}
