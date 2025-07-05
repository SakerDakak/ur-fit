import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import '../../../../../core/presentation/routes/routes.dart';
import '../../../../../core/presentation/utils/loading_helper.dart';
import '../../../data/models/user/user_model.dart';
import '../../../data/repo/authentication_repo.dart';
import '../login_bloc.dart';

part 'authentication_state.dart';

class AuthenticationBloc extends Cubit<AuthenticationState> {
  final AuthenticationRepo authenticationRepo;
  UserModel? get currentUser => Session().currentUser;

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

  FutureOr<void> updatePasswordEvent() {
    emit(AuthenticationUpdatePassword());
  }

  FutureOr<void> goBack() {
    AppConst.rootScaffoldKey.currentContext?.read<LoginBloc>().resetBloc();
    emit(AuthenticationUnauthenticated());
  }
}
