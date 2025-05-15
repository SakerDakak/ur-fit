import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/shared/widgets/calories_indicator.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';

class PlanSummary extends StatelessWidget {
  final SettingState state;
  const PlanSummary({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Column(
        children: [
          // calories
          CaloriesIndicator(
            calories: state.planHistoryModel!.mealPlans.calories.toDouble(),
            title: LocaleKeys.calories.tr(),
          ),

          SizedBox(height: 20),

          // more details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // current weight
              _DetailsItem(
                LocaleKeys.weight.tr(),
                AppAssets.iconsWeightIcon,
                state.planHistoryModel!.user_target_weight.toString(),
                LocaleKeys.kg.tr(),
              ),

              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: AppColors.strockColor,
                ),
              ),

              // target weight
              _DetailsItem(
                LocaleKeys.calories.tr(),
                AppAssets.iconsMeals,
                state.planHistoryModel!.expectedResultOfMealPlans!.calories.toStringAsFixed(1),
                LocaleKeys.calorie.tr(),
              ),

              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: AppColors.strockColor,
                ),
              ),

              // workout duration
              _DetailsItem(
                LocaleKeys.time.tr(),
                AppAssets.iconsDumbbell,
                context.read<SettingCubit>().formattedTime(seconds: state.planHistoryModel!.expectedResultOfExercisePlans!.times.toInt()),
                LocaleKeys.min.tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DetailsItem extends StatelessWidget {
  const _DetailsItem(this.title,
      this.svgIconPath,
      this.value,
      this.valueType,);

  final String title;
  final String svgIconPath;
  final String value;
  final String valueType;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgIconPath,
          height: 16,
          width: 16,
          colorFilter:  ColorFilter.mode(
            Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomTextStyle.regular_14.copyWith(
                color: AppColors.fontColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  value,
                  style: CustomTextStyle.regular_14.copyWith(
                    color: AppColors.fontColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  valueType,
                  style: CustomTextStyle.regular_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
