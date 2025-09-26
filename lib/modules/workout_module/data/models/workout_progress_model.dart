import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_progress_model.freezed.dart';
part 'workout_progress_model.g.dart';

/// نموذج لحفظ تقدم التمرين محلياً
@freezed
abstract class WorkoutProgress with _$WorkoutProgress {
  factory WorkoutProgress({
    required int workoutDayId, // معرف يوم التمرين
    required String date, // تاريخ التمرين (YYYY-MM-DD)
    required WorkoutStatus status, // حالة التمرين
    required int totalExercises, // إجمالي عدد التمارين
    required int completedExercises, // عدد التمارين المكتملة
    required int skippedExercises, // عدد التمارين المتخطاة
    required int totalSets, // إجمالي المجموعات
    required int completedSets, // المجموعات المكتملة
    required int totalCalories, // إجمالي السعرات الحرارية لجميع التمارين
    required int burnedCalories, // السعرات المحروقة
    required int totalTimeMinutes, // إجمالي وقت التمرين بالدقائق
    required int completedTimeMinutes, // الوقت المكتمل بالدقائق
    required List<ExerciseProgress> exercisesProgress, // تقدم كل تمرين
    required DateTime lastUpdated, // آخر تحديث
  }) = _WorkoutProgress;

  factory WorkoutProgress.fromJson(Map<String, dynamic> json) =>
      _$WorkoutProgressFromJson(json);
}

/// نموذج لحفظ تقدم تمرين واحد
@freezed
abstract class ExerciseProgress with _$ExerciseProgress {
  factory ExerciseProgress({
    required int exerciseId, // معرف التمرين
    required ExerciseStatus status, // حالة التمرين
    required int totalSets, // إجمالي المجموعات المطلوبة
    required int completedSets, // المجموعات المكتملة
    required int skippedSets, // المجموعات المتخطاة
    required int caloriesPerSet, // السعرات الإجمالية للتمرين (ليس لكل مجموعة)
    required int timePerSetMinutes, // الوقت لكل مجموعة بالدقائق
    required DateTime? startedAt, // وقت بداية التمرين
    required DateTime? completedAt, // وقت انتهاء التمرين
    required List<SetProgress> setsProgress, // تقدم كل مجموعة
    required int currentSet, // المجموعة الحالية (1-based)
    required int totalWorkoutTimeSeconds, // إجمالي وقت التمرين الفعلي بالثواني
    required int totalRestTimeSeconds, // إجمالي وقت الاستراحة بالثواني
  }) = _ExerciseProgress;

  factory ExerciseProgress.fromJson(Map<String, dynamic> json) =>
      _$ExerciseProgressFromJson(json);
}

/// نموذج لحفظ تقدم مجموعة واحدة
@freezed
abstract class SetProgress with _$SetProgress {
  factory SetProgress({
    required int setNumber, // رقم المجموعة (1-based)
    required SetStatus status, // حالة المجموعة
    required DateTime? startedAt, // وقت بداية المجموعة
    required DateTime? completedAt, // وقت انتهاء المجموعة
    required int workoutTimeSeconds, // وقت التمرين الفعلي بالثواني
    required int restTimeSeconds, // وقت الاستراحة بالثواني
  }) = _SetProgress;

  factory SetProgress.fromJson(Map<String, dynamic> json) =>
      _$SetProgressFromJson(json);
}

/// حالة التمرين العام
enum WorkoutStatus {
  @JsonValue('not_started')
  notStarted, // لم يبدأ
  @JsonValue('in_progress')
  inProgress, // قيد التنفيذ
  @JsonValue('completed')
  completed, // مكتمل
}

/// حالة تمرين واحد
enum ExerciseStatus {
  @JsonValue('not_started')
  notStarted, // لم يبدأ
  @JsonValue('in_progress')
  inProgress, // قيد التنفيذ
  @JsonValue('completed')
  completed, // مكتمل
  @JsonValue('skipped')
  skipped, // متخطى
}

/// حالة مجموعة واحدة
enum SetStatus {
  @JsonValue('not_started')
  notStarted, // لم تبدأ
  @JsonValue('in_progress')
  inProgress, // قيد التنفيذ
  @JsonValue('completed')
  completed, // مكتملة
  @JsonValue('skipped')
  skipped, // متخطاة
}
