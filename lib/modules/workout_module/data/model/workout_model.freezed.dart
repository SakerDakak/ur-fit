// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutPlan _$WorkoutPlanFromJson(Map<String, dynamic> json) {
  return _WorkoutPlan.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPlan {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_days')
  List<WorkoutDay> get planDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WorkoutPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutPlanCopyWith<WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanCopyWith<$Res> {
  factory $WorkoutPlanCopyWith(
          WorkoutPlan value, $Res Function(WorkoutPlan) then) =
      _$WorkoutPlanCopyWithImpl<$Res, WorkoutPlan>;
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
class _$WorkoutPlanCopyWithImpl<$Res, $Val extends WorkoutPlan>
    implements $WorkoutPlanCopyWith<$Res> {
  _$WorkoutPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      planDays: null == planDays
          ? _value.planDays
          : planDays // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDay>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutPlanImplCopyWith<$Res>
    implements $WorkoutPlanCopyWith<$Res> {
  factory _$$WorkoutPlanImplCopyWith(
          _$WorkoutPlanImpl value, $Res Function(_$WorkoutPlanImpl) then) =
      __$$WorkoutPlanImplCopyWithImpl<$Res>;
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
class __$$WorkoutPlanImplCopyWithImpl<$Res>
    extends _$WorkoutPlanCopyWithImpl<$Res, _$WorkoutPlanImpl>
    implements _$$WorkoutPlanImplCopyWith<$Res> {
  __$$WorkoutPlanImplCopyWithImpl(
      _$WorkoutPlanImpl _value, $Res Function(_$WorkoutPlanImpl) _then)
      : super(_value, _then);

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
    return _then(_$WorkoutPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      planDays: null == planDays
          ? _value._planDays
          : planDays // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDay>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutPlanImpl implements _WorkoutPlan {
  _$WorkoutPlanImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.name,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'plan_days') required final List<WorkoutDay> planDays,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _planDays = planDays;

  factory _$WorkoutPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPlanImplFromJson(json);

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

  @override
  String toString() {
    return 'WorkoutPlan(id: $id, userId: $userId, name: $name, startDate: $startDate, endDate: $endDate, planDays: $planDays, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPlanImpl &&
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

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPlanImplCopyWith<_$WorkoutPlanImpl> get copyWith =>
      __$$WorkoutPlanImplCopyWithImpl<_$WorkoutPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPlanImplToJson(
      this,
    );
  }
}

abstract class _WorkoutPlan implements WorkoutPlan {
  factory _WorkoutPlan(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          required final String? name,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          @JsonKey(name: 'plan_days') required final List<WorkoutDay> planDays,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$WorkoutPlanImpl;

  factory _WorkoutPlan.fromJson(Map<String, dynamic> json) =
      _$WorkoutPlanImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'plan_days')
  List<WorkoutDay> get planDays;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutPlanImplCopyWith<_$WorkoutPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutDay _$WorkoutDayFromJson(Map<String, dynamic> json) {
  return _WorkoutDay.fromJson(json);
}

/// @nodoc
mixin _$WorkoutDay {
  int get id => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_per_exercise')
  int get timePerExercise => throw _privateConstructorUsedError;
  @JsonKey(name: 'calories_burned')
  int get caloriesBurned => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_part')
  String get bodyPart => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WorkoutDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutDayCopyWith<WorkoutDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDayCopyWith<$Res> {
  factory $WorkoutDayCopyWith(
          WorkoutDay value, $Res Function(WorkoutDay) then) =
      _$WorkoutDayCopyWithImpl<$Res, WorkoutDay>;
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
class _$WorkoutDayCopyWithImpl<$Res, $Val extends WorkoutDay>
    implements $WorkoutDayCopyWith<$Res> {
  _$WorkoutDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      timePerExercise: null == timePerExercise
          ? _value.timePerExercise
          : timePerExercise // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesBurned: null == caloriesBurned
          ? _value.caloriesBurned
          : caloriesBurned // ignore: cast_nullable_to_non_nullable
              as int,
      bodyPart: null == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutDayImplCopyWith<$Res>
    implements $WorkoutDayCopyWith<$Res> {
  factory _$$WorkoutDayImplCopyWith(
          _$WorkoutDayImpl value, $Res Function(_$WorkoutDayImpl) then) =
      __$$WorkoutDayImplCopyWithImpl<$Res>;
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
class __$$WorkoutDayImplCopyWithImpl<$Res>
    extends _$WorkoutDayCopyWithImpl<$Res, _$WorkoutDayImpl>
    implements _$$WorkoutDayImplCopyWith<$Res> {
  __$$WorkoutDayImplCopyWithImpl(
      _$WorkoutDayImpl _value, $Res Function(_$WorkoutDayImpl) _then)
      : super(_value, _then);

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
    return _then(_$WorkoutDayImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as int,
      timePerExercise: null == timePerExercise
          ? _value.timePerExercise
          : timePerExercise // ignore: cast_nullable_to_non_nullable
              as int,
      caloriesBurned: null == caloriesBurned
          ? _value.caloriesBurned
          : caloriesBurned // ignore: cast_nullable_to_non_nullable
              as int,
      bodyPart: null == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutDayImpl implements _WorkoutDay {
  _$WorkoutDayImpl(
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

  factory _$WorkoutDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutDayImplFromJson(json);

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

  @override
  String toString() {
    return 'WorkoutDay(id: $id, day: $day, sets: $sets, timePerExercise: $timePerExercise, caloriesBurned: $caloriesBurned, bodyPart: $bodyPart, exercises: $exercises, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutDayImpl &&
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

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutDayImplCopyWith<_$WorkoutDayImpl> get copyWith =>
      __$$WorkoutDayImplCopyWithImpl<_$WorkoutDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutDayImplToJson(
      this,
    );
  }
}

abstract class _WorkoutDay implements WorkoutDay {
  factory _WorkoutDay(
      {required final int id,
      required final String day,
      required final int sets,
      @JsonKey(name: 'time_per_exercise') required final int timePerExercise,
      @JsonKey(name: 'calories_burned') required final int caloriesBurned,
      @JsonKey(name: 'body_part') required final String bodyPart,
      required final List<Exercise> exercises,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at')
      required final String updatedAt}) = _$WorkoutDayImpl;

  factory _WorkoutDay.fromJson(Map<String, dynamic> json) =
      _$WorkoutDayImpl.fromJson;

  @override
  int get id;
  @override
  String get day;
  @override
  int get sets;
  @override
  @JsonKey(name: 'time_per_exercise')
  int get timePerExercise;
  @override
  @JsonKey(name: 'calories_burned')
  int get caloriesBurned;
  @override
  @JsonKey(name: 'body_part')
  String get bodyPart;
  @override
  List<Exercise> get exercises;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutDayImplCopyWith<_$WorkoutDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_part')
  String get bodyPart => throw _privateConstructorUsedError;
  String get equipment => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  @JsonKey(name: 'gif_url')
  String get gifUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_muscles')
  List<String> get secondaryMuscles => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;

  /// Serializes this Exercise to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
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
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: null == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      gifUrl: null == gifUrl
          ? _value.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryMuscles: null == secondaryMuscles
          ? _value.secondaryMuscles
          : secondaryMuscles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
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
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

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
    return _then(_$ExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bodyPart: null == bodyPart
          ? _value.bodyPart
          : bodyPart // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      gifUrl: null == gifUrl
          ? _value.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryMuscles: null == secondaryMuscles
          ? _value._secondaryMuscles
          : secondaryMuscles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  _$ExerciseImpl(
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

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

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

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, bodyPart: $bodyPart, equipment: $equipment, target: $target, gifUrl: $gifUrl, secondaryMuscles: $secondaryMuscles, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
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

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
      {required final int id,
      required final String name,
      @JsonKey(name: 'body_part') required final String bodyPart,
      required final String equipment,
      required final String target,
      @JsonKey(name: 'gif_url') required final String gifUrl,
      @JsonKey(name: 'secondary_muscles')
      required final List<String> secondaryMuscles,
      required final List<String> instructions}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'body_part')
  String get bodyPart;
  @override
  String get equipment;
  @override
  String get target;
  @override
  @JsonKey(name: 'gif_url')
  String get gifUrl;
  @override
  @JsonKey(name: 'secondary_muscles')
  List<String> get secondaryMuscles;
  @override
  List<String> get instructions;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
