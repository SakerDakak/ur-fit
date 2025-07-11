import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/routes/routes.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/personal_info/screens/start_personal_info_screen.dart';

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
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (loadedUser) async {
      final context = AppConst.navigatorKey.currentContext;
      if (context == null) return;
      print("currentUser: ${currentUser?.toJson()}");
      if (loadedUser.isChecked != true) {
        TokenService.deleteToken();
        context.pushReplacement(AuthScreen.route);
      } else if (loadedUser.hasCompleteProfile) {
        currentUser = loadedUser;
        context.go(MainPage.routeWithBool(false));
      } else {
        currentUser = loadedUser;
        context.pushReplacement(StartPersonalInfoScreen.route);
      }
      LoadingHelper.stopLoading();
    });
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
