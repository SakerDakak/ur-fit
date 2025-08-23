// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealthState {
  List<HealthDataPoint> get healthData;
  num get totalCalories;
  int get totalSteps;
  int get distanceInMeters;
  num get totalLitreOfWater;
  num get totalSleep;
  num get exerciseTime;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HealthStateCopyWith<HealthState> get copyWith =>
      _$HealthStateCopyWithImpl<HealthState>(this as HealthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthState &&
            const DeepCollectionEquality()
                .equals(other.healthData, healthData) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.totalLitreOfWater, totalLitreOfWater) ||
                other.totalLitreOfWater == totalLitreOfWater) &&
            (identical(other.totalSleep, totalSleep) ||
                other.totalSleep == totalSleep) &&
            (identical(other.exerciseTime, exerciseTime) ||
                other.exerciseTime == exerciseTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(healthData),
      totalCalories,
      totalSteps,
      distanceInMeters,
      totalLitreOfWater,
      totalSleep,
      exerciseTime);

  @override
  String toString() {
    return 'HealthState(healthData: $healthData, totalCalories: $totalCalories, totalSteps: $totalSteps, distanceInMeters: $distanceInMeters, totalLitreOfWater: $totalLitreOfWater, totalSleep: $totalSleep, exerciseTime: $exerciseTime)';
  }
}

/// @nodoc
abstract mixin class $HealthStateCopyWith<$Res> {
  factory $HealthStateCopyWith(
          HealthState value, $Res Function(HealthState) _then) =
      _$HealthStateCopyWithImpl;
  @useResult
  $Res call(
      {List<HealthDataPoint> healthData,
      num totalCalories,
      int totalSteps,
      int distanceInMeters,
      num totalLitreOfWater,
      num totalSleep,
      num exerciseTime});
}

/// @nodoc
class _$HealthStateCopyWithImpl<$Res> implements $HealthStateCopyWith<$Res> {
  _$HealthStateCopyWithImpl(this._self, this._then);

