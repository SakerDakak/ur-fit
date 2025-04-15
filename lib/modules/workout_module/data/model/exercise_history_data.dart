
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_history_data.freezed.dart';
part 'exercise_history_data.g.dart';
@freezed
class ExerciseHistoryData with _$ExerciseHistoryData {
  const factory ExerciseHistoryData({
    required num calories,
    required num times,
    required num sets,
  }) = _ExerciseHistoryData;

  factory ExerciseHistoryData.fromJson(Map<String, Object?> json) =>
      _$ExerciseHistoryDataFromJson(json);
}