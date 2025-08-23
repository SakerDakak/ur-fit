// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutPlan {
  int get id;
  @JsonKey(name: 'user_id')
  int get userId;
  String? get name;
  @JsonKey(name: 'start_date')
  String get startDate;
  @JsonKey(name: 'end_date')
  String get endDate;
  @JsonKey(name: 'plan_days')
  List<WorkoutDay> get planDays;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutPlanCopyWith<WorkoutPlan> get copyWith =>
      _$WorkoutPlanCopyWithImpl<WorkoutPlan>(this as WorkoutPlan, _$identity);

  /// Serializes this WorkoutPlan to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutPlan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other.planDays, planDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(planDays),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'WorkoutPlan(id: $id, userId: $userId, name: $name, startDate: $startDate, endDate: $endDate, planDays: $planDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $WorkoutPlanCopyWith<$Res> {
  factory $WorkoutPlanCopyWith(
          WorkoutPlan value, $Res Function(WorkoutPlan) _then) =
      _$WorkoutPlanCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String? name,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'plan_days') List<WorkoutDay> planDays,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$WorkoutPlanCopyWithImpl<$Res> implements $WorkoutPlanCopyWith<$Res> {
  _$WorkoutPlanCopyWithImpl(this._self, this._then);

  final WorkoutPlan _self;
  final $Res Function(WorkoutPlan) _then;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? planDays = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      planDays: null == planDays
          ? _self.planDays
          : planDays // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDay>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkoutPlan].
extension WorkoutPlanPatterns on WorkoutPlan {
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
    TResult Function(_WorkoutPlan value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutPlan() when $default != null:
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
    TResult Function(_WorkoutPlan value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutPlan():
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
    TResult? Function(_WorkoutPlan value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutPlan() when $default != null:
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
            int id,
            @JsonKey(name: 'user_id') int userId,
            String? name,
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'plan_days') List<WorkoutDay> planDays,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutPlan() when $default != null:
        return $default(_that.id, _that.userId, _that.name, _that.startDate,
            _that.endDate, _that.planDays, _that.createdAt, _that.updatedAt);
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
            int id,
            @JsonKey(name: 'user_id') int userId,
            String? name,
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'plan_days') List<WorkoutDay> planDays,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutPlan():
        return $default(_that.id, _that.userId, _that.name, _that.startDate,
            _that.endDate, _that.planDays, _that.createdAt, _that.updatedAt);
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
            int id,
            @JsonKey(name: 'user_id') int userId,
            String? name,
            @JsonKey(name: 'start_date') String startDate,
            @JsonKey(name: 'end_date') String endDate,
            @JsonKey(name: 'plan_days') List<WorkoutDay> planDays,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutPlan() when $default != null:
        return $default(_that.id, _that.userId, _that.name, _that.startDate,
            _that.endDate, _that.planDays, _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WorkoutPlan implements WorkoutPlan {
  _WorkoutPlan(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.name,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'plan_days') required final List<WorkoutDay> planDays,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _planDays = planDays;
  factory _WorkoutPlan.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  final List<WorkoutDay> _planDays;
  @override
  @JsonKey(name: 'plan_days')
  List<WorkoutDay> get planDays {
    if (_planDays is EqualUnmodifiableListView) return _planDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planDays);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutPlanCopyWith<_WorkoutPlan> get copyWith =>
      __$WorkoutPlanCopyWithImpl<_WorkoutPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutPlanToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutPlan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._planDays, _planDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_planDays),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'WorkoutPlan(id: $id, userId: $userId, name: $name, startDate: $startDate, endDate: $endDate, planDays: $planDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutPlanCopyWith<$Res>
    implements $WorkoutPlanCopyWith<$Res> {
  factory _$WorkoutPlanCopyWith(
          _WorkoutPlan value, $Res Function(_WorkoutPlan) _then) =
      __$WorkoutPlanCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      String? name,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'plan_days') List<WorkoutDay> planDays,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$WorkoutPlanCopyWithImpl<$Res> implements _$WorkoutPlanCopyWith<$Res> {
  __$WorkoutPlanCopyWithImpl(this._self, this._then);

  final _WorkoutPlan _self;
  final $Res Function(_WorkoutPlan) _then;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? planDays = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_WorkoutPlan(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      planDays: null == planDays
          ? _self._planDays
          : planDays // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDay>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$WorkoutDay {
  int get id;
  String get day;
  int get sets;
  @JsonKey(name: 'time_per_exercise')
  int get timePerExercise;
  @JsonKey(name: 'calories_burned')
  int get caloriesBurned;
  @JsonKey(name: 'body_part')
  String get bodyPart;
  List<Exercise> get exercises;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutDayCopyWith<WorkoutDay> get copyWith =>
      _$WorkoutDayCopyWithImpl<WorkoutDay>(this as WorkoutDay, _$identity);

  /// Serializes this WorkoutDay to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutDay &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.timePerExercise, timePerExercise) ||
                other.timePerExercise == timePerExercise) &&
            (identical(other.caloriesBurned, caloriesBurned) ||
                other.caloriesBurned == caloriesBurned) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            const DeepCollectionEquality().equals(other.exercises, exercises) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      day,
      sets,
      timePerExercise,
      caloriesBurned,
      bodyPart,
      const DeepCollectionEquality().hash(exercises),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'WorkoutDay(id: $id, day: $day, sets: $sets, timePerExercise: $timePerExercise, caloriesBurned: $caloriesBurned, bodyPart: $bodyPart, exercises: $exercises, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $WorkoutDayCopyWith<$Res> {
  factory $WorkoutDayCopyWith(
          WorkoutDay value, $Res Function(WorkoutDay) _then) =
      _$WorkoutDayCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String day,
      int sets,
      @JsonKey(name: 'time_per_exercise') int timePerExercise,
      @JsonKey(name: 'calories_burned') int caloriesBurned,
      @JsonKey(name: 'body_part') String bodyPart,
      List<Exercise> exercises,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$WorkoutDayCopyWithImpl<$Res> implements $WorkoutDayCopyWith<$Res> {
  _$WorkoutDayCopyWithImpl(this._self, this._then);

  final WorkoutDay _self;
  final $Res Function(WorkoutDay) _then;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? sets = null,
    Object? timePerExercise = null,
    Object? caloriesBurned = null,
    Object? bodyPart = null,
    Object? exercises = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      timePerExercise: null == timePerExercise
          ? _self.timePerExercise
          : timePerExercise // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesBurned: null == caloriesBurned
          ? _self.caloriesBurned
          : caloriesBurned // ignore: cast_nullable_to_non_nullable
              as int,
      bodyPart: null == bodyPart
          ? _self.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _self.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkoutDay].
extension WorkoutDayPatterns on WorkoutDay {
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
    TResult Function(_WorkoutDay value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutDay() when $default != null:
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
    TResult Function(_WorkoutDay value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutDay():
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
    TResult? Function(_WorkoutDay value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutDay() when $default != null:
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
            int id,
            String day,
            int sets,
            @JsonKey(name: 'time_per_exercise') int timePerExercise,
            @JsonKey(name: 'calories_burned') int caloriesBurned,
            @JsonKey(name: 'body_part') String bodyPart,
            List<Exercise> exercises,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutDay() when $default != null:
        return $default(
            _that.id,
            _that.day,
            _that.sets,
            _that.timePerExercise,
            _that.caloriesBurned,
            _that.bodyPart,
            _that.exercises,
            _that.createdAt,
            _that.updatedAt);
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
            int id,
            String day,
            int sets,
            @JsonKey(name: 'time_per_exercise') int timePerExercise,
            @JsonKey(name: 'calories_burned') int caloriesBurned,
            @JsonKey(name: 'body_part') String bodyPart,
            List<Exercise> exercises,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutDay():
        return $default(
            _that.id,
            _that.day,
            _that.sets,
            _that.timePerExercise,
            _that.caloriesBurned,
            _that.bodyPart,
            _that.exercises,
            _that.createdAt,
            _that.updatedAt);
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
            int id,
            String day,
            int sets,
            @JsonKey(name: 'time_per_exercise') int timePerExercise,
            @JsonKey(name: 'calories_burned') int caloriesBurned,
            @JsonKey(name: 'body_part') String bodyPart,
            List<Exercise> exercises,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutDay() when $default != null:
        return $default(
            _that.id,
            _that.day,
            _that.sets,
            _that.timePerExercise,
            _that.caloriesBurned,
            _that.bodyPart,
            _that.exercises,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WorkoutDay implements WorkoutDay {
  _WorkoutDay(
      {required this.id,
      required this.day,
      required this.sets,
      @JsonKey(name: 'time_per_exercise') required this.timePerExercise,
      @JsonKey(name: 'calories_burned') required this.caloriesBurned,
      @JsonKey(name: 'body_part') required this.bodyPart,
      required final List<Exercise> exercises,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _exercises = exercises;
  factory _WorkoutDay.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDayFromJson(json);

  @override
  final int id;
  @override
  final String day;
  @override
  final int sets;
  @override
  @JsonKey(name: 'time_per_exercise')
  final int timePerExercise;
  @override
  @JsonKey(name: 'calories_burned')
  final int caloriesBurned;
  @override
  @JsonKey(name: 'body_part')
  final String bodyPart;
  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutDayCopyWith<_WorkoutDay> get copyWith =>
      __$WorkoutDayCopyWithImpl<_WorkoutDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutDayToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutDay &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.timePerExercise, timePerExercise) ||
                other.timePerExercise == timePerExercise) &&
            (identical(other.caloriesBurned, caloriesBurned) ||
                other.caloriesBurned == caloriesBurned) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      day,
      sets,
      timePerExercise,
      caloriesBurned,
      bodyPart,
      const DeepCollectionEquality().hash(_exercises),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'WorkoutDay(id: $id, day: $day, sets: $sets, timePerExercise: $timePerExercise, caloriesBurned: $caloriesBurned, bodyPart: $bodyPart, exercises: $exercises, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutDayCopyWith<$Res>
    implements $WorkoutDayCopyWith<$Res> {
  factory _$WorkoutDayCopyWith(
          _WorkoutDay value, $Res Function(_WorkoutDay) _then) =
      __$WorkoutDayCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String day,
      int sets,
      @JsonKey(name: 'time_per_exercise') int timePerExercise,
      @JsonKey(name: 'calories_burned') int caloriesBurned,
      @JsonKey(name: 'body_part') String bodyPart,
      List<Exercise> exercises,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$WorkoutDayCopyWithImpl<$Res> implements _$WorkoutDayCopyWith<$Res> {
  __$WorkoutDayCopyWithImpl(this._self, this._then);

  final _WorkoutDay _self;
  final $Res Function(_WorkoutDay) _then;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? sets = null,
    Object? timePerExercise = null,
    Object? caloriesBurned = null,
    Object? bodyPart = null,
    Object? exercises = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_WorkoutDay(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      timePerExercise: null == timePerExercise
          ? _self.timePerExercise
          : timePerExercise // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesBurned: null == caloriesBurned
          ? _self.caloriesBurned
          : caloriesBurned // ignore: cast_nullable_to_non_nullable
              as int,
      bodyPart: null == bodyPart
          ? _self.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _self._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Exercise {
  int get id;
  String get name;
  @JsonKey(name: 'body_part')
  String get bodyPart;
  String get equipment;
  String get target;
  @JsonKey(name: 'gif_url')
  String get gifUrl;
  @JsonKey(name: 'secondary_muscles')
  List<String> get secondaryMuscles;
  List<String> get instructions;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<Exercise> get copyWith =>
      _$ExerciseCopyWithImpl<Exercise>(this as Exercise, _$identity);

  /// Serializes this Exercise to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Exercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.gifUrl, gifUrl) || other.gifUrl == gifUrl) &&
            const DeepCollectionEquality()
                .equals(other.secondaryMuscles, secondaryMuscles) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      bodyPart,
      equipment,
      target,
      gifUrl,
      const DeepCollectionEquality().hash(secondaryMuscles),
      const DeepCollectionEquality().hash(instructions));

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, bodyPart: $bodyPart, equipment: $equipment, target: $target, gifUrl: $gifUrl, secondaryMuscles: $secondaryMuscles, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) _then) =
      _$ExerciseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'body_part') String bodyPart,
      String equipment,
      String target,
      @JsonKey(name: 'gif_url') String gifUrl,
      @JsonKey(name: 'secondary_muscles') List<String> secondaryMuscles,
      List<String> instructions});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._self, this._then);

  final Exercise _self;
  final $Res Function(Exercise) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bodyPart = null,
    Object? equipment = null,
    Object? target = null,
    Object? gifUrl = null,
    Object? secondaryMuscles = null,
    Object? instructions = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: null == bodyPart
          ? _self.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _self.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _self.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      gifUrl: null == gifUrl
          ? _self.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryMuscles: null == secondaryMuscles
          ? _self.secondaryMuscles
          : secondaryMuscles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Exercise].
extension ExercisePatterns on Exercise {
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
    TResult Function(_Exercise value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Exercise() when $default != null:
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
    TResult Function(_Exercise value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Exercise():
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
    TResult? Function(_Exercise value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Exercise() when $default != null:
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
            int id,
            String name,
            @JsonKey(name: 'body_part') String bodyPart,
            String equipment,
            String target,
            @JsonKey(name: 'gif_url') String gifUrl,
            @JsonKey(name: 'secondary_muscles') List<String> secondaryMuscles,
            List<String> instructions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Exercise() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.bodyPart,
            _that.equipment,
            _that.target,
            _that.gifUrl,
            _that.secondaryMuscles,
            _that.instructions);
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
            int id,
            String name,
            @JsonKey(name: 'body_part') String bodyPart,
            String equipment,
            String target,
            @JsonKey(name: 'gif_url') String gifUrl,
            @JsonKey(name: 'secondary_muscles') List<String> secondaryMuscles,
            List<String> instructions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Exercise():
        return $default(
            _that.id,
            _that.name,
            _that.bodyPart,
            _that.equipment,
            _that.target,
            _that.gifUrl,
            _that.secondaryMuscles,
            _that.instructions);
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
            int id,
            String name,
            @JsonKey(name: 'body_part') String bodyPart,
            String equipment,
            String target,
            @JsonKey(name: 'gif_url') String gifUrl,
            @JsonKey(name: 'secondary_muscles') List<String> secondaryMuscles,
            List<String> instructions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Exercise() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.bodyPart,
            _that.equipment,
            _that.target,
            _that.gifUrl,
            _that.secondaryMuscles,
            _that.instructions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Exercise implements Exercise {
  _Exercise(
      {required this.id,
      required this.name,
      @JsonKey(name: 'body_part') required this.bodyPart,
      required this.equipment,
      required this.target,
      @JsonKey(name: 'gif_url') required this.gifUrl,
      @JsonKey(name: 'secondary_muscles')
      required final List<String> secondaryMuscles,
      required final List<String> instructions})
      : _secondaryMuscles = secondaryMuscles,
        _instructions = instructions;
  factory _Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'body_part')
  final String bodyPart;
  @override
  final String equipment;
  @override
  final String target;
  @override
  @JsonKey(name: 'gif_url')
  final String gifUrl;
  final List<String> _secondaryMuscles;
  @override
  @JsonKey(name: 'secondary_muscles')
  List<String> get secondaryMuscles {
    if (_secondaryMuscles is EqualUnmodifiableListView)
      return _secondaryMuscles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondaryMuscles);
  }

  final List<String> _instructions;
  @override
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExerciseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Exercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.gifUrl, gifUrl) || other.gifUrl == gifUrl) &&
            const DeepCollectionEquality()
                .equals(other._secondaryMuscles, _secondaryMuscles) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      bodyPart,
      equipment,
      target,
      gifUrl,
      const DeepCollectionEquality().hash(_secondaryMuscles),
      const DeepCollectionEquality().hash(_instructions));

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, bodyPart: $bodyPart, equipment: $equipment, target: $target, gifUrl: $gifUrl, secondaryMuscles: $secondaryMuscles, instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class _$ExerciseCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) _then) =
      __$ExerciseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'body_part') String bodyPart,
      String equipment,
      String target,
      @JsonKey(name: 'gif_url') String gifUrl,
      @JsonKey(name: 'secondary_muscles') List<String> secondaryMuscles,
      List<String> instructions});
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(this._self, this._then);

  final _Exercise _self;
  final $Res Function(_Exercise) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bodyPart = null,
    Object? equipment = null,
    Object? target = null,
    Object? gifUrl = null,
    Object? secondaryMuscles = null,
    Object? instructions = null,
  }) {
    return _then(_Exercise(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: null == bodyPart
          ? _self.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _self.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _self.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      gifUrl: null == gifUrl
          ? _self.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryMuscles: null == secondaryMuscles
          ? _self._secondaryMuscles
          : secondaryMuscles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _self._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
