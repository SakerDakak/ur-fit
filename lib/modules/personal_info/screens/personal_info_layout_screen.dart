import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/equipment_selection_screen.dart';
import 'package:urfit/modules/personal_info/screens/step_one/step_one_age.dart';
import 'package:urfit/modules/personal_info/screens/step_one/step_one_gender.dart';
import 'package:urfit/modules/personal_info/screens/step_one/step_one_height.dart';
import 'package:urfit/modules/personal_info/screens/step_one/step_one_weight.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_body_parts.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_diet_type.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_meals_variety.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_not_preferred_meals.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_preferred_meals.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_target_weight.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_week_days.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_weekly_exercise_times.dart';
import 'package:urfit/modules/personal_info/screens/step_three/step_three_work_types.dart';
import 'package:urfit/modules/personal_info/screens/step_two/step_two_goals.dart';

class PresonalInfoLayoutScreen extends StatefulWidget {
  const PresonalInfoLayoutScreen({super.key});
  static const route = '/PresonalInfoLayoutScreen';

  @override
  State<PresonalInfoLayoutScreen> createState() => _PresonalInfoLayoutScreenState();
}

class _PresonalInfoLayoutScreenState extends State<PresonalInfoLayoutScreen> {
  final currentPAge = ValueNotifier(0);
  late final SetupPersonalInfoCubit cubit;
  _listenToPageChanges() {
    // Use floor() instead of round() to avoid issues during page transitions
    final page = cubit.pageController.page;
    if (page != null) {
      final newPage = page.floor();
      print('Page listener - raw page: $page, floored: $newPage, current: ${currentPAge.value}');
      if (newPage != currentPAge.value) {
        currentPAge.value = newPage;
        print('Updated currentPage to: $newPage');
      }
    }
  }

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    cubit.pageController.addListener(_listenToPageChanges);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Durations.short2, () => cubit.setInitPage());
    });
    super.initState();
  }

  _calculateStep(int index) {
    if (index < 4) {
      return 1;
    } else if (index < 5) {
      return 2;
    } else if (index < 14) {
      return 3;
    }
    return 0;
  }

  final _personalInfoPages = [
    const StepOneGender(),
    const StepOneAge(),
    const StepOneHeight(),
    const StepOneWeight(),

    ///
    const StepTwoGoals(),

    ///
    const StepThreeBodyParts(),
    const StepThreeMealsVariety(),
    const StepThreePreferredMeals(),
    const StepThreeNotPreferredMeals(),
    const StepThreeDietType(),
    const StepThreeTargetWeight(),
    const StepThreeWeeklyExerciseTimes(),
    const StepThreeWeekDays(),
    const StepThreeWorkTypes(),

    ///
    const EquipmentSelectionScreen(),
  ];

  @override
  void dispose() {
    cubit.pageController.removeListener(_listenToPageChanges);
    cubit.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: ValueListenableBuilder(
            valueListenable: currentPAge,
            builder: (context, value, child) =>
                AnimatedScale(scale: value > 0 ? 1 : 0, duration: Durations.short4, child: child!),
            child: IconButton(
              onPressed: () => cubit.previousPage(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          title: Text(
            L10n.tr().personalInfo,
            textAlign: TextAlign.center,
            style: TStyle.bold_16,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
            child: Column(
              children: [
                ValueListenableBuilder(
                    valueListenable: currentPAge,
                    builder: (context, value, child) {
                      if (value > 13) return const SizedBox.shrink();
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _getCurrentStepTxt(_calculateStep(value)),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TStyle.semiBold_14,
                                ),
                              ),
                            ],
                          ),

                          // progress bar
                          LinearPercentIndicator(
                            percent: _calculateStep(value) / 3,
                            isRTL: Directionality.of(context) == TextDirection.rtl,
                            barRadius: const Radius.circular(8),
                            lineHeight: 2,
                            backgroundColor: Co.whiteColor,
                            progressColor: Theme.of(context).colorScheme.primary,
                            padding: EdgeInsets.zero,
                            animation: true,
                            animateFromLastPercent: true,
                            animationDuration: 1000,
                          ),
                        ],
                      );
                    }),

                const SizedBox(height: 20),

                // personal info pages
                Expanded(
                  child: PageView(
                      controller: cubit.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: _personalInfoPages),
                ),
              ],
            ),
          ),
        ));
  }

  String _getCurrentStepTxt(int step) {
    switch (step) {
      case 1:
        return L10n.tr().firstStep;
      case 2:
        return L10n.tr().secondStep;
      case 3:
        return L10n.tr().thirdStep;

      default:
        return '';
      // return '';
    }
  }
}
