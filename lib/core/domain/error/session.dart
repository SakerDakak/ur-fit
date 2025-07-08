import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/routes/routes.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_screen.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/personal_info/screens/setup_personal_info_screen.dart';
import 'package:urfit/service_locator.dart';

class Session {
  static final _inst = Session._();
  Session._();
  factory Session() => _inst;
  UserModel? currentUser;
  int? countryId;
  int? cityId;

  String? tempToken;

  Future getUser() async {
    final result = await sl<AuthenticationRepo>().getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (loadedUser) async {
      final context = AppConst.navigatorKey.currentContext;
      if (context == null) return;
      currentUser = loadedUser;
      print("currentUser: ${currentUser?.toJson()}");

      /// case 1: user not verified
      if (currentUser?.isChecked == null || currentUser?.isChecked != '1') {
        // AppConst.rootScaffoldKey.currentContext?.read<LoginBloc>().sendCode(currentUser!.email.toString(), "success");
        // navigate to forget password screen
        AppConst.rootScaffoldKey.currentContext?.pushReplacement(ForgetPasswordScreen.route);
      } else if (currentUser?.isChecked == '1' && currentUser?.hasValidSubscription == false) {
        /// case 2: user verified but has no valid subscription
        AppConst.rootScaffoldKey.currentContext?.pushReplacement(SetupPersonalInfoScreen.route);
      } else if (currentUser?.isChecked == '1' &&
          currentUser?.age != null &&
          currentUser?.targetWeight != null &&
          currentUser?.hasValidSubscription == true) {
        /// case 3: user verified, has valid subscription, and has personal info
        AppConst.navigatorKey.currentContext?.pushReplacementNamed(AppRouter.authenticationScreen);
        AppConst.navigatorKey.currentContext?.push(MainPage.routeWithBool(false));
      } else {
        AppConst.navigatorKey.currentContext?.pushReplacementNamed(AppRouter.authenticationScreen);
        AppConst.navigatorKey.currentContext?.push(MainPage.routeWithBool(false));
      }

      LoadingHelper.stopLoading();
    });
  }

  Future<FutureOr<void>> getUserDataFromServer() async {
    final result = await sl<AuthenticationRepo>().getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (loadedUser) async {
      currentUser = loadedUser;
      LoadingHelper.stopLoading();
    });
  }

  Future logout() async {
    LoadingHelper.startLoading();
    await sl<AuthenticationRepo>().signOut();
    currentUser = null;
    TokenService.deleteToken();
    LoadingHelper.stopLoading();
    AppConst.navigatorKey.currentContext?.pushReplacementNamed(AppRouter.authenticationScreen);
  }
}
