import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/onboarding/views/on_boarding_2.dart';
import 'package:urfit/modules/personal_info/screens/start_personal_info_screen.dart';

import '../../core/presentation/assets/assets_manager.dart';
import '../../core/presentation/style/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const route = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Future _getUserAnNavigate() async {
    final authRepo = di<AuthRepo>();
    final result = await authRepo.getUserDataFromServer();
    result.fold((lt) {
      TokenService.deleteToken();
      context.pushReplacement(AuthScreen.route);
    }, (user) {
      if (user.isChecked != true) {
        TokenService.deleteToken();
        context.pushReplacement(AuthScreen.route);
      } else {
        Session().currentUser = user;
        if (user.gender != null) _setAppTheme(user.gender!);
        if (user.hasValidSubscription == true ||  user.hasCompleteProfile) {
          context.go(MainPage.routeWithBool(false));
        } else {
          context.pushReplacement(StartPersonalInfoScreen.route);
        }
      }
    });
  }

  _setAppTheme(GenderEnum gender) async {
    switch (gender) {
      case GenderEnum.male:
        context.read<AppCubit>().setMaleTheme();
        break;
      case GenderEnum.female:
        context.read<AppCubit>().setFemaleTheme();
        break;
    }
  }

  _getSplash() async {
    if (TokenService.getToken() == null) {
      context.pushReplacement(OnBoardingSecScreen.route);
    } else {
      await _getUserAnNavigate();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _controller.forward().then((r) async {
      await _getSplash();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Co.backGround,
      body: Center(child: Image.asset(AssetsManager.logo)),
    );
  }
}
