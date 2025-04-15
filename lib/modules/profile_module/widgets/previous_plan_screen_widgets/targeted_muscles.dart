import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:urfit/core/shared/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';

import '../../../../generated/locale_keys.g.dart';

class TargetedMuscles extends StatelessWidget {
  final PlanHistoryModel planHistoryModel;
  const TargetedMuscles({super.key, required this.planHistoryModel});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ProgressItem(
          title: LocaleKeys.calories.tr(),
          percent: (planHistoryModel.exercisePlans.calories /planHistoryModel.expectedResultOfExercisePlans!.calories),
        ),
        _ProgressItem(
          title: LocaleKeys.sets.tr(),
          percent: (planHistoryModel.exercisePlans.sets /planHistoryModel.expectedResultOfExercisePlans!.sets),
        ),
        _ProgressItem(
          title: LocaleKeys.time.tr(),
          percent:(planHistoryModel.exercisePlans.times /planHistoryModel.expectedResultOfExercisePlans!.times),
        ),
      ],
    );
  }
}

class _ProgressItem extends StatelessWidget {
  const _ProgressItem({
    required this.title,
    required this.percent,
  });

  final String title;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        children: [
          // title
          Text(
            title,
            style: CustomTextStyle.bold_12,
          ),

          const SizedBox(height: 8),

          // progress
          CustomCircularPercentIndicator(
            percent: percent,
          ),
        ],
      ),
    );
  }
}
