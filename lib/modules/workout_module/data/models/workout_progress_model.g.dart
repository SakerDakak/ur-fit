// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkoutProgress _$WorkoutProgressFromJson(Map<String, dynamic> json) =>
    _WorkoutProgress(
      workoutDayId: (json['workoutDayId'] as num).toInt(),
      date: json['date'] as String,
      status: $enumDecode(_$WorkoutStatusEnumMap, json['status']),
      totalExercises: (json['totalExercises'] as num).toInt(),
      completedExercises: (json['completedExercises'] as num).toInt(),
      skippedExercises: (json['skippedExercises'] as num).toInt(),
      totalSets: (json['totalSets'] as num).toInt(),
      completedSets: (json['completedSets'] as num).toInt(),
      totalCalories: (json['totalCalories'] as num).toInt(),
      burnedCalories: (json['burnedCalories'] as num).toInt(),
      totalTimeMinutes: (json['totalTimeMinutes'] as num).toInt(),
      completedTimeMinutes: (json['completedTimeMinutes'] as num).toInt(),
      exercisesProgress: (json['exercisesProgress'] as List<dynamic>)
          .map((e) => ExerciseProgress.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$WorkoutProgressToJson(_WorkoutProgress instance) =>
    <String, dynamic>{
      'workoutDayId': instance.workoutDayId,
      'date': instance.date,
      'status': _$WorkoutStatusEnumMap[instance.status]!,
      'totalExercises': instance.totalExercises,
      'completedExercises': instance.completedExercises,
      'skippedExercises': instance.skippedExercises,
      'totalSets': instance.totalSets,
      'completedSets': instance.completedSets,
      'totalCalories': instance.totalCalories,
      'burnedCalories': instance.burnedCalories,
      'totalTimeMinutes': instance.totalTimeMinutes,
      'completedTimeMinutes': instance.completedTimeMinutes,
      'exercisesProgress': instance.exercisesProgress,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

const _$WorkoutStatusEnumMap = {
  WorkoutStatus.notStarted: 'not_started',
  WorkoutStatus.inProgress: 'in_progress',
  WorkoutStatus.completed: 'completed',
};

_ExerciseProgress _$ExerciseProgressFromJson(Map<String, dynamic> json) =>
    _ExerciseProgress(
      exerciseId: (json['exerciseId'] as num).toInt(),
      status: $enumDecode(_$ExerciseStatusEnumMap, json['status']),
      totalSets: (json['totalSets'] as num).toInt(),
      completedSets: (json['completedSets'] as num).toInt(),
      skippedSets: (json['skippedSets'] as num).toInt(),
      caloriesPerSet: (json['caloriesPerSet'] as num).toInt(),
      timePerSetMinutes: (json['timePerSetMinutes'] as num).toInt(),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      setsProgress: (json['setsProgress'] as List<dynamic>)
          .map((e) => SetProgress.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentSet: (json['currentSet'] as num).toInt(),
      totalWorkoutTimeSeconds: (json['totalWorkoutTimeSeconds'] as num).toInt(),
      totalRestTimeSeconds: (json['totalRestTimeSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$ExerciseProgressToJson(_ExerciseProgress instance) =>
    <String, dynamic>{
      'exerciseId': instance.exerciseId,
      'status': _$ExerciseStatusEnumMap[instance.status]!,
      'totalSets': instance.totalSets,
      'completedSets': instance.completedSets,
      'skippedSets': instance.skippedSets,
      'caloriesPerSet': instance.caloriesPerSet,
      'timePerSetMinutes': instance.timePerSetMinutes,
      'startedAt': instance.startedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'setsProgress': instance.setsProgress,
      'currentSet': instance.currentSet,
      'totalWorkoutTimeSeconds': instance.totalWorkoutTimeSeconds,
      'totalRestTimeSeconds': instance.totalRestTimeSeconds,
    };

const _$ExerciseStatusEnumMap = {
  ExerciseStatus.notStarted: 'not_started',
  ExerciseStatus.inProgress: 'in_progress',
  ExerciseStatus.completed: 'completed',
  ExerciseStatus.skipped: 'skipped',
};

_SetProgress _$SetProgressFromJson(Map<String, dynamic> json) => _SetProgress(
      setNumber: (json['setNumber'] as num).toInt(),
      status: $enumDecode(_$SetStatusEnumMap, json['status']),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      workoutTimeSeconds: (json['workoutTimeSeconds'] as num).toInt(),
      restTimeSeconds: (json['restTimeSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$SetProgressToJson(_SetProgress instance) =>
    <String, dynamic>{
      'setNumber': instance.setNumber,
      'status': _$SetStatusEnumMap[instance.status]!,
      'startedAt': instance.startedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'workoutTimeSeconds': instance.workoutTimeSeconds,
      'restTimeSeconds': instance.restTimeSeconds,
    };

const _$SetStatusEnumMap = {
  SetStatus.notStarted: 'not_started',
  SetStatus.inProgress: 'in_progress',
  SetStatus.completed: 'completed',
  SetStatus.skipped: 'skipped',
};
