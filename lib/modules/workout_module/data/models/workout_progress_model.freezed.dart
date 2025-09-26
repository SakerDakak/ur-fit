// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_progress_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutProgress {
  int get workoutDayId; // معرف يوم التمرين
  String get date; // تاريخ التمرين (YYYY-MM-DD)
  WorkoutStatus get status; // حالة التمرين
  int get totalExercises; // إجمالي عدد التمارين
  int get completedExercises; // عدد التمارين المكتملة
  int get skippedExercises; // عدد التمارين المتخطاة
  int get totalSets; // إجمالي المجموعات
  int get completedSets; // المجموعات المكتملة
  int get totalCalories; // إجمالي السعرات الحرارية
  int get burnedCalories; // السعرات المحروقة
  int get totalTimeMinutes; // إجمالي وقت التمرين بالدقائق
  int get completedTimeMinutes; // الوقت المكتمل بالدقائق
  List<ExerciseProgress> get exercisesProgress; // تقدم كل تمرين
  DateTime get lastUpdated;

  /// Create a copy of WorkoutProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutProgressCopyWith<WorkoutProgress> get copyWith =>
      _$WorkoutProgressCopyWithImpl<WorkoutProgress>(
          this as WorkoutProgress, _$identity);

  /// Serializes this WorkoutProgress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutProgress &&
            (identical(other.workoutDayId, workoutDayId) ||
                other.workoutDayId == workoutDayId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalExercises, totalExercises) ||
                other.totalExercises == totalExercises) &&
            (identical(other.completedExercises, completedExercises) ||
                other.completedExercises == completedExercises) &&
            (identical(other.skippedExercises, skippedExercises) ||
                other.skippedExercises == skippedExercises) &&
            (identical(other.totalSets, totalSets) ||
                other.totalSets == totalSets) &&
            (identical(other.completedSets, completedSets) ||
                other.completedSets == completedSets) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.burnedCalories, burnedCalories) ||
                other.burnedCalories == burnedCalories) &&
            (identical(other.totalTimeMinutes, totalTimeMinutes) ||
                other.totalTimeMinutes == totalTimeMinutes) &&
            (identical(other.completedTimeMinutes, completedTimeMinutes) ||
                other.completedTimeMinutes == completedTimeMinutes) &&
            const DeepCollectionEquality()
                .equals(other.exercisesProgress, exercisesProgress) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutDayId,
      date,
      status,
      totalExercises,
      completedExercises,
      skippedExercises,
      totalSets,
      completedSets,
      totalCalories,
      burnedCalories,
      totalTimeMinutes,
      completedTimeMinutes,
      const DeepCollectionEquality().hash(exercisesProgress),
      lastUpdated);

  @override
  String toString() {
    return 'WorkoutProgress(workoutDayId: $workoutDayId, date: $date, status: $status, totalExercises: $totalExercises, completedExercises: $completedExercises, skippedExercises: $skippedExercises, totalSets: $totalSets, completedSets: $completedSets, totalCalories: $totalCalories, burnedCalories: $burnedCalories, totalTimeMinutes: $totalTimeMinutes, completedTimeMinutes: $completedTimeMinutes, exercisesProgress: $exercisesProgress, lastUpdated: $lastUpdated)';
  }
}

/// @nodoc
abstract mixin class $WorkoutProgressCopyWith<$Res> {
  factory $WorkoutProgressCopyWith(
          WorkoutProgress value, $Res Function(WorkoutProgress) _then) =
      _$WorkoutProgressCopyWithImpl;
  @useResult
  $Res call(
      {int workoutDayId,
      String date,
      WorkoutStatus status,
      int totalExercises,
      int completedExercises,
      int skippedExercises,
      int totalSets,
      int completedSets,
      int totalCalories,
      int burnedCalories,
      int totalTimeMinutes,
      int completedTimeMinutes,
      List<ExerciseProgress> exercisesProgress,
      DateTime lastUpdated});
}

