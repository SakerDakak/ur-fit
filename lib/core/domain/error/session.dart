import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';

class Session {
  static final _inst = Session._();
  Session._();
  factory Session() => _inst;
  UserModel? _currentUser;
  UserModel? get currentUser => _currentUser;
  int? countryId;
  int? cityId;

  set setCurrentUser(UserModel? user) {
    _currentUser = user;
  }

  Future getUser() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    result.fold((l) => print("getUserDataFromServer error: $l"), (loadedUser) => setCurrentUser = loadedUser);
  }

  Future<FutureOr<void>> getUserDataFromServer() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (loadedUser) async {
      setCurrentUser = loadedUser;
      LoadingHelper.stopLoading();
    });
  }

  Future logout() async {
    LoadingHelper.startLoading();
    await di<AuthRepo>().signOut();
    await GoogleSignIn(scopes: ["email", "profile"]).signOut();
    setCurrentUser = null;
    TokenService.deleteToken();
    LoadingHelper.stopLoading();
    AppConst.navigatorKey.currentContext?.go(AuthScreen.route);
  }
}
