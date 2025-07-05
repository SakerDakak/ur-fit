import 'dart:async';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import '../../personal_info/controller/cubit/setup_personal_info_cubit.dart';

class LoadingPlanScreen extends StatefulWidget {
  const LoadingPlanScreen({super.key});
  static const route = '/loadingPlanScreen';

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
          padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 28),
                Text(
                  L10n.tr().planUpdate,
                  style: TStyle.bold_16,
                ),
                const SizedBox(height: 16),
                Text(
                  L10n.tr().planUpdatePhrase1,
                  textAlign: TextAlign.center,
                  style: TStyle.semiBold_16.copyWith(
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
                        textStyle: TStyle.bold_40,
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
                  L10n.tr().planUpdatePhrase2,
                  textAlign: TextAlign.center,
                  style: TStyle.semiBold_16,
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
