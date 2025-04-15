import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:urfit/core/shared/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/home_module/data/models/meal_plan_model.dart';
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
          title: LocaleKeys.calories.tr(),
          bottomTxt: LocaleKeys.calorie.tr(),
          percent: (planHistoryModel.mealPlans.calories /planHistoryModel.expectedResultOfMealPlans!.calories),
        ),
        _ProgressItem(
          title: LocaleKeys.proteins.tr(),
          percent: (planHistoryModel.mealPlans.protein /planHistoryModel.expectedResultOfMealPlans!.protein),
          bottomTxt: LocaleKeys.unit.tr(),
        ),
        _ProgressItem(
          title: LocaleKeys.carbs.tr(),
          percent:(planHistoryModel.mealPlans.carbs /planHistoryModel.expectedResultOfMealPlans!.fat),
          bottomTxt: LocaleKeys.unit.tr(),
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
