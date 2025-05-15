import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

class PackageProgressMeals extends StatelessWidget {

  const PackageProgressMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsCubit, MealsState>(

      builder: (context, state) {
        final weekNum = state.allPlans.length;
        final meal = context.read<MealsCubit>().getCurrentMealPlan();
        print("workoutPlan?.endDate ${meal?.endDate}");

        String weekText() {
          switch(weekNum){
            case 1 :
              return LocaleKeys.week1.tr();
            case 2 :
              return  LocaleKeys.week2.tr();
            case 3 :
              return LocaleKeys.week3.tr();
            default :
              return LocaleKeys.week4.tr();
          }
        }
        return Column(
          children: [
            // weak number and end date
            Row(
              children: [
                SvgPicture.asset(
                  AppAssets.iconsCalender,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    weekText(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyle.regular_14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${LocaleKeys.packageEndsIn.tr()} ${meal?.endDate}',
                    textAlign: TextAlign.end,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyle.regular_14.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // progress bar
            LinearPercentIndicator(
              percent: weekNum / 4 > 1 ? 1 : weekNum / 4,
              padding: EdgeInsets.zero,
              progressColor: Theme
                  .of(context)
                  .colorScheme
                  .primary,
              backgroundColor: AppColors.whiteColor,
              barRadius: const Radius.circular(10),
              isRTL: context.locale.languageCode == "ar",
              animation: true,
              animateFromLastPercent: true,
              animationDuration: 1000,
            ),
          ],
        );
      },
    );
  }
}
