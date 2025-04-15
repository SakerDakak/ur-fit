// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutPlanImpl _$$WorkoutPlanImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutPlanImpl(
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

Map<String, dynamic> _$$WorkoutPlanImplToJson(_$WorkoutPlanImpl instance) =>
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

_$WorkoutDayImpl _$$WorkoutDayImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutDayImpl(
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

Map<String, dynamic> _$$WorkoutDayImplToJson(_$WorkoutDayImpl instance) =>
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

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
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

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'body_part': instance.bodyPart,
      'equipment': instance.equipment,
      'target': instance.target,
      'gif_url': instance.gifUrl,
      'secondary_muscles': instance.secondaryMuscles,
      'instructions': instance.instructions,
    };
