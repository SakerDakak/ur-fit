import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
abstract class WorkoutPlan with _$WorkoutPlan {
  factory WorkoutPlan({
    required int id,
    required int userId,
    required String? name,
    required String startDate,
    required String endDate,
    required List<WorkoutDay> planDays,
    required String createdAt,
    required String updatedAt,
  }) = _WorkoutPlan;

  factory WorkoutPlan.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanFromJson(json);
}

@freezed
abstract class WorkoutDay with _$WorkoutDay {
  factory WorkoutDay({
    required int id,
    required String day,
    required int sets,
    required int timePerExercise,
    required int caloriesBurned,
    required String bodyPart,
    required List<Exercise> exercises,
    required String createdAt,
    required String updatedAt,
  }) = _WorkoutDay;

  factory WorkoutDay.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDayFromJson(json);
}

@freezed
abstract class Exercise with _$Exercise {
  factory Exercise({
    required int id,
    required String name,
    required String bodyPart,
    required String equipment,
    required String target,
    required String gifUrl,
    required List<String> secondaryMuscles,
    required List<String> instructions,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}
