import 'dart:async';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';

class LoadingPlanScreen extends StatefulWidget {
  const LoadingPlanScreen({super.key});

  @override
  State<LoadingPlanScreen> createState() => _LoadingPlanScreenState();
}

class _LoadingPlanScreenState extends State<LoadingPlanScreen> {
  double _progress = 0;

  @override
  void initState() {
    _loadingProgressSimulation();
    super.initState();
  }

  void _loadingProgressSimulation() {
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        _progress += 0.1;
      });

      if (_progress >= 1) {
        timer.cancel();
      }
    });

    Future.delayed(const Duration(seconds: 6), () {
      if (mounted) {
        GoRouter.of(context).pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    context.read<SetupPersonalInfoCubit>().updatePersonalData();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 28),
                Text(
                  'تحديث الخطة',
                  style: CustomTextStyle.bold_16,
                ),
                const SizedBox(height: 16),
                Text(
                  'رجاء الانتظار لاتمام تحديث خطتك الخاصة',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.semiBold_16.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Spacer(flex: 1),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: SizedBox(
                    width: 250,
                    child: CircularPercentIndicator(
                      percent: _progress.clamp(0, 1),
                      radius: 115,
                      lineWidth: 12,
                      backgroundColor: const Color(0xff48585A),
                      progressColor: Theme.of(context).colorScheme.primary,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: AnimatedFlipCounter(
                        value: (_progress * 100).clamp(0, 100),
                        suffix: '%',
                        textStyle: CustomTextStyle.bold_40,
                        duration: const Duration(milliseconds: 500),
                      ),
                      animateFromLastPercent: true,
                      animation: true,
                      animationDuration: 500,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Text(
                  'نقوم بتحديث خطتك الغذائية والرياضية بناءا على المعلومات التى قمت بتعديلها سابقا .',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.semiBold_16,
                ),
                const Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
