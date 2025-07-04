
import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/modules/profile_module/data/model/plan_history_model.dart';

class AverageAmountEatenPercentage extends StatelessWidget {
  final PlanHistoryModel planHistoryModel;
  const AverageAmountEatenPercentage({super.key, required this.planHistoryModel});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ProgressItem(
          title: L10n.tr().calories,
          bottomTxt: L10n.tr().calorie,
          percent: (planHistoryModel.mealPlans.calories /planHistoryModel.expectedResultOfMealPlans!.calories),
        ),
        _ProgressItem(
          title: L10n.tr().proteins,
          percent: (planHistoryModel.mealPlans.protein /planHistoryModel.expectedResultOfMealPlans!.protein),
          bottomTxt: L10n.tr().unit,
        ),
        _ProgressItem(
          title: L10n.tr().carbs,
          percent:(planHistoryModel.mealPlans.carbs /(planHistoryModel.expectedResultOfMealPlans?.fat ?? 0)),
          bottomTxt: L10n.tr().unit,
        ),
      ],
    );
  }
}

class _ProgressItem extends StatelessWidget {
  const _ProgressItem({
    required this.title,
    required this.percent,
    required this.bottomTxt,
  });

  final String title;
  final double percent;
  final String bottomTxt;

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

          const SizedBox(height: 8),

          //
          Text(
            bottomTxt,
            style: CustomTextStyle.semiBold_14,
          ),
        ],
      ),
    );
  }
}
