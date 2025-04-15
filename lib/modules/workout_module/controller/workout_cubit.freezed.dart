// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutState {
  List<WorkoutPlan> get allPlans => throw _privateConstructorUsedError;
  int get progressValue => throw _privateConstructorUsedError;
  int get selectedDay => throw _privateConstructorUsedError;
  String get errMessage => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  Map<int, int> get remainingSets => throw _privateConstructorUsedError;
  RequestState get getWorkOutPlanState => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutStateCopyWith<WorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res, WorkoutState>;
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
class _$WorkoutStateCopyWithImpl<$Res, $Val extends WorkoutState>
    implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      allPlans: null == allPlans
          ? _value.allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPlan>,
      progressValue: null == progressValue
          ? _value.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as int,
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingSets: null == remainingSets
          ? _value.remainingSets
          : remainingSets // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      getWorkOutPlanState: null == getWorkOutPlanState
          ? _value.getWorkOutPlanState
          : getWorkOutPlanState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutStateImplCopyWith<$Res>
    implements $WorkoutStateCopyWith<$Res> {
  factory _$$WorkoutStateImplCopyWith(
          _$WorkoutStateImpl value, $Res Function(_$WorkoutStateImpl) then) =
      __$$WorkoutStateImplCopyWithImpl<$Res>;
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
class __$$WorkoutStateImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$WorkoutStateImpl>
    implements _$$WorkoutStateImplCopyWith<$Res> {
  __$$WorkoutStateImplCopyWithImpl(
      _$WorkoutStateImpl _value, $Res Function(_$WorkoutStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$WorkoutStateImpl(
      allPlans: null == allPlans
          ? _value._allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<WorkoutPlan>,
      progressValue: null == progressValue
          ? _value.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as int,
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      remainingSets: null == remainingSets
          ? _value._remainingSets
          : remainingSets // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      getWorkOutPlanState: null == getWorkOutPlanState
          ? _value.getWorkOutPlanState
          : getWorkOutPlanState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$WorkoutStateImpl implements _WorkoutState {
  const _$WorkoutStateImpl(
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

  @override
  String toString() {
    return 'WorkoutState(allPlans: $allPlans, progressValue: $progressValue, selectedDay: $selectedDay, errMessage: $errMessage, isPlaying: $isPlaying, remainingSets: $remainingSets, getWorkOutPlanState: $getWorkOutPlanState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutStateImpl &&
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

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutStateImplCopyWith<_$WorkoutStateImpl> get copyWith =>
      __$$WorkoutStateImplCopyWithImpl<_$WorkoutStateImpl>(this, _$identity);
}

abstract class _WorkoutState implements WorkoutState {
  const factory _WorkoutState(
      {final List<WorkoutPlan> allPlans,
      final int progressValue,
      final int selectedDay,
      final String errMessage,
      final bool isPlaying,
      final Map<int, int> remainingSets,
      final RequestState getWorkOutPlanState}) = _$WorkoutStateImpl;

  @override
  List<WorkoutPlan> get allPlans;
  @override
  int get progressValue;
  @override
  int get selectedDay;
  @override
  String get errMessage;
  @override
  bool get isPlaying;
  @override
  Map<int, int> get remainingSets;
  @override
  RequestState get getWorkOutPlanState;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutStateImplCopyWith<_$WorkoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
