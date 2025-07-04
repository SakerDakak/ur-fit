import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/modules/auth/onboarding/on_boarding_2.dart';
import 'package:urfit/modules/auth/personal_info/screens/setup_personal_info_screen.dart';

import '../../../core/presentation/assets/assets_manager.dart';
import '../../../core/presentation/style/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const route = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  _getSplash() async {
    if (TokenService.getToken() == null) {
      context.pushReplacement(OnBoardingSecScreen.route);
      return;
    } else {
      context.pushReplacement(SetupPersonalInfoScreen.route);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
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
      backgroundColor: AppColors.backGround,
      body: Center(child: Image.asset(AssetsManager.logo)),
    );
  }
}
