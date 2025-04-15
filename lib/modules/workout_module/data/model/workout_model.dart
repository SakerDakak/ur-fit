import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
class WorkoutPlan with _$WorkoutPlan {
  factory WorkoutPlan({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    required String? name,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'plan_days') required List<WorkoutDay> planDays,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _WorkoutPlan;

  factory WorkoutPlan.fromJson(Map<String, dynamic> json) => _$WorkoutPlanFromJson(json);
}

@freezed
class WorkoutDay with _$WorkoutDay {
  factory WorkoutDay({

    required int id,
    required String day,
    required int sets,
    @JsonKey(name: 'time_per_exercise') required int timePerExercise,
    @JsonKey(name: 'calories_burned') required int caloriesBurned,

  @JsonKey(name: 'body_part') required String bodyPart,
    required List<Exercise> exercises,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _WorkoutDay;

  factory WorkoutDay.fromJson(Map<String, dynamic> json) => _$WorkoutDayFromJson(json);
}

@freezed
class Exercise with _$Exercise {
  factory Exercise({
    required int id,
    required String name,
    @JsonKey(name: 'body_part') required String bodyPart,
    required String equipment,
    required String target,
    @JsonKey(name: 'gif_url') required String gifUrl,
    @JsonKey(name: 'secondary_muscles') required List<String> secondaryMuscles,
    required List<String> instructions,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
