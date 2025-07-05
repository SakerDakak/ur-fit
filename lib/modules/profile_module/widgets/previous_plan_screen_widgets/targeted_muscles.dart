
import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';



class TargetedMuscles extends StatelessWidget {
  final PlanHistoryModel planHistoryModel;
  const TargetedMuscles({super.key, required this.planHistoryModel});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ProgressItem(
          title: L10n.tr().calories,
          percent: (planHistoryModel.exercisePlans.calories /planHistoryModel.expectedResultOfExercisePlans!.calories),
        ),
        _ProgressItem(
          title: L10n.tr().sets,
          percent: (planHistoryModel.exercisePlans.sets /planHistoryModel.expectedResultOfExercisePlans!.sets),
        ),
        _ProgressItem(
          title: L10n.tr().time,
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
            style: TStyle.bold_12,
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
