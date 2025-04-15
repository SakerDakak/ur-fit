// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseHistoryData _$ExerciseHistoryDataFromJson(Map<String, dynamic> json) {
  return _ExerciseHistoryData.fromJson(json);
}

/// @nodoc
mixin _$ExerciseHistoryData {
  num get calories => throw _privateConstructorUsedError;
  num get times => throw _privateConstructorUsedError;
  num get sets => throw _privateConstructorUsedError;

  /// Serializes this ExerciseHistoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseHistoryDataCopyWith<ExerciseHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseHistoryDataCopyWith<$Res> {
  factory $ExerciseHistoryDataCopyWith(
          ExerciseHistoryData value, $Res Function(ExerciseHistoryData) then) =
      _$ExerciseHistoryDataCopyWithImpl<$Res, ExerciseHistoryData>;
  @useResult
  $Res call({num calories, num times, num sets});
}

/// @nodoc
class _$ExerciseHistoryDataCopyWithImpl<$Res, $Val extends ExerciseHistoryData>
    implements $ExerciseHistoryDataCopyWith<$Res> {
  _$ExerciseHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? times = null,
    Object? sets = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseHistoryDataImplCopyWith<$Res>
    implements $ExerciseHistoryDataCopyWith<$Res> {
  factory _$$ExerciseHistoryDataImplCopyWith(_$ExerciseHistoryDataImpl value,
          $Res Function(_$ExerciseHistoryDataImpl) then) =
      __$$ExerciseHistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num calories, num times, num sets});
}

/// @nodoc
class __$$ExerciseHistoryDataImplCopyWithImpl<$Res>
    extends _$ExerciseHistoryDataCopyWithImpl<$Res, _$ExerciseHistoryDataImpl>
    implements _$$ExerciseHistoryDataImplCopyWith<$Res> {
  __$$ExerciseHistoryDataImplCopyWithImpl(_$ExerciseHistoryDataImpl _value,
      $Res Function(_$ExerciseHistoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? times = null,
    Object? sets = null,
  }) {
    return _then(_$ExerciseHistoryDataImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseHistoryDataImpl implements _ExerciseHistoryData {
  const _$ExerciseHistoryDataImpl(
      {required this.calories, required this.times, required this.sets});

  factory _$ExerciseHistoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseHistoryDataImplFromJson(json);

  @override
  final num calories;
  @override
  final num times;
  @override
  final num sets;

  @override
  String toString() {
    return 'ExerciseHistoryData(calories: $calories, times: $times, sets: $sets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseHistoryDataImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.sets, sets) || other.sets == sets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, times, sets);

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseHistoryDataImplCopyWith<_$ExerciseHistoryDataImpl> get copyWith =>
      __$$ExerciseHistoryDataImplCopyWithImpl<_$ExerciseHistoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseHistoryDataImplToJson(
      this,
    );
  }
}

abstract class _ExerciseHistoryData implements ExerciseHistoryData {
  const factory _ExerciseHistoryData(
      {required final num calories,
      required final num times,
      required final num sets}) = _$ExerciseHistoryDataImpl;

  factory _ExerciseHistoryData.fromJson(Map<String, dynamic> json) =
      _$ExerciseHistoryDataImpl.fromJson;

  @override
  num get calories;
  @override
  num get times;
  @override
  num get sets;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseHistoryDataImplCopyWith<_$ExerciseHistoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