  final HealthState _self;
  final $Res Function(HealthState) _then;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthData = null,
    Object? totalCalories = null,
    Object? totalSteps = null,
    Object? distanceInMeters = null,
    Object? totalLitreOfWater = null,
    Object? totalSleep = null,
    Object? exerciseTime = null,
  }) {
    return _then(_self.copyWith(
      healthData: null == healthData
          ? _self.healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
      totalCalories: null == totalCalories
          ? _self.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      totalSteps: null == totalSteps
          ? _self.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      distanceInMeters: null == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int,
      totalLitreOfWater: null == totalLitreOfWater
          ? _self.totalLitreOfWater
          : totalLitreOfWater // ignore: cast_nullable_to_non_nullable
              as num,
      totalSleep: null == totalSleep
          ? _self.totalSleep
          : totalSleep // ignore: cast_nullable_to_non_nullable
              as num,
      exerciseTime: null == exerciseTime
          ? _self.exerciseTime
          : exerciseTime // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [HealthState].
extension HealthStatePatterns on HealthState {
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
    TResult Function(_HealthState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HealthState() when $default != null:
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
    TResult Function(_HealthState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthState():
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
    TResult? Function(_HealthState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthState() when $default != null:
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
            List<HealthDataPoint> healthData,
            num totalCalories,
            int totalSteps,
            int distanceInMeters,
            num totalLitreOfWater,
            num totalSleep,
            num exerciseTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HealthState() when $default != null:
        return $default(
            _that.healthData,
            _that.totalCalories,
            _that.totalSteps,
            _that.distanceInMeters,
            _that.totalLitreOfWater,
            _that.totalSleep,
            _that.exerciseTime);
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
            List<HealthDataPoint> healthData,
            num totalCalories,
            int totalSteps,
            int distanceInMeters,
            num totalLitreOfWater,
            num totalSleep,
            num exerciseTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthState():
        return $default(
            _that.healthData,
            _that.totalCalories,
            _that.totalSteps,
            _that.distanceInMeters,
            _that.totalLitreOfWater,
            _that.totalSleep,
            _that.exerciseTime);
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
            List<HealthDataPoint> healthData,
            num totalCalories,
            int totalSteps,
            int distanceInMeters,
            num totalLitreOfWater,
            num totalSleep,
            num exerciseTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthState() when $default != null:
        return $default(
            _that.healthData,
            _that.totalCalories,
            _that.totalSteps,
            _that.distanceInMeters,
            _that.totalLitreOfWater,
            _that.totalSleep,
            _that.exerciseTime);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HealthState implements HealthState {
  const _HealthState(
      {final List<HealthDataPoint> healthData = const [],
      this.totalCalories = 0,
      this.totalSteps = 0,
      this.distanceInMeters = 0,
      this.totalLitreOfWater = 0,
      this.totalSleep = 0,
      this.exerciseTime = 0})
      : _healthData = healthData;

  final List<HealthDataPoint> _healthData;
  @override
  @JsonKey()
  List<HealthDataPoint> get healthData {
    if (_healthData is EqualUnmodifiableListView) return _healthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthData);
  }

  @override
  @JsonKey()
  final num totalCalories;
  @override
  @JsonKey()
  final int totalSteps;
  @override
  @JsonKey()
  final int distanceInMeters;
  @override
  @JsonKey()
  final num totalLitreOfWater;
  @override
  @JsonKey()
  final num totalSleep;
  @override
  @JsonKey()
  final num exerciseTime;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HealthStateCopyWith<_HealthState> get copyWith =>
      __$HealthStateCopyWithImpl<_HealthState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HealthState &&
            const DeepCollectionEquality()
                .equals(other._healthData, _healthData) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            (identical(other.totalLitreOfWater, totalLitreOfWater) ||
                other.totalLitreOfWater == totalLitreOfWater) &&
            (identical(other.totalSleep, totalSleep) ||
                other.totalSleep == totalSleep) &&
            (identical(other.exerciseTime, exerciseTime) ||
                other.exerciseTime == exerciseTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_healthData),
      totalCalories,
      totalSteps,
      distanceInMeters,
      totalLitreOfWater,
      totalSleep,
      exerciseTime);

  @override
  String toString() {
    return 'HealthState(healthData: $healthData, totalCalories: $totalCalories, totalSteps: $totalSteps, distanceInMeters: $distanceInMeters, totalLitreOfWater: $totalLitreOfWater, totalSleep: $totalSleep, exerciseTime: $exerciseTime)';
  }
}

/// @nodoc
abstract mixin class _$HealthStateCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory _$HealthStateCopyWith(
          _HealthState value, $Res Function(_HealthState) _then) =
      __$HealthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<HealthDataPoint> healthData,
      num totalCalories,
      int totalSteps,
      int distanceInMeters,
      num totalLitreOfWater,
      num totalSleep,
      num exerciseTime});
}

/// @nodoc
class __$HealthStateCopyWithImpl<$Res> implements _$HealthStateCopyWith<$Res> {
  __$HealthStateCopyWithImpl(this._self, this._then);

  final _HealthState _self;
  final $Res Function(_HealthState) _then;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? healthData = null,
    Object? totalCalories = null,
    Object? totalSteps = null,
    Object? distanceInMeters = null,
    Object? totalLitreOfWater = null,
    Object? totalSleep = null,
    Object? exerciseTime = null,
  }) {
    return _then(_HealthState(
      healthData: null == healthData
          ? _self._healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
      totalCalories: null == totalCalories
          ? _self.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      totalSteps: null == totalSteps
          ? _self.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      distanceInMeters: null == distanceInMeters
          ? _self.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int,
      totalLitreOfWater: null == totalLitreOfWater
          ? _self.totalLitreOfWater
          : totalLitreOfWater // ignore: cast_nullable_to_non_nullable
              as num,
      totalSleep: null == totalSleep
          ? _self.totalSleep
          : totalSleep // ignore: cast_nullable_to_non_nullable
              as num,
      exerciseTime: null == exerciseTime
          ? _self.exerciseTime
          : exerciseTime // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