/// @nodoc
class _$WorkoutProgressCopyWithImpl<$Res>
    implements $WorkoutProgressCopyWith<$Res> {
  _$WorkoutProgressCopyWithImpl(this._self, this._then);

  final WorkoutProgress _self;
  final $Res Function(WorkoutProgress) _then;

  /// Create a copy of WorkoutProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workoutDayId = null,
    Object? date = null,
    Object? status = null,
    Object? totalExercises = null,
    Object? completedExercises = null,
    Object? skippedExercises = null,
    Object? totalSets = null,
    Object? completedSets = null,
    Object? totalCalories = null,
    Object? burnedCalories = null,
    Object? totalTimeMinutes = null,
    Object? completedTimeMinutes = null,
    Object? exercisesProgress = null,
    Object? lastUpdated = null,
  }) {
    return _then(_self.copyWith(
      workoutDayId: null == workoutDayId
          ? _self.workoutDayId
          : workoutDayId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkoutStatus,
      totalExercises: null == totalExercises
          ? _self.totalExercises
          : totalExercises // ignore: cast_nullable_to_non_nullable
              as int,
      completedExercises: null == completedExercises
          ? _self.completedExercises
          : completedExercises // ignore: cast_nullable_to_non_nullable
              as int,
      skippedExercises: null == skippedExercises
          ? _self.skippedExercises
          : skippedExercises // ignore: cast_nullable_to_non_nullable
              as int,
      totalSets: null == totalSets
          ? _self.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _self.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      totalCalories: null == totalCalories
          ? _self.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as int,
      burnedCalories: null == burnedCalories
          ? _self.burnedCalories
          : burnedCalories // ignore: cast_nullable_to_non_nullable
              as int,
      totalTimeMinutes: null == totalTimeMinutes
          ? _self.totalTimeMinutes
          : totalTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      completedTimeMinutes: null == completedTimeMinutes
          ? _self.completedTimeMinutes
          : completedTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      exercisesProgress: null == exercisesProgress
          ? _self.exercisesProgress
          : exercisesProgress // ignore: cast_nullable_to_non_nullable
              as List<ExerciseProgress>,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkoutProgress].
extension WorkoutProgressPatterns on WorkoutProgress {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WorkoutProgress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutProgress() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WorkoutProgress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutProgress():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WorkoutProgress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutProgress() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int workoutDayId,
            String date,
            WorkoutStatus status,
            int totalExercises,
            int completedExercises,
            int skippedExercises,
            int totalSets,
            int completedSets,
            int totalCalories,
            int burnedCalories,
            int totalTimeMinutes,
            int completedTimeMinutes,
            List<ExerciseProgress> exercisesProgress,
            DateTime lastUpdated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutProgress() when $default != null:
        return $default(
            _that.workoutDayId,
            _that.date,
            _that.status,
            _that.totalExercises,
            _that.completedExercises,
            _that.skippedExercises,
            _that.totalSets,
            _that.completedSets,
            _that.totalCalories,
            _that.burnedCalories,
            _that.totalTimeMinutes,
            _that.completedTimeMinutes,
            _that.exercisesProgress,
            _that.lastUpdated);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int workoutDayId,
            String date,
            WorkoutStatus status,
            int totalExercises,
            int completedExercises,
            int skippedExercises,
            int totalSets,
            int completedSets,
            int totalCalories,
            int burnedCalories,
            int totalTimeMinutes,
            int completedTimeMinutes,
            List<ExerciseProgress> exercisesProgress,
            DateTime lastUpdated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutProgress():
        return $default(
            _that.workoutDayId,
            _that.date,
            _that.status,
            _that.totalExercises,
            _that.completedExercises,
            _that.skippedExercises,
            _that.totalSets,
            _that.completedSets,
            _that.totalCalories,
            _that.burnedCalories,
            _that.totalTimeMinutes,
            _that.completedTimeMinutes,
            _that.exercisesProgress,
            _that.lastUpdated);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int workoutDayId,
            String date,
            WorkoutStatus status,
            int totalExercises,
            int completedExercises,
            int skippedExercises,
            int totalSets,
            int completedSets,
            int totalCalories,
            int burnedCalories,
            int totalTimeMinutes,
            int completedTimeMinutes,
            List<ExerciseProgress> exercisesProgress,
            DateTime lastUpdated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutProgress() when $default != null:
        return $default(
            _that.workoutDayId,
            _that.date,
            _that.status,
            _that.totalExercises,
            _that.completedExercises,
            _that.skippedExercises,
            _that.totalSets,
            _that.completedSets,
            _that.totalCalories,
            _that.burnedCalories,
            _that.totalTimeMinutes,
            _that.completedTimeMinutes,
            _that.exercisesProgress,
            _that.lastUpdated);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WorkoutProgress implements WorkoutProgress {
  _WorkoutProgress(
      {required this.workoutDayId,
      required this.date,
      required this.status,
      required this.totalExercises,
      required this.completedExercises,
      required this.skippedExercises,
      required this.totalSets,
      required this.completedSets,
      required this.totalCalories,
      required this.burnedCalories,
      required this.totalTimeMinutes,
      required this.completedTimeMinutes,
      required final List<ExerciseProgress> exercisesProgress,
      required this.lastUpdated})
      : _exercisesProgress = exercisesProgress;
  factory _WorkoutProgress.fromJson(Map<String, dynamic> json) =>
      _$WorkoutProgressFromJson(json);

  @override
  final int workoutDayId;
// معرف يوم التمرين
  @override
  final String date;
// تاريخ التمرين (YYYY-MM-DD)
  @override
  final WorkoutStatus status;
// حالة التمرين
  @override
  final int totalExercises;
// إجمالي عدد التمارين
  @override
  final int completedExercises;
// عدد التمارين المكتملة
  @override
  final int skippedExercises;
// عدد التمارين المتخطاة
  @override
  final int totalSets;
// إجمالي المجموعات
  @override
  final int completedSets;
// المجموعات المكتملة
  @override
  final int totalCalories;
// إجمالي السعرات الحرارية
  @override
  final int burnedCalories;
// السعرات المحروقة
  @override
  final int totalTimeMinutes;
// إجمالي وقت التمرين بالدقائق
  @override
  final int completedTimeMinutes;
// الوقت المكتمل بالدقائق
  final List<ExerciseProgress> _exercisesProgress;
// الوقت المكتمل بالدقائق
  @override
  List<ExerciseProgress> get exercisesProgress {
    if (_exercisesProgress is EqualUnmodifiableListView)
      return _exercisesProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisesProgress);
  }

// تقدم كل تمرين
  @override
  final DateTime lastUpdated;

  /// Create a copy of WorkoutProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutProgressCopyWith<_WorkoutProgress> get copyWith =>
      __$WorkoutProgressCopyWithImpl<_WorkoutProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutProgressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutProgress &&
            (identical(other.workoutDayId, workoutDayId) ||
                other.workoutDayId == workoutDayId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalExercises, totalExercises) ||
                other.totalExercises == totalExercises) &&
            (identical(other.completedExercises, completedExercises) ||
                other.completedExercises == completedExercises) &&
            (identical(other.skippedExercises, skippedExercises) ||
                other.skippedExercises == skippedExercises) &&
            (identical(other.totalSets, totalSets) ||
                other.totalSets == totalSets) &&
            (identical(other.completedSets, completedSets) ||
                other.completedSets == completedSets) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.burnedCalories, burnedCalories) ||
                other.burnedCalories == burnedCalories) &&
            (identical(other.totalTimeMinutes, totalTimeMinutes) ||
                other.totalTimeMinutes == totalTimeMinutes) &&
            (identical(other.completedTimeMinutes, completedTimeMinutes) ||
                other.completedTimeMinutes == completedTimeMinutes) &&
            const DeepCollectionEquality()
                .equals(other._exercisesProgress, _exercisesProgress) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      workoutDayId,
      date,
      status,
      totalExercises,
      completedExercises,
      skippedExercises,
      totalSets,
      completedSets,
      totalCalories,
      burnedCalories,
      totalTimeMinutes,
      completedTimeMinutes,
      const DeepCollectionEquality().hash(_exercisesProgress),
      lastUpdated);

  @override
  String toString() {
    return 'WorkoutProgress(workoutDayId: $workoutDayId, date: $date, status: $status, totalExercises: $totalExercises, completedExercises: $completedExercises, skippedExercises: $skippedExercises, totalSets: $totalSets, completedSets: $completedSets, totalCalories: $totalCalories, burnedCalories: $burnedCalories, totalTimeMinutes: $totalTimeMinutes, completedTimeMinutes: $completedTimeMinutes, exercisesProgress: $exercisesProgress, lastUpdated: $lastUpdated)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutProgressCopyWith<$Res>
    implements $WorkoutProgressCopyWith<$Res> {
  factory _$WorkoutProgressCopyWith(
          _WorkoutProgress value, $Res Function(_WorkoutProgress) _then) =
      __$WorkoutProgressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int workoutDayId,
      String date,
      WorkoutStatus status,
      int totalExercises,
      int completedExercises,
      int skippedExercises,
      int totalSets,
      int completedSets,
      int totalCalories,
      int burnedCalories,
      int totalTimeMinutes,
      int completedTimeMinutes,
      List<ExerciseProgress> exercisesProgress,
      DateTime lastUpdated});
}

