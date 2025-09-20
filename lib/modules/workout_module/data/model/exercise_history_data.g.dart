// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExerciseHistoryData _$ExerciseHistoryDataFromJson(Map<String, dynamic> json) =>
    _ExerciseHistoryData(
      calories: json['calories'] as num,
      times: json['times'] as num,
      sets: json['sets'] as num,
    );

Map<String, dynamic> _$ExerciseHistoryDataToJson(
        _ExerciseHistoryData instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'times': instance.times,
      'sets': instance.sets,
    };
