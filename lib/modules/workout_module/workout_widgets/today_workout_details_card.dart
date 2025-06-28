import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/shared/widgets/calories_indicator.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc/authentication_bloc.dart';

import '../controller/workout_cubit.dart';
import '../data/model/workout_model.dart';

class TodayWorkoutDetailsCard extends StatelessWidget {
  const TodayWorkoutDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {

    final cubit = context.read<WorkoutCubit>();
    final WorkoutDay? day = cubit.getPlanForToday();
    final user = context.read<AuthenticationBloc>().currentUser;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Row(
          children: [
            SvgPicture.asset(Assets.iconsDumbbell, width: 16,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),),
            const SizedBox(width: 8),
            Text(
              LocaleKeys.todayExerciseDetails.tr(),
              style: CustomTextStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.fontColor,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // details card
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
            border: Border.all(color: AppColors.strockColor),
          ),
          child:  Column(
            children: [
              // calories
              CaloriesIndicator(
                calories: day!.caloriesBurned.toDouble() * day.exercises.length,
                title: LocaleKeys.calories.tr(),
              ),

              SizedBox(height: 16),

              // more details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // current weight
                  DetailsItem(
                    LocaleKeys.currentWeight.tr(),
                    Assets.iconsWeightIcon,
                    user?.currentWeight.toString() ?? "0",
                    LocaleKeys.kg.tr(),
                  ),

                  SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      color: AppColors.strockColor,
                    ),
                  ),

                  // target weight
                  DetailsItem(
                    LocaleKeys.goal.tr(),
                    Assets.iconsFlag,
                    user?.targetWeight.toString() ?? "0",
                    LocaleKeys.kg.tr(),
                  ),

                  SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      color: AppColors.strockColor,
                    ),
                  ),

                  // workout duration
                  DetailsItem(
                    LocaleKeys.time.tr(),
                    Assets.iconsDumbbell,
                    (day.timePerExercise * day.exercises.length).toStringAsFixed(0),
                    LocaleKeys.min.tr(),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DetailsItem extends StatelessWidget {
  const DetailsItem(
    this.title,
    this.svgIconPath,
    this.value,
    this.valueType,
  );

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
