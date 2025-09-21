import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import '../../../../modules/workout_module/controller/workout_cubit.dart';

class WeakDaysDate extends StatelessWidget {
  const WeakDaysDate({super.key});

  // دالة للحصول على اسم اليوم المترجم
  String _getLocalizedDayName(DateTime date, BuildContext context) {
    final weekday = date.weekday;
    final isArabic = L10n.isAr(context);

    switch (weekday) {
      case DateTime.sunday:
        return isArabic ? 'الأحد' : 'Sun';
      case DateTime.monday:
        return isArabic ? 'الإثنين' : 'Mon';
      case DateTime.tuesday:
        return isArabic ? 'الثلاثاء' : 'Tue';
      case DateTime.wednesday:
        return isArabic ? 'الأربعاء' : 'Wed';
      case DateTime.thursday:
        return isArabic ? 'الخميس' : 'Thu';
      case DateTime.friday:
        return isArabic ? 'الجمعة' : 'Fri';
      case DateTime.saturday:
        return isArabic ? 'السبت' : 'Sat';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    // تم حذف المتغيرات غير المستخدمة
    // if(workoutCubit.getCurrentWorkOutPlan() == null){
    //   workoutCubit.generateWorkOutPlan();
    // }
    // if(mealCubit.getCurrentMealPlan() == null){
    //   mealCubit.generateMealPlan();
    // }
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
        return FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              for (int i = 0; i < 7; i++)
                BlocBuilder<WorkoutCubit, WorkoutState>(
                  builder: (context, state) {
                    return Container(
                      margin: EdgeInsetsDirectional.only(end: i != 6 ? 8 : 0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 11, vertical: 8),
                      decoration: BoxDecoration(
                        color: isToday(i) || state.selectedDay == i + 1
                            ? Theme.of(context).colorScheme.primary
                            : Co.cardColor,
                        borderRadius:
                            BorderRadius.circular(AppConst.kBorderRadius),
                        border: Border.all(color: Co.strockColor),
                      ),
                      child: Column(
                        children: [
                          Text(
                            DateFormat.Md().format(getCurrentWeekDays()[i]),
                            style: TStyle.regular_14.copyWith(
                              fontWeight:
                                  isToday(i) || state.selectedDay == i + 1
                                      ? FontWeight.w700
                                      : null,
                              color: isToday(i) || state.selectedDay == i + 1
                                  ? Co.selectedFont
                                  : Co.fontColor,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            _getLocalizedDayName(
                                getCurrentWeekDays()[i], context),
                            style: TStyle.regular_14.copyWith(
                              fontWeight:
                                  isToday(i) || state.selectedDay == i + 1
                                      ? FontWeight.w700
                                      : null,
                              color: isToday(i) || state.selectedDay == i + 1
                                  ? Co.selectedFont
                                  : Co.fontColor,
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
      },
    );
  }

  static bool isToday(int index) {
    return getCurrentWeekDays()[index].day == DateTime.now().day;
  }

  static List<DateTime> getCurrentWeekDays() {
    final now = DateTime.now();

    final int daysToFriday = (now.weekday - 6) % 7;

    final DateTime saturday = now.subtract(
      Duration(days: daysToFriday),
    );

    return List.generate(7, (index) => saturday.add(Duration(days: index)));
  }
}
