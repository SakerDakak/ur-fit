// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutState {
  List<WorkoutPlan> get allPlans;
  int get progressValue;
  int get selectedDay;
  String get errMessage;
  bool get isPlaying;
  Map<int, int> get remainingSets;
  RequestState get getWorkOutPlanState;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutStateCopyWith<WorkoutState> get copyWith =>
      _$WorkoutStateCopyWithImpl<WorkoutState>(
          this as WorkoutState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutState &&
            const DeepCollectionEquality().equals(other.allPlans, allPlans) &&
            (identical(other.progressValue, progressValue) ||
                other.progressValue == progressValue) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            const DeepCollectionEquality()
                .equals(other.remainingSets, remainingSets) &&
            (identical(other.getWorkOutPlanState, getWorkOutPlanState) ||
                other.getWorkOutPlanState == getWorkOutPlanState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allPlans),
      progressValue,
      selectedDay,
      errMessage,
      isPlaying,
      const DeepCollectionEquality().hash(remainingSets),
      getWorkOutPlanState);

  @override
  String toString() {
    return 'WorkoutState(allPlans: $allPlans, progressValue: $progressValue, selectedDay: $selectedDay, errMessage: $errMessage, isPlaying: $isPlaying, remainingSets: $remainingSets, getWorkOutPlanState: $getWorkOutPlanState)';
  }
}

/// @nodoc
abstract mixin class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) _then) =
      _$WorkoutStateCopyWithImpl;
  @useResult
  $Res call(
      {List<WorkoutPlan> allPlans,
      int progressValue,
      int selectedDay,
      String errMessage,
      bool isPlaying,
      Map<int, int> remainingSets,
      RequestState getWorkOutPlanState});
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res> implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._self, this._then);

  final WorkoutState _self;
  final $Res Function(WorkoutState) _then;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allPlans = null,
    Object? progressValue = null,
    Object? selectedDay = null,
    Object? errMessage = null,
    Object? isPlaying = null,
    Object? remainingSets = null,
    Object? getWorkOutPlanState = null,
  }) {
    return _then(_self.copyWith(
      allPlans: null == allPlans
          ? _self.allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPlan>,
      progressValue: null == progressValue
          ? _self.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as int,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isPlaying: null == isPlaying
          ? _self.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingSets: null == remainingSets
          ? _self.remainingSets
          : remainingSets // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      getWorkOutPlanState: null == getWorkOutPlanState
          ? _self.getWorkOutPlanState
          : getWorkOutPlanState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkoutState].
extension WorkoutStatePatterns on WorkoutState {
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
    TResult Function(_WorkoutState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutState() when $default != null:
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
    TResult Function(_WorkoutState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutState():
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
    TResult? Function(_WorkoutState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutState() when $default != null:
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
            List<WorkoutPlan> allPlans,
            int progressValue,
            int selectedDay,
            String errMessage,
            bool isPlaying,
            Map<int, int> remainingSets,
            RequestState getWorkOutPlanState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutState() when $default != null:
        return $default(
            _that.allPlans,
            _that.progressValue,
            _that.selectedDay,
            _that.errMessage,
            _that.isPlaying,
            _that.remainingSets,
            _that.getWorkOutPlanState);
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
            List<WorkoutPlan> allPlans,
            int progressValue,
            int selectedDay,
            String errMessage,
            bool isPlaying,
            Map<int, int> remainingSets,
            RequestState getWorkOutPlanState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutState():
        return $default(
            _that.allPlans,
            _that.progressValue,
            _that.selectedDay,
            _that.errMessage,
            _that.isPlaying,
            _that.remainingSets,
            _that.getWorkOutPlanState);
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
            List<WorkoutPlan> allPlans,
            int progressValue,
            int selectedDay,
            String errMessage,
            bool isPlaying,
            Map<int, int> remainingSets,
            RequestState getWorkOutPlanState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutState() when $default != null:
        return $default(
            _that.allPlans,
            _that.progressValue,
            _that.selectedDay,
            _that.errMessage,
            _that.isPlaying,
            _that.remainingSets,
            _that.getWorkOutPlanState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WorkoutState implements WorkoutState {
  const _WorkoutState(
      {final List<WorkoutPlan> allPlans = const [],
      this.progressValue = 1,
      this.selectedDay = 0,
      this.errMessage = '',
      this.isPlaying = false,
      final Map<int, int> remainingSets = const {},
      this.getWorkOutPlanState = RequestState.initial})
      : _allPlans = allPlans,
        _remainingSets = remainingSets;

  final List<WorkoutPlan> _allPlans;
  @override
  @JsonKey()
  List<WorkoutPlan> get allPlans {
    if (_allPlans is EqualUnmodifiableListView) return _allPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPlans);
  }

  @override
  @JsonKey()
  final int progressValue;
  @override
  @JsonKey()
  final int selectedDay;
  @override
  @JsonKey()
  final String errMessage;
  @override
  @JsonKey()
  final bool isPlaying;
  final Map<int, int> _remainingSets;
  @override
  @JsonKey()
  Map<int, int> get remainingSets {
    if (_remainingSets is EqualUnmodifiableMapView) return _remainingSets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_remainingSets);
  }

  @override
  @JsonKey()
  final RequestState getWorkOutPlanState;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith =>
      __$WorkoutStateCopyWithImpl<_WorkoutState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutState &&
            const DeepCollectionEquality().equals(other._allPlans, _allPlans) &&
            (identical(other.progressValue, progressValue) ||
                other.progressValue == progressValue) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            const DeepCollectionEquality()
                .equals(other._remainingSets, _remainingSets) &&
            (identical(other.getWorkOutPlanState, getWorkOutPlanState) ||
                other.getWorkOutPlanState == getWorkOutPlanState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allPlans),
      progressValue,
      selectedDay,
      errMessage,
      isPlaying,
      const DeepCollectionEquality().hash(_remainingSets),
      getWorkOutPlanState);

  @override
  String toString() {
    return 'WorkoutState(allPlans: $allPlans, progressValue: $progressValue, selectedDay: $selectedDay, errMessage: $errMessage, isPlaying: $isPlaying, remainingSets: $remainingSets, getWorkOutPlanState: $getWorkOutPlanState)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutStateCopyWith<$Res>
    implements $WorkoutStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(
          _WorkoutState value, $Res Function(_WorkoutState) _then) =
      __$WorkoutStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<WorkoutPlan> allPlans,
      int progressValue,
      int selectedDay,
      String errMessage,
      bool isPlaying,
      Map<int, int> remainingSets,
      RequestState getWorkOutPlanState});
}

/// @nodoc
class __$WorkoutStateCopyWithImpl<$Res>
    implements _$WorkoutStateCopyWith<$Res> {
  __$WorkoutStateCopyWithImpl(this._self, this._then);

  final _WorkoutState _self;
  final $Res Function(_WorkoutState) _then;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allPlans = null,
    Object? progressValue = null,
    Object? selectedDay = null,
    Object? errMessage = null,
    Object? isPlaying = null,
    Object? remainingSets = null,
    Object? getWorkOutPlanState = null,
  }) {
    return _then(_WorkoutState(
      allPlans: null == allPlans
          ? _self._allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPlan>,
      progressValue: null == progressValue
          ? _self.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDay: null == selectedDay
          ? _self.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as int,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isPlaying: null == isPlaying
          ? _self.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingSets: null == remainingSets
          ? _self._remainingSets
          : remainingSets // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      getWorkOutPlanState: null == getWorkOutPlanState
          ? _self.getWorkOutPlanState
          : getWorkOutPlanState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

// dart format on
