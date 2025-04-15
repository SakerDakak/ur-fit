// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HealthState {
  List<HealthDataPoint> get healthData => throw _privateConstructorUsedError;
  num get totalCalories => throw _privateConstructorUsedError;
  int get totalSteps => throw _privateConstructorUsedError;
  int get distanceInMeters => throw _privateConstructorUsedError;
  num get totalLitreOfWater => throw _privateConstructorUsedError;
  num get totalSleep => throw _privateConstructorUsedError;
  num get exerciseTime => throw _privateConstructorUsedError;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthStateCopyWith<HealthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthStateCopyWith<$Res> {
  factory $HealthStateCopyWith(
          HealthState value, $Res Function(HealthState) then) =
      _$HealthStateCopyWithImpl<$Res, HealthState>;
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
class _$HealthStateCopyWithImpl<$Res, $Val extends HealthState>
    implements $HealthStateCopyWith<$Res> {
  _$HealthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      healthData: null == healthData
          ? _value.healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      distanceInMeters: null == distanceInMeters
          ? _value.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int,
      totalLitreOfWater: null == totalLitreOfWater
          ? _value.totalLitreOfWater
          : totalLitreOfWater // ignore: cast_nullable_to_non_nullable
              as num,
      totalSleep: null == totalSleep
          ? _value.totalSleep
          : totalSleep // ignore: cast_nullable_to_non_nullable
              as num,
      exerciseTime: null == exerciseTime
          ? _value.exerciseTime
          : exerciseTime // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthStateImplCopyWith<$Res>
    implements $HealthStateCopyWith<$Res> {
  factory _$$HealthStateImplCopyWith(
          _$HealthStateImpl value, $Res Function(_$HealthStateImpl) then) =
      __$$HealthStateImplCopyWithImpl<$Res>;
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
class __$$HealthStateImplCopyWithImpl<$Res>
    extends _$HealthStateCopyWithImpl<$Res, _$HealthStateImpl>
    implements _$$HealthStateImplCopyWith<$Res> {
  __$$HealthStateImplCopyWithImpl(
      _$HealthStateImpl _value, $Res Function(_$HealthStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$HealthStateImpl(
      healthData: null == healthData
          ? _value._healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      distanceInMeters: null == distanceInMeters
          ? _value.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int,
      totalLitreOfWater: null == totalLitreOfWater
          ? _value.totalLitreOfWater
          : totalLitreOfWater // ignore: cast_nullable_to_non_nullable
              as num,
      totalSleep: null == totalSleep
          ? _value.totalSleep
          : totalSleep // ignore: cast_nullable_to_non_nullable
              as num,
      exerciseTime: null == exerciseTime
          ? _value.exerciseTime
          : exerciseTime // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$HealthStateImpl implements _HealthState {
  const _$HealthStateImpl(
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

  @override
  String toString() {
    return 'HealthState(healthData: $healthData, totalCalories: $totalCalories, totalSteps: $totalSteps, distanceInMeters: $distanceInMeters, totalLitreOfWater: $totalLitreOfWater, totalSleep: $totalSleep, exerciseTime: $exerciseTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthStateImpl &&
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

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthStateImplCopyWith<_$HealthStateImpl> get copyWith =>
      __$$HealthStateImplCopyWithImpl<_$HealthStateImpl>(this, _$identity);
}

abstract class _HealthState implements HealthState {
  const factory _HealthState(
      {final List<HealthDataPoint> healthData,
      final num totalCalories,
      final int totalSteps,
      final int distanceInMeters,
      final num totalLitreOfWater,
      final num totalSleep,
      final num exerciseTime}) = _$HealthStateImpl;

  @override
  List<HealthDataPoint> get healthData;
  @override
  num get totalCalories;
  @override
  int get totalSteps;
  @override
  int get distanceInMeters;
  @override
  num get totalLitreOfWater;
  @override
  num get totalSleep;
  @override
  num get exerciseTime;

  /// Create a copy of HealthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthStateImplCopyWith<_$HealthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
