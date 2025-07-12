import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/routes/routes.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';

class Session {
  static final _inst = Session._();
  Session._();
  factory Session() => _inst;
  UserModel? currentUser;
  int? countryId;
  int? cityId;

  String? tempToken;

  Future getUser() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    result.fold((l) => print("getUserDataFromServer error: $l"), (loadedUser) => currentUser = loadedUser);
  }

  Future<FutureOr<void>> getUserDataFromServer() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (loadedUser) async {
      currentUser = loadedUser;
      LoadingHelper.stopLoading();
    });
  }

  Future logout() async {
    LoadingHelper.startLoading();
    await di<AuthRepo>().signOut();
    currentUser = null;
    TokenService.deleteToken();
    LoadingHelper.stopLoading();
    AppConst.navigatorKey.currentContext?.pushReplacementNamed(AppRouter.authenticationScreen);
  }
}
