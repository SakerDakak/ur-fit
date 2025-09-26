import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_circular_percent_indicator.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

class CaloriesTrackingCard extends StatelessWidget {
  const CaloriesTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appState) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Co.cardColor,
            borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
            border: Border.all(color: Co.strockColor),
          ),
          child: Column(
            children: [
              Text(
                L10n.tr().calories,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Co.whiteColor,
                ),
              ),
              const SizedBox(height: 8),

              // progress
              Expanded(
                child: FittedBox(
                  child: BlocBuilder<WorkoutCubit, WorkoutState>(
                    builder: (context, workoutState) {
                      final workoutCubit = context.read<WorkoutCubit>();
                      final workoutStats = workoutCubit.getTodayWorkoutStats();
                      final workoutCalories =
                          workoutStats['burnedCalories'] ?? 0;

                      return BlocSelector<HealthCubit, HealthState, num>(
                        selector: (state) => state.totalCalories,
                        builder: (context, calories) {
                          // دمج سعرات التمارين مع السعرات العامة
                          final totalCalories = calories + workoutCalories;
                          final double percent =
                              (totalCalories.toDouble() / 2200).clamp(0.0, 1.0);
                          return CustomCircularPercentIndicator(
                              percent: percent);
                        },
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 8),

              BlocBuilder<WorkoutCubit, WorkoutState>(
                builder: (context, workoutState) {
                  final workoutCubit = context.read<WorkoutCubit>();
                  final workoutStats = workoutCubit.getTodayWorkoutStats();
                  final workoutCalories = workoutStats['burnedCalories'] ?? 0;

                  return BlocSelector<HealthCubit, HealthState, num>(
                    selector: (state) => state.totalCalories,
                    builder: (context, calories) {
                      final totalCalories = calories + workoutCalories;
                      return Text(
                        '${totalCalories.toStringAsFixed(0)} ${L10n.tr().calorie}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TStyle.regular_14.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Co.fontColor,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
