import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/calories_indicator.dart';
import 'package:urfit/core/presentation/views/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';

class WhatUrBodyNeedSection extends StatelessWidget {
  const WhatUrBodyNeedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MealsCubit>();
    final day = cubit.getPlanForToday();
    cubit.getNutrientsData();

    // فحص إذا كانت هناك خطة تمارين متاحة
    if (day == null) {
      return const SizedBox.shrink(); // إخفاء الـ widget إذا لم تكن هناك خطة
    }

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Row(
              children: [
                SvgPicture.asset(
                  Assets.iconsSpoonFork,
                  width: 16,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                ),
                const SizedBox(width: 8),
                Text(
                  L10n.tr().whatYourBodyNeeds,
                  style: TStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Co.fontColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // card
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Co.cardColor,
                border: Border.all(color: Co.strockColor),
                borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              ),
              child: Column(
                children: [
                  // calories
                  CaloriesIndicator(
                    calories: day.nutrients.calories,
                    title: L10n.tr().calories,
                  ),

                  const SizedBox(height: 16),

                  BlocBuilder<MealsCubit, MealsState>(
                    builder: (context, state) {
                      print((state.gainedCalories / day.nutrients.calories) *
                          100);
                      print(state.gainedCalories);
                      print(state.gainedProtein);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProgressItem(
                            title: L10n.tr().calories,
                            percent:
                                (state.gainedCalories / day.nutrients.calories),
                            currentValue: state.gainedCalories.toDouble(),
                            targetValue: day.nutrients.calories.toDouble(),
                          ),
                          ProgressItem(
                            title: L10n.tr().proteins,
                            percent:
                                (state.gainedProtein / day.nutrients.protein),
                            currentValue: state.gainedProtein.toDouble(),
                            targetValue: day.nutrients.protein.toDouble(),
                          ),
                          ProgressItem(
                            title: L10n.tr().carbs,
                            percent: (state.gainedCarb /
                                day.nutrients.carbohydrates),
                            currentValue: state.gainedCarb.toDouble(),
                            targetValue: day.nutrients.carbohydrates.toDouble(),
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
  const ProgressItem({
    super.key,
    required this.title,
    required this.percent,
    required this.currentValue,
    required this.targetValue,
  });

  final String title;
  final double percent;
  final double currentValue;
  final double targetValue;

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

          const SizedBox(height: 8),

          // عرض القيم الفعلية
          Row(
            children: [
              Text(
                "${currentValue.toStringAsFixed(0)}/",
                style: TStyle.semiBold_14.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                targetValue.toStringAsFixed(0),
                style: TStyle.semiBold_12.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
