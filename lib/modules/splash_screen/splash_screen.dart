import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_helper.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';
import 'package:urfit/modules/onboarding/views/on_boarding_2.dart';

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
      context.go(AuthScreen.route);
    }, (user) {
      AuthHelper.setUserAndNavigate(context, user, true);
    });
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