/// @nodoc
class __$WorkoutProgressCopyWithImpl<$Res>
    implements _$WorkoutProgressCopyWith<$Res> {
  __$WorkoutProgressCopyWithImpl(this._self, this._then);

  final _WorkoutProgress _self;
  final $Res Function(_WorkoutProgress) _then;

  /// Create a copy of WorkoutProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workoutDayId = null,
    Object? date = null,
    Object? status = null,
    Object? totalExercises = null,
    Object? completedExercises = null,
    Object? skippedExercises = null,
    Object? totalSets = null,
    Object? completedSets = null,
    Object? totalCalories = null,
    Object? burnedCalories = null,
    Object? totalTimeMinutes = null,
    Object? completedTimeMinutes = null,
    Object? exercisesProgress = null,
    Object? lastUpdated = null,
  }) {
    return _then(_WorkoutProgress(
      workoutDayId: null == workoutDayId
          ? _self.workoutDayId
          : workoutDayId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as WorkoutStatus,
      totalExercises: null == totalExercises
          ? _self.totalExercises
          : totalExercises // ignore: cast_nullable_to_non_nullable
              as int,
      completedExercises: null == completedExercises
          ? _self.completedExercises
          : completedExercises // ignore: cast_nullable_to_non_nullable
              as int,
      skippedExercises: null == skippedExercises
          ? _self.skippedExercises
          : skippedExercises // ignore: cast_nullable_to_non_nullable
              as int,
      totalSets: null == totalSets
          ? _self.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _self.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      totalCalories: null == totalCalories
          ? _self.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as int,
      burnedCalories: null == burnedCalories
          ? _self.burnedCalories
          : burnedCalories // ignore: cast_nullable_to_non_nullable
              as int,
      totalTimeMinutes: null == totalTimeMinutes
          ? _self.totalTimeMinutes
          : totalTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      completedTimeMinutes: null == completedTimeMinutes
          ? _self.completedTimeMinutes
          : completedTimeMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      exercisesProgress: null == exercisesProgress
          ? _self._exercisesProgress
          : exercisesProgress // ignore: cast_nullable_to_non_nullable
              as List<ExerciseProgress>,
      lastUpdated: null == lastUpdated
          ? _self.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$ExerciseProgress {
  int get exerciseId; // معرف التمرين
  ExerciseStatus get status; // حالة التمرين
  int get totalSets; // إجمالي المجموعات المطلوبة
  int get completedSets; // المجموعات المكتملة
  int get skippedSets; // المجموعات المتخطاة
  int get caloriesPerSet; // السعرات لكل مجموعة
  int get timePerSetMinutes; // الوقت لكل مجموعة بالدقائق
  DateTime? get startedAt; // وقت بداية التمرين
  DateTime? get completedAt; // وقت انتهاء التمرين
  List<SetProgress> get setsProgress; // تقدم كل مجموعة
  int get currentSet; // المجموعة الحالية (1-based)
  int get totalWorkoutTimeSeconds; // إجمالي وقت التمرين الفعلي بالثواني
  int get totalRestTimeSeconds;

  /// Create a copy of ExerciseProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseProgressCopyWith<ExerciseProgress> get copyWith =>
      _$ExerciseProgressCopyWithImpl<ExerciseProgress>(
          this as ExerciseProgress, _$identity);

  /// Serializes this ExerciseProgress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExerciseProgress &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalSets, totalSets) ||
                other.totalSets == totalSets) &&
            (identical(other.completedSets, completedSets) ||
                other.completedSets == completedSets) &&
            (identical(other.skippedSets, skippedSets) ||
                other.skippedSets == skippedSets) &&
            (identical(other.caloriesPerSet, caloriesPerSet) ||
                other.caloriesPerSet == caloriesPerSet) &&
            (identical(other.timePerSetMinutes, timePerSetMinutes) ||
                other.timePerSetMinutes == timePerSetMinutes) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality()
                .equals(other.setsProgress, setsProgress) &&
            (identical(other.currentSet, currentSet) ||
                other.currentSet == currentSet) &&
            (identical(
                    other.totalWorkoutTimeSeconds, totalWorkoutTimeSeconds) ||
                other.totalWorkoutTimeSeconds == totalWorkoutTimeSeconds) &&
            (identical(other.totalRestTimeSeconds, totalRestTimeSeconds) ||
                other.totalRestTimeSeconds == totalRestTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      exerciseId,
      status,
      totalSets,
      completedSets,
      skippedSets,
      caloriesPerSet,
      timePerSetMinutes,
      startedAt,
      completedAt,
      const DeepCollectionEquality().hash(setsProgress),
      currentSet,
      totalWorkoutTimeSeconds,
      totalRestTimeSeconds);

  @override
  String toString() {
    return 'ExerciseProgress(exerciseId: $exerciseId, status: $status, totalSets: $totalSets, completedSets: $completedSets, skippedSets: $skippedSets, caloriesPerSet: $caloriesPerSet, timePerSetMinutes: $timePerSetMinutes, startedAt: $startedAt, completedAt: $completedAt, setsProgress: $setsProgress, currentSet: $currentSet, totalWorkoutTimeSeconds: $totalWorkoutTimeSeconds, totalRestTimeSeconds: $totalRestTimeSeconds)';
  }
}

/// @nodoc
abstract mixin class $ExerciseProgressCopyWith<$Res> {
  factory $ExerciseProgressCopyWith(
          ExerciseProgress value, $Res Function(ExerciseProgress) _then) =
      _$ExerciseProgressCopyWithImpl;
  @useResult
  $Res call(
      {int exerciseId,
      ExerciseStatus status,
      int totalSets,
      int completedSets,
      int skippedSets,
      int caloriesPerSet,
      int timePerSetMinutes,
      DateTime? startedAt,
      DateTime? completedAt,
      List<SetProgress> setsProgress,
      int currentSet,
      int totalWorkoutTimeSeconds,
      int totalRestTimeSeconds});
}

/// @nodoc
class _$ExerciseProgressCopyWithImpl<$Res>
    implements $ExerciseProgressCopyWith<$Res> {
  _$ExerciseProgressCopyWithImpl(this._self, this._then);

  final ExerciseProgress _self;
  final $Res Function(ExerciseProgress) _then;

  /// Create a copy of ExerciseProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseId = null,
    Object? status = null,
    Object? totalSets = null,
    Object? completedSets = null,
    Object? skippedSets = null,
    Object? caloriesPerSet = null,
    Object? timePerSetMinutes = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? setsProgress = null,
    Object? currentSet = null,
    Object? totalWorkoutTimeSeconds = null,
    Object? totalRestTimeSeconds = null,
  }) {
    return _then(_self.copyWith(
      exerciseId: null == exerciseId
          ? _self.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExerciseStatus,
      totalSets: null == totalSets
          ? _self.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _self.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      skippedSets: null == skippedSets
          ? _self.skippedSets
          : skippedSets // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesPerSet: null == caloriesPerSet
          ? _self.caloriesPerSet
          : caloriesPerSet // ignore: cast_nullable_to_non_nullable
              as int,
      timePerSetMinutes: null == timePerSetMinutes
          ? _self.timePerSetMinutes
          : timePerSetMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      setsProgress: null == setsProgress
          ? _self.setsProgress
          : setsProgress // ignore: cast_nullable_to_non_nullable
              as List<SetProgress>,
      currentSet: null == currentSet
          ? _self.currentSet
          : currentSet // ignore: cast_nullable_to_non_nullable
              as int,
      totalWorkoutTimeSeconds: null == totalWorkoutTimeSeconds
          ? _self.totalWorkoutTimeSeconds
          : totalWorkoutTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalRestTimeSeconds: null == totalRestTimeSeconds
          ? _self.totalRestTimeSeconds
          : totalRestTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExerciseProgress].
extension ExerciseProgressPatterns on ExerciseProgress {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ExerciseProgress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExerciseProgress() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ExerciseProgress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseProgress():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ExerciseProgress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseProgress() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int exerciseId,
            ExerciseStatus status,
            int totalSets,
            int completedSets,
            int skippedSets,
            int caloriesPerSet,
            int timePerSetMinutes,
            DateTime? startedAt,
            DateTime? completedAt,
            List<SetProgress> setsProgress,
            int currentSet,
            int totalWorkoutTimeSeconds,
            int totalRestTimeSeconds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExerciseProgress() when $default != null:
        return $default(
            _that.exerciseId,
            _that.status,
            _that.totalSets,
            _that.completedSets,
            _that.skippedSets,
            _that.caloriesPerSet,
            _that.timePerSetMinutes,
            _that.startedAt,
            _that.completedAt,
            _that.setsProgress,
            _that.currentSet,
            _that.totalWorkoutTimeSeconds,
            _that.totalRestTimeSeconds);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int exerciseId,
            ExerciseStatus status,
            int totalSets,
            int completedSets,
            int skippedSets,
            int caloriesPerSet,
            int timePerSetMinutes,
            DateTime? startedAt,
            DateTime? completedAt,
            List<SetProgress> setsProgress,
            int currentSet,
            int totalWorkoutTimeSeconds,
            int totalRestTimeSeconds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseProgress():
        return $default(
            _that.exerciseId,
            _that.status,
            _that.totalSets,
            _that.completedSets,
            _that.skippedSets,
            _that.caloriesPerSet,
            _that.timePerSetMinutes,
            _that.startedAt,
            _that.completedAt,
            _that.setsProgress,
            _that.currentSet,
            _that.totalWorkoutTimeSeconds,
            _that.totalRestTimeSeconds);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int exerciseId,
            ExerciseStatus status,
            int totalSets,
            int completedSets,
            int skippedSets,
            int caloriesPerSet,
            int timePerSetMinutes,
            DateTime? startedAt,
            DateTime? completedAt,
            List<SetProgress> setsProgress,
            int currentSet,
            int totalWorkoutTimeSeconds,
            int totalRestTimeSeconds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseProgress() when $default != null:
        return $default(
            _that.exerciseId,
            _that.status,
            _that.totalSets,
            _that.completedSets,
            _that.skippedSets,
            _that.caloriesPerSet,
            _that.timePerSetMinutes,
            _that.startedAt,
            _that.completedAt,
            _that.setsProgress,
            _that.currentSet,
            _that.totalWorkoutTimeSeconds,
            _that.totalRestTimeSeconds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExerciseProgress implements ExerciseProgress {
  _ExerciseProgress(
      {required this.exerciseId,
      required this.status,
      required this.totalSets,
      required this.completedSets,
      required this.skippedSets,
      required this.caloriesPerSet,
      required this.timePerSetMinutes,
      required this.startedAt,
      required this.completedAt,
      required final List<SetProgress> setsProgress,
      required this.currentSet,
      required this.totalWorkoutTimeSeconds,
      required this.totalRestTimeSeconds})
      : _setsProgress = setsProgress;
  factory _ExerciseProgress.fromJson(Map<String, dynamic> json) =>
      _$ExerciseProgressFromJson(json);

  @override
  final int exerciseId;
// معرف التمرين
  @override
  final ExerciseStatus status;
// حالة التمرين
  @override
  final int totalSets;
// إجمالي المجموعات المطلوبة
  @override
  final int completedSets;
// المجموعات المكتملة
  @override
  final int skippedSets;
// المجموعات المتخطاة
  @override
  final int caloriesPerSet;
// السعرات لكل مجموعة
  @override
  final int timePerSetMinutes;
// الوقت لكل مجموعة بالدقائق
  @override
  final DateTime? startedAt;
// وقت بداية التمرين
  @override
  final DateTime? completedAt;
// وقت انتهاء التمرين
  final List<SetProgress> _setsProgress;
// وقت انتهاء التمرين
  @override
  List<SetProgress> get setsProgress {
    if (_setsProgress is EqualUnmodifiableListView) return _setsProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setsProgress);
  }

// تقدم كل مجموعة
  @override
  final int currentSet;
// المجموعة الحالية (1-based)
  @override
  final int totalWorkoutTimeSeconds;
// إجمالي وقت التمرين الفعلي بالثواني
  @override
  final int totalRestTimeSeconds;

  /// Create a copy of ExerciseProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExerciseProgressCopyWith<_ExerciseProgress> get copyWith =>
      __$ExerciseProgressCopyWithImpl<_ExerciseProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExerciseProgressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExerciseProgress &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalSets, totalSets) ||
                other.totalSets == totalSets) &&
            (identical(other.completedSets, completedSets) ||
                other.completedSets == completedSets) &&
            (identical(other.skippedSets, skippedSets) ||
                other.skippedSets == skippedSets) &&
            (identical(other.caloriesPerSet, caloriesPerSet) ||
                other.caloriesPerSet == caloriesPerSet) &&
            (identical(other.timePerSetMinutes, timePerSetMinutes) ||
                other.timePerSetMinutes == timePerSetMinutes) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality()
                .equals(other._setsProgress, _setsProgress) &&
            (identical(other.currentSet, currentSet) ||
                other.currentSet == currentSet) &&
            (identical(
                    other.totalWorkoutTimeSeconds, totalWorkoutTimeSeconds) ||
                other.totalWorkoutTimeSeconds == totalWorkoutTimeSeconds) &&
            (identical(other.totalRestTimeSeconds, totalRestTimeSeconds) ||
                other.totalRestTimeSeconds == totalRestTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      exerciseId,
      status,
      totalSets,
      completedSets,
      skippedSets,
      caloriesPerSet,
      timePerSetMinutes,
      startedAt,
      completedAt,
      const DeepCollectionEquality().hash(_setsProgress),
      currentSet,
      totalWorkoutTimeSeconds,
      totalRestTimeSeconds);

  @override
  String toString() {
    return 'ExerciseProgress(exerciseId: $exerciseId, status: $status, totalSets: $totalSets, completedSets: $completedSets, skippedSets: $skippedSets, caloriesPerSet: $caloriesPerSet, timePerSetMinutes: $timePerSetMinutes, startedAt: $startedAt, completedAt: $completedAt, setsProgress: $setsProgress, currentSet: $currentSet, totalWorkoutTimeSeconds: $totalWorkoutTimeSeconds, totalRestTimeSeconds: $totalRestTimeSeconds)';
  }
}

/// @nodoc
abstract mixin class _$ExerciseProgressCopyWith<$Res>
    implements $ExerciseProgressCopyWith<$Res> {
  factory _$ExerciseProgressCopyWith(
          _ExerciseProgress value, $Res Function(_ExerciseProgress) _then) =
      __$ExerciseProgressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int exerciseId,
      ExerciseStatus status,
      int totalSets,
      int completedSets,
      int skippedSets,
      int caloriesPerSet,
      int timePerSetMinutes,
      DateTime? startedAt,
      DateTime? completedAt,
      List<SetProgress> setsProgress,
      int currentSet,
      int totalWorkoutTimeSeconds,
      int totalRestTimeSeconds});
}

