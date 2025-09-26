import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/data/models/workout_progress_model.dart';

/// Widget لعرض حالة التمرين مع الألوان المناسبة
class WorkoutStatusWidget extends StatelessWidget {
  final int? exerciseId; // إذا كان null، يعرض حالة التمرين العام
  final String? customText;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final VoidCallback? onTap;

  const WorkoutStatusWidget({
    super.key,
    this.exerciseId,
    this.customText,
    this.textStyle,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        final cubit = context.read<WorkoutCubit>();

        String statusText;
        Color backgroundColor;
        Color textColor;

        if (exerciseId != null) {
          // حالة تمرين واحد
          statusText = customText ?? cubit.getExerciseStatusText(exerciseId!);
          final exerciseStatus = cubit.getTodayExerciseStatus(exerciseId!);

          switch (exerciseStatus) {
            case ExerciseStatus.notStarted:
              backgroundColor = Colors.grey.shade200;
              textColor = Colors.grey.shade700;
              break;
            case ExerciseStatus.inProgress:
              backgroundColor = Colors.orange.shade100;
              textColor = Colors.orange.shade800;
              break;
            case ExerciseStatus.completed:
              backgroundColor = Colors.green.shade100;
              textColor = Colors.green.shade800;
              break;
            case ExerciseStatus.skipped:
              backgroundColor = Colors.red.shade100;
              textColor = Colors.red.shade800;
              break;
            case null:
              backgroundColor = Colors.grey.shade200;
              textColor = Colors.grey.shade700;
              break;
          }
        } else {
          // حالة التمرين العام
          statusText = customText ?? cubit.getWorkoutStatusText();
          final workoutStatus = cubit.getTodayWorkoutStatus();

          switch (workoutStatus) {
            case WorkoutStatus.notStarted:
              backgroundColor = Colors.grey.shade200;
              textColor = Colors.grey.shade700;
              break;
            case WorkoutStatus.inProgress:
              backgroundColor = Colors.orange.shade100;
              textColor = Colors.orange.shade800;
              break;
            case WorkoutStatus.completed:
              backgroundColor = Colors.green.shade100;
              textColor = Colors.green.shade800;
              break;
            case null:
              backgroundColor = Colors.grey.shade200;
              textColor = Colors.grey.shade700;
              break;
          }
        }

        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: textColor.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
            child: Text(
              statusText,
              style: textStyle ??
                  TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
            ),
          ),
        );
      },
    );
  }
}

/// Widget لعرض إحصائيات التمرين اليوم
class TodayWorkoutStatsWidget extends StatelessWidget {
  const TodayWorkoutStatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        final cubit = context.read<WorkoutCubit>();
        final stats = cubit.getTodayWorkoutStats();

        if (stats.isEmpty) {
          return const SizedBox.shrink();
        }

        return Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  L10n.tr().todayWorkoutStats,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem(
                      context,
                      L10n.tr().exercises,
                      "${stats['completedExercises']}/${stats['totalExercises']}",
                      Icons.fitness_center,
                      Colors.blue,
                    ),
                    _buildStatItem(
                      context,
                      L10n.tr().sets,
                      "${stats['completedSets']}/${stats['totalSets']}",
                      Icons.repeat,
                      Colors.orange,
                    ),
                    _buildStatItem(
                      context,
                      L10n.tr().calories,
                      "${stats['burnedCalories']}",
                      Icons.local_fire_department,
                      Colors.red,
                    ),
                    _buildStatItem(
                      context,
                      L10n.tr().time,
                      "${stats['completedTimeMinutes']} ${L10n.tr().minute}",
                      Icons.timer,
                      Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 24,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey.shade600,
              ),
        ),
      ],
    );
  }
}
