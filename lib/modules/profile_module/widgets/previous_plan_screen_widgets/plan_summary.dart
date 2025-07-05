
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/calories_indicator.dart';
import 'package:urfit/modules/auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';
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
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Column(
        children: [
          // calories
          CaloriesIndicator(
            calories: state.planHistoryModel!.mealPlans.calories.toDouble(),
            title: L10n.tr().calories,
          ),

          SizedBox(height: 20),

          // more details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // current weight
              _DetailsItem(
                L10n.tr().weight,
                Assets.iconsWeightIcon,
                state.planHistoryModel!.user_target_weight.toString(),
                L10n.tr().kg,
              ),

              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: AppColors.strockColor,
                ),
              ),

              // target weight
              _DetailsItem(
                L10n.tr().calories,
                Assets.iconsMeals,
                state.planHistoryModel!.expectedResultOfMealPlans!.calories.toStringAsFixed(1),
                L10n.tr().calorie,
              ),

              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: AppColors.strockColor,
                ),
              ),

              // workout duration
              _DetailsItem(
                L10n.tr().time,
                Assets.iconsDumbbell,
                context.read<SettingCubit>().formattedTime(seconds: state.planHistoryModel!.expectedResultOfExercisePlans!.times.toInt()),
                L10n.tr().min,
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
