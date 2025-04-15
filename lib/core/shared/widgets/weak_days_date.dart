import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';

import '../../../modules/workout_module/controller/workout_cubit.dart';

class WeakDaysDate extends StatelessWidget {
  const WeakDaysDate({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutCubit = context.read<WorkoutCubit>();
    final mealCubit = context.read<MealsCubit>();
    // if(workoutCubit.getCurrentWorkOutPlan() == null){
    //   workoutCubit.generateWorkOutPlan();
    // }
    // if(mealCubit.getCurrentMealPlan() == null){
    //   mealCubit.generateMealPlan();
    // }
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          for (int i = 0; i < 7; i++)
            BlocBuilder<WorkoutCubit, WorkoutState>(
              builder: (context, state) {
                return Container(
                  margin: EdgeInsetsDirectional.only(end: i != 6 ? 8 : 0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                  decoration: BoxDecoration(
                    color: isToday(i) || state.selectedDay == i +1
                        ? Theme.of(context).colorScheme.primary
                        : AppColors.cardColor,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    border: Border.all(color: AppColors.strockColor),
                  ),
                  child: Column(
                    children: [
                      Text(
                        DateFormat.Md().format(getCurrentWeekDays()[i]),
                        style: CustomTextStyle.regular_14.copyWith(
                          fontWeight: isToday(i) || state.selectedDay == i +1? FontWeight.w700 : null,
                          color: isToday(i)|| state.selectedDay == i +1
                              ? AppColors.selectedFont
                              : AppColors.fontColor,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        DateFormat.E().format(getCurrentWeekDays()[i]),
                        style: CustomTextStyle.regular_14.copyWith(
                          fontWeight: isToday(i) || state.selectedDay == i +1 ? FontWeight.w700 : null,
                          color: isToday(i)|| state.selectedDay == i +1
                              ? AppColors.selectedFont
                              : AppColors.fontColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    );
  }

  static bool isToday(int index) {
    return getCurrentWeekDays()[index].day == DateTime.now().day;
  }

  static List<DateTime> getCurrentWeekDays() {
    final now = DateTime.now();

    int daysToFriday = (now.weekday - 6) % 7;

    DateTime saturday = now.subtract(
      Duration(days: daysToFriday),
    );

    return List.generate(7, (index) => saturday.add(Duration(days: index)));
  }
}
