import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';
import 'package:urfit/modules/auth/persentation/views/register_otp_screen.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/personal_info/screens/start_personal_info_screen.dart';

class AuthHelper {
  /// 1) is checked ?
  ///. - if login => otp
  ///  - if splash => login screen
  /// 2)  set theme acc to gender
  /// 3) has subscription or complete profile => main page
  /// 4) else personal info screen
  void setUserAndNavigate(BuildContext context, UserModel user, [bool isSplash = false]) {
    if (user.isChecked != true) {
      if (isSplash) {
        TokenService.deleteToken();
        context.go(AuthScreen.route);
      } else {
        context.push(RegisterOTPScreen.route(user.email));
      }
    } else {
      switch (user.gender ?? GenderEnum.male) {
        case GenderEnum.male:
          context.read<AppCubit>().setMaleTheme();
          break;
        case GenderEnum.female:
          context.read<AppCubit>().setFemaleTheme();
          break;
      }
      Session().setCurrentUser = user;
      if (user.hasValidSubscription == true || user.hasCompleteProfile) {
        context.go(MainPage.routeWithBool(false));
      } else {
        context.go(StartPersonalInfoScreen.route);
      }
    }
  }
}
