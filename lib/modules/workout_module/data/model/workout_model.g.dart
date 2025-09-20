// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutPlan _$WorkoutPlanFromJson(Map<String, dynamic> json) => _WorkoutPlan(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      name: json['name'] as String?,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      planDays: (json['plan_days'] as List<dynamic>)
          .map((e) => WorkoutDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$WorkoutPlanToJson(_WorkoutPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'plan_days': instance.planDays,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_WorkoutDay _$WorkoutDayFromJson(Map<String, dynamic> json) => _WorkoutDay(
      id: (json['id'] as num).toInt(),
      day: json['day'] as String,
      sets: (json['sets'] as num).toInt(),
      timePerExercise: (json['time_per_exercise'] as num).toInt(),
      caloriesBurned: (json['calories_burned'] as num).toInt(),
      bodyPart: json['body_part'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$WorkoutDayToJson(_WorkoutDay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'sets': instance.sets,
      'time_per_exercise': instance.timePerExercise,
      'calories_burned': instance.caloriesBurned,
      'body_part': instance.bodyPart,
      'exercises': instance.exercises,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_Exercise _$ExerciseFromJson(Map<String, dynamic> json) => _Exercise(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      bodyPart: json['body_part'] as String,
      equipment: json['equipment'] as String,
      target: json['target'] as String,
      gifUrl: json['gif_url'] as String,
      secondaryMuscles: (json['secondary_muscles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ExerciseToJson(_Exercise instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'body_part': instance.bodyPart,
      'equipment': instance.equipment,
      'target': instance.target,
      'gif_url': instance.gifUrl,
      'secondary_muscles': instance.secondaryMuscles,
      'instructions': instance.instructions,
    };
