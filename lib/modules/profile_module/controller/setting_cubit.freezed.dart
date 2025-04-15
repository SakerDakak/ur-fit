// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingState {
  PlanHistoryModel? get planHistoryModel => throw _privateConstructorUsedError;
  num get totalCalories => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Nutrients? get nutrition => throw _privateConstructorUsedError;
  ExerciseHistoryData? get exerciseHistoryData =>
      throw _privateConstructorUsedError;
  StaticPageModel? get staticPageModel => throw _privateConstructorUsedError;
  RequestState get getPlanDataState => throw _privateConstructorUsedError;
  RequestState get getPlanHistoryState => throw _privateConstructorUsedError;
  RequestState get getStaticPageState => throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {PlanHistoryModel? planHistoryModel,
      num totalCalories,
      String errorMessage,
      Nutrients? nutrition,
      ExerciseHistoryData? exerciseHistoryData,
      StaticPageModel? staticPageModel,
      RequestState getPlanDataState,
      RequestState getPlanHistoryState,
      RequestState getStaticPageState});

  $PlanHistoryModelCopyWith<$Res>? get planHistoryModel;
  $NutrientsCopyWith<$Res>? get nutrition;
  $ExerciseHistoryDataCopyWith<$Res>? get exerciseHistoryData;
  $StaticPageModelCopyWith<$Res>? get staticPageModel;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planHistoryModel = freezed,
    Object? totalCalories = null,
    Object? errorMessage = null,
    Object? nutrition = freezed,
    Object? exerciseHistoryData = freezed,
    Object? staticPageModel = freezed,
    Object? getPlanDataState = null,
    Object? getPlanHistoryState = null,
    Object? getStaticPageState = null,
  }) {
    return _then(_value.copyWith(
      planHistoryModel: freezed == planHistoryModel
          ? _value.planHistoryModel
          : planHistoryModel // ignore: cast_nullable_to_non_nullable
              as PlanHistoryModel?,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: freezed == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrients?,
      exerciseHistoryData: freezed == exerciseHistoryData
          ? _value.exerciseHistoryData
          : exerciseHistoryData // ignore: cast_nullable_to_non_nullable
              as ExerciseHistoryData?,
      staticPageModel: freezed == staticPageModel
          ? _value.staticPageModel
          : staticPageModel // ignore: cast_nullable_to_non_nullable
              as StaticPageModel?,
      getPlanDataState: null == getPlanDataState
          ? _value.getPlanDataState
          : getPlanDataState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPlanHistoryState: null == getPlanHistoryState
          ? _value.getPlanHistoryState
          : getPlanHistoryState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getStaticPageState: null == getStaticPageState
          ? _value.getStaticPageState
          : getStaticPageState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ) as $Val);
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanHistoryModelCopyWith<$Res>? get planHistoryModel {
    if (_value.planHistoryModel == null) {
      return null;
    }

    return $PlanHistoryModelCopyWith<$Res>(_value.planHistoryModel!, (value) {
      return _then(_value.copyWith(planHistoryModel: value) as $Val);
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<$Res>? get nutrition {
    if (_value.nutrition == null) {
      return null;
    }

    return $NutrientsCopyWith<$Res>(_value.nutrition!, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseHistoryDataCopyWith<$Res>? get exerciseHistoryData {
    if (_value.exerciseHistoryData == null) {
      return null;
    }

    return $ExerciseHistoryDataCopyWith<$Res>(_value.exerciseHistoryData!,
        (value) {
      return _then(_value.copyWith(exerciseHistoryData: value) as $Val);
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaticPageModelCopyWith<$Res>? get staticPageModel {
    if (_value.staticPageModel == null) {
      return null;
    }

    return $StaticPageModelCopyWith<$Res>(_value.staticPageModel!, (value) {
      return _then(_value.copyWith(staticPageModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlanHistoryModel? planHistoryModel,
      num totalCalories,
      String errorMessage,
      Nutrients? nutrition,
      ExerciseHistoryData? exerciseHistoryData,
      StaticPageModel? staticPageModel,
      RequestState getPlanDataState,
      RequestState getPlanHistoryState,
      RequestState getStaticPageState});

  @override
  $PlanHistoryModelCopyWith<$Res>? get planHistoryModel;
  @override
  $NutrientsCopyWith<$Res>? get nutrition;
  @override
  $ExerciseHistoryDataCopyWith<$Res>? get exerciseHistoryData;
  @override
  $StaticPageModelCopyWith<$Res>? get staticPageModel;
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planHistoryModel = freezed,
    Object? totalCalories = null,
    Object? errorMessage = null,
    Object? nutrition = freezed,
    Object? exerciseHistoryData = freezed,
    Object? staticPageModel = freezed,
    Object? getPlanDataState = null,
    Object? getPlanHistoryState = null,
    Object? getStaticPageState = null,
  }) {
    return _then(_$SettingStateImpl(
      planHistoryModel: freezed == planHistoryModel
          ? _value.planHistoryModel
          : planHistoryModel // ignore: cast_nullable_to_non_nullable
              as PlanHistoryModel?,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: freezed == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrients?,
      exerciseHistoryData: freezed == exerciseHistoryData
          ? _value.exerciseHistoryData
          : exerciseHistoryData // ignore: cast_nullable_to_non_nullable
              as ExerciseHistoryData?,
      staticPageModel: freezed == staticPageModel
          ? _value.staticPageModel
          : staticPageModel // ignore: cast_nullable_to_non_nullable
              as StaticPageModel?,
      getPlanDataState: null == getPlanDataState
          ? _value.getPlanDataState
          : getPlanDataState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPlanHistoryState: null == getPlanHistoryState
          ? _value.getPlanHistoryState
          : getPlanHistoryState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getStaticPageState: null == getStaticPageState
          ? _value.getStaticPageState
          : getStaticPageState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {this.planHistoryModel = null,
      this.totalCalories = 0,
      this.errorMessage = '',
      this.nutrition = null,
      this.exerciseHistoryData = null,
      this.staticPageModel = null,
      this.getPlanDataState = RequestState.initial,
      this.getPlanHistoryState = RequestState.initial,
      this.getStaticPageState = RequestState.initial});

  @override
  @JsonKey()
  final PlanHistoryModel? planHistoryModel;
  @override
  @JsonKey()
  final num totalCalories;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final Nutrients? nutrition;
  @override
  @JsonKey()
  final ExerciseHistoryData? exerciseHistoryData;
  @override
  @JsonKey()
  final StaticPageModel? staticPageModel;
  @override
  @JsonKey()
  final RequestState getPlanDataState;
  @override
  @JsonKey()
  final RequestState getPlanHistoryState;
  @override
  @JsonKey()
  final RequestState getStaticPageState;

  @override
  String toString() {
    return 'SettingState(planHistoryModel: $planHistoryModel, totalCalories: $totalCalories, errorMessage: $errorMessage, nutrition: $nutrition, exerciseHistoryData: $exerciseHistoryData, staticPageModel: $staticPageModel, getPlanDataState: $getPlanDataState, getPlanHistoryState: $getPlanHistoryState, getStaticPageState: $getStaticPageState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.planHistoryModel, planHistoryModel) ||
                other.planHistoryModel == planHistoryModel) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.exerciseHistoryData, exerciseHistoryData) ||
                other.exerciseHistoryData == exerciseHistoryData) &&
            (identical(other.staticPageModel, staticPageModel) ||
                other.staticPageModel == staticPageModel) &&
            (identical(other.getPlanDataState, getPlanDataState) ||
                other.getPlanDataState == getPlanDataState) &&
            (identical(other.getPlanHistoryState, getPlanHistoryState) ||
                other.getPlanHistoryState == getPlanHistoryState) &&
            (identical(other.getStaticPageState, getStaticPageState) ||
                other.getStaticPageState == getStaticPageState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      planHistoryModel,
      totalCalories,
      errorMessage,
      nutrition,
      exerciseHistoryData,
      staticPageModel,
      getPlanDataState,
      getPlanHistoryState,
      getStaticPageState);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {final PlanHistoryModel? planHistoryModel,
      final num totalCalories,
      final String errorMessage,
      final Nutrients? nutrition,
      final ExerciseHistoryData? exerciseHistoryData,
      final StaticPageModel? staticPageModel,
      final RequestState getPlanDataState,
      final RequestState getPlanHistoryState,
      final RequestState getStaticPageState}) = _$SettingStateImpl;

  @override
  PlanHistoryModel? get planHistoryModel;
  @override
  num get totalCalories;
  @override
  String get errorMessage;
  @override
  Nutrients? get nutrition;
  @override
  ExerciseHistoryData? get exerciseHistoryData;
  @override
  StaticPageModel? get staticPageModel;
  @override
  RequestState get getPlanDataState;
  @override
  RequestState get getPlanHistoryState;
  @override
  RequestState get getStaticPageState;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
