import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/shared/appCubit/app_cubit.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/core/shared/widgets/calories_indicator.dart';
import 'package:urfit/core/shared/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';

class WhatUrBodyNeedSection extends StatelessWidget {
  const WhatUrBodyNeedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MealsCubit>();
    final day = cubit.getPlanForToday();
    cubit.getNutrientsData();

    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Row(
          children: [
            SvgPicture.asset(Assets.iconsSpoonFork, width: 16,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),),
            const SizedBox(width: 8),
            Text(
              LocaleKeys.whatYourBodyNeeds.tr(),
              style: CustomTextStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.fontColor,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // card
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            border: Border.all(color: AppColors.strockColor),
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: Column(
            children: [
              // calories
              CaloriesIndicator(
                calories: day!.nutrients.calories,
                title: LocaleKeys.calories.tr(),
              ),

              SizedBox(height: 16),

              BlocBuilder<MealsCubit, MealsState>(
                builder: (context, state) {
                  print((state.gainedCalories / day.nutrients.calories) * 100);
                  print(state.gainedCalories);
                  print(state.gainedProtein);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProgressItem(
                        title: LocaleKeys.calories.tr(),
                        percent: (state.gainedCalories / day.nutrients.calories),
                      ),
                      ProgressItem(
                        title: LocaleKeys.proteins.tr(),
                        percent: (state.gainedProtein / day.nutrients.protein),
                      ),
                      ProgressItem(
                        title: LocaleKeys.carbs.tr(),
                        percent: (state.gainedCarb / day.nutrients.carbohydrates),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  },
);
  }
}

class ProgressItem extends StatelessWidget {
  const ProgressItem({required this.title, required this.percent});

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

          const SizedBox(height: 8),

          //
          Text(
            LocaleKeys.unit.tr(),
            style: CustomTextStyle.semiBold_14,
          ),
        ],
      ),
    );
  }
}