/// @nodoc
class __$ExerciseProgressCopyWithImpl<$Res>
    implements _$ExerciseProgressCopyWith<$Res> {
  __$ExerciseProgressCopyWithImpl(this._self, this._then);

  final _ExerciseProgress _self;
  final $Res Function(_ExerciseProgress) _then;

  /// Create a copy of ExerciseProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exerciseId = null,
    Object? status = null,
    Object? totalSets = null,
    Object? completedSets = null,
    Object? skippedSets = null,
    Object? caloriesPerSet = null,
    Object? timePerSetMinutes = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? setsProgress = null,
    Object? currentSet = null,
    Object? totalWorkoutTimeSeconds = null,
    Object? totalRestTimeSeconds = null,
  }) {
    return _then(_ExerciseProgress(
      exerciseId: null == exerciseId
          ? _self.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExerciseStatus,
      totalSets: null == totalSets
          ? _self.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _self.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      skippedSets: null == skippedSets
          ? _self.skippedSets
          : skippedSets // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesPerSet: null == caloriesPerSet
          ? _self.caloriesPerSet
          : caloriesPerSet // ignore: cast_nullable_to_non_nullable
              as int,
      timePerSetMinutes: null == timePerSetMinutes
          ? _self.timePerSetMinutes
          : timePerSetMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      setsProgress: null == setsProgress
          ? _self._setsProgress
          : setsProgress // ignore: cast_nullable_to_non_nullable
              as List<SetProgress>,
      currentSet: null == currentSet
          ? _self.currentSet
          : currentSet // ignore: cast_nullable_to_non_nullable
              as int,
      totalWorkoutTimeSeconds: null == totalWorkoutTimeSeconds
          ? _self.totalWorkoutTimeSeconds
          : totalWorkoutTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalRestTimeSeconds: null == totalRestTimeSeconds
          ? _self.totalRestTimeSeconds
          : totalRestTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$SetProgress {
  int get setNumber; // رقم المجموعة (1-based)
  SetStatus get status; // حالة المجموعة
  DateTime? get startedAt; // وقت بداية المجموعة
  DateTime? get completedAt; // وقت انتهاء المجموعة
  int get workoutTimeSeconds; // وقت التمرين الفعلي بالثواني
  int get restTimeSeconds;

  /// Create a copy of SetProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SetProgressCopyWith<SetProgress> get copyWith =>
      _$SetProgressCopyWithImpl<SetProgress>(this as SetProgress, _$identity);

  /// Serializes this SetProgress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetProgress &&
            (identical(other.setNumber, setNumber) ||
                other.setNumber == setNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.workoutTimeSeconds, workoutTimeSeconds) ||
                other.workoutTimeSeconds == workoutTimeSeconds) &&
            (identical(other.restTimeSeconds, restTimeSeconds) ||
                other.restTimeSeconds == restTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, setNumber, status, startedAt,
      completedAt, workoutTimeSeconds, restTimeSeconds);

  @override
  String toString() {
    return 'SetProgress(setNumber: $setNumber, status: $status, startedAt: $startedAt, completedAt: $completedAt, workoutTimeSeconds: $workoutTimeSeconds, restTimeSeconds: $restTimeSeconds)';
  }
}

/// @nodoc
abstract mixin class $SetProgressCopyWith<$Res> {
  factory $SetProgressCopyWith(
          SetProgress value, $Res Function(SetProgress) _then) =
      _$SetProgressCopyWithImpl;
  @useResult
  $Res call(
      {int setNumber,
      SetStatus status,
      DateTime? startedAt,
      DateTime? completedAt,
      int workoutTimeSeconds,
      int restTimeSeconds});
}

/// @nodoc
class _$SetProgressCopyWithImpl<$Res> implements $SetProgressCopyWith<$Res> {
  _$SetProgressCopyWithImpl(this._self, this._then);

  final SetProgress _self;
  final $Res Function(SetProgress) _then;

  /// Create a copy of SetProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setNumber = null,
    Object? status = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? workoutTimeSeconds = null,
    Object? restTimeSeconds = null,
  }) {
    return _then(_self.copyWith(
      setNumber: null == setNumber
          ? _self.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetStatus,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workoutTimeSeconds: null == workoutTimeSeconds
          ? _self.workoutTimeSeconds
          : workoutTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      restTimeSeconds: null == restTimeSeconds
          ? _self.restTimeSeconds
          : restTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SetProgress].
extension SetProgressPatterns on SetProgress {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SetProgress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SetProgress() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SetProgress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetProgress():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SetProgress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetProgress() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int setNumber, SetStatus status, DateTime? startedAt,
            DateTime? completedAt, int workoutTimeSeconds, int restTimeSeconds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SetProgress() when $default != null:
        return $default(_that.setNumber, _that.status, _that.startedAt,
            _that.completedAt, _that.workoutTimeSeconds, _that.restTimeSeconds);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int setNumber, SetStatus status, DateTime? startedAt,
            DateTime? completedAt, int workoutTimeSeconds, int restTimeSeconds)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetProgress():
        return $default(_that.setNumber, _that.status, _that.startedAt,
            _that.completedAt, _that.workoutTimeSeconds, _that.restTimeSeconds);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int setNumber, SetStatus status, DateTime? startedAt,
            DateTime? completedAt, int workoutTimeSeconds, int restTimeSeconds)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetProgress() when $default != null:
        return $default(_that.setNumber, _that.status, _that.startedAt,
            _that.completedAt, _that.workoutTimeSeconds, _that.restTimeSeconds);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SetProgress implements SetProgress {
  _SetProgress(
      {required this.setNumber,
      required this.status,
      required this.startedAt,
      required this.completedAt,
      required this.workoutTimeSeconds,
      required this.restTimeSeconds});
  factory _SetProgress.fromJson(Map<String, dynamic> json) =>
      _$SetProgressFromJson(json);

  @override
  final int setNumber;
// رقم المجموعة (1-based)
  @override
  final SetStatus status;
// حالة المجموعة
  @override
  final DateTime? startedAt;
// وقت بداية المجموعة
  @override
  final DateTime? completedAt;
// وقت انتهاء المجموعة
  @override
  final int workoutTimeSeconds;
// وقت التمرين الفعلي بالثواني
  @override
  final int restTimeSeconds;

  /// Create a copy of SetProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetProgressCopyWith<_SetProgress> get copyWith =>
      __$SetProgressCopyWithImpl<_SetProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SetProgressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetProgress &&
            (identical(other.setNumber, setNumber) ||
                other.setNumber == setNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.workoutTimeSeconds, workoutTimeSeconds) ||
                other.workoutTimeSeconds == workoutTimeSeconds) &&
            (identical(other.restTimeSeconds, restTimeSeconds) ||
                other.restTimeSeconds == restTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, setNumber, status, startedAt,
      completedAt, workoutTimeSeconds, restTimeSeconds);

  @override
  String toString() {
    return 'SetProgress(setNumber: $setNumber, status: $status, startedAt: $startedAt, completedAt: $completedAt, workoutTimeSeconds: $workoutTimeSeconds, restTimeSeconds: $restTimeSeconds)';
  }
}

/// @nodoc
abstract mixin class _$SetProgressCopyWith<$Res>
    implements $SetProgressCopyWith<$Res> {
  factory _$SetProgressCopyWith(
          _SetProgress value, $Res Function(_SetProgress) _then) =
      __$SetProgressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int setNumber,
      SetStatus status,
      DateTime? startedAt,
      DateTime? completedAt,
      int workoutTimeSeconds,
      int restTimeSeconds});
}

/// @nodoc
class __$SetProgressCopyWithImpl<$Res> implements _$SetProgressCopyWith<$Res> {
  __$SetProgressCopyWithImpl(this._self, this._then);

  final _SetProgress _self;
  final $Res Function(_SetProgress) _then;

  /// Create a copy of SetProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? setNumber = null,
    Object? status = null,
    Object? startedAt = freezed,
    Object? completedAt = freezed,
    Object? workoutTimeSeconds = null,
    Object? restTimeSeconds = null,
  }) {
    return _then(_SetProgress(
      setNumber: null == setNumber
          ? _self.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetStatus,
      startedAt: freezed == startedAt
          ? _self.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _self.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workoutTimeSeconds: null == workoutTimeSeconds
          ? _self.workoutTimeSeconds
          : workoutTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      restTimeSeconds: null == restTimeSeconds
          ? _self.restTimeSeconds
          : restTimeSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
