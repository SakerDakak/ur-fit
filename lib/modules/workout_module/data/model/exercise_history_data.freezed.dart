// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_history_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExerciseHistoryData {
  num get calories;
  num get times;
  num get sets;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseHistoryDataCopyWith<ExerciseHistoryData> get copyWith =>
      _$ExerciseHistoryDataCopyWithImpl<ExerciseHistoryData>(
          this as ExerciseHistoryData, _$identity);

  /// Serializes this ExerciseHistoryData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExerciseHistoryData &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.sets, sets) || other.sets == sets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, times, sets);

  @override
  String toString() {
    return 'ExerciseHistoryData(calories: $calories, times: $times, sets: $sets)';
  }
}

/// @nodoc
abstract mixin class $ExerciseHistoryDataCopyWith<$Res> {
  factory $ExerciseHistoryDataCopyWith(
          ExerciseHistoryData value, $Res Function(ExerciseHistoryData) _then) =
      _$ExerciseHistoryDataCopyWithImpl;
  @useResult
  $Res call({num calories, num times, num sets});
}

/// @nodoc
class _$ExerciseHistoryDataCopyWithImpl<$Res>
    implements $ExerciseHistoryDataCopyWith<$Res> {
  _$ExerciseHistoryDataCopyWithImpl(this._self, this._then);

  final ExerciseHistoryData _self;
  final $Res Function(ExerciseHistoryData) _then;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? times = null,
    Object? sets = null,
  }) {
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _self.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExerciseHistoryData].
extension ExerciseHistoryDataPatterns on ExerciseHistoryData {
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
    TResult Function(_ExerciseHistoryData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExerciseHistoryData() when $default != null:
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
    TResult Function(_ExerciseHistoryData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseHistoryData():
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
    TResult? Function(_ExerciseHistoryData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseHistoryData() when $default != null:
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
    TResult Function(num calories, num times, num sets)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExerciseHistoryData() when $default != null:
        return $default(_that.calories, _that.times, _that.sets);
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
    TResult Function(num calories, num times, num sets) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseHistoryData():
        return $default(_that.calories, _that.times, _that.sets);
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
    TResult? Function(num calories, num times, num sets)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExerciseHistoryData() when $default != null:
        return $default(_that.calories, _that.times, _that.sets);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExerciseHistoryData implements ExerciseHistoryData {
  const _ExerciseHistoryData(
      {required this.calories, required this.times, required this.sets});
  factory _ExerciseHistoryData.fromJson(Map<String, dynamic> json) =>
      _$ExerciseHistoryDataFromJson(json);

  @override
  final num calories;
  @override
  final num times;
  @override
  final num sets;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExerciseHistoryDataCopyWith<_ExerciseHistoryData> get copyWith =>
      __$ExerciseHistoryDataCopyWithImpl<_ExerciseHistoryData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExerciseHistoryDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExerciseHistoryData &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.sets, sets) || other.sets == sets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, times, sets);

  @override
  String toString() {
    return 'ExerciseHistoryData(calories: $calories, times: $times, sets: $sets)';
  }
}

/// @nodoc
abstract mixin class _$ExerciseHistoryDataCopyWith<$Res>
    implements $ExerciseHistoryDataCopyWith<$Res> {
  factory _$ExerciseHistoryDataCopyWith(_ExerciseHistoryData value,
          $Res Function(_ExerciseHistoryData) _then) =
      __$ExerciseHistoryDataCopyWithImpl;
  @override
  @useResult
  $Res call({num calories, num times, num sets});
}

/// @nodoc
class __$ExerciseHistoryDataCopyWithImpl<$Res>
    implements _$ExerciseHistoryDataCopyWith<$Res> {
  __$ExerciseHistoryDataCopyWithImpl(this._self, this._then);

  final _ExerciseHistoryData _self;
  final $Res Function(_ExerciseHistoryData) _then;

  /// Create a copy of ExerciseHistoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? times = null,
    Object? sets = null,
  }) {
    return _then(_ExerciseHistoryData(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _self.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
