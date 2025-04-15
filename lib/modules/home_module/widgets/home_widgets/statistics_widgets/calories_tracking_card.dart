import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/health.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/core/shared/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';

import '../../../../../generated/locale_keys.g.dart';

class CaloriesTrackingCard extends StatelessWidget {
  const CaloriesTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Column(
        children: [
          Text(
            LocaleKeys.calories.tr(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyle.regular_14.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.whiteColor,
            ),
          ),
          const SizedBox(height: 8),

          // progress
          Expanded(
            child: FittedBox(
              child: BlocSelector<HealthCubit, HealthState, num>(
                selector: (state) => state.totalCalories,
                builder: (context, calories) {
                  return CustomCircularPercentIndicator(
                      percent: calories.toDouble());
                },
              ),
            ),
          ),

          const SizedBox(height: 8),

          BlocSelector<HealthCubit, HealthState, num>(
            selector: (state) => state.totalCalories,
            builder: (context, calories) {
              return Text(
                '${calories.toStringAsFixed(0)} ${LocaleKeys.calorie.tr()} ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.fontColor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
