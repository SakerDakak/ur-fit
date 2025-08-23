// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingState {
  PlanHistoryModel? get planHistoryModel;
  num get totalCalories;
  String get errorMessage;
  Nutrients? get nutrition;
  ExerciseHistoryData? get exerciseHistoryData;
  StaticPageModel? get staticPageModel;
  RequestState get getPlanDataState;
  RequestState get getPlanHistoryState;
  RequestState get getStaticPageState;
  RequestState get deleteAccountState;
  String get deleteAccountMessage;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingStateCopyWith<SettingState> get copyWith =>
      _$SettingStateCopyWithImpl<SettingState>(
          this as SettingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingState &&
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
                other.getStaticPageState == getStaticPageState) &&
            (identical(other.deleteAccountState, deleteAccountState) ||
                other.deleteAccountState == deleteAccountState) &&
            (identical(other.deleteAccountMessage, deleteAccountMessage) ||
                other.deleteAccountMessage == deleteAccountMessage));
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
      getStaticPageState,
      deleteAccountState,
      deleteAccountMessage);

  @override
  String toString() {
    return 'SettingState(planHistoryModel: $planHistoryModel, totalCalories: $totalCalories, errorMessage: $errorMessage, nutrition: $nutrition, exerciseHistoryData: $exerciseHistoryData, staticPageModel: $staticPageModel, getPlanDataState: $getPlanDataState, getPlanHistoryState: $getPlanHistoryState, getStaticPageState: $getStaticPageState, deleteAccountState: $deleteAccountState, deleteAccountMessage: $deleteAccountMessage)';
  }
}

/// @nodoc
abstract mixin class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) _then) =
      _$SettingStateCopyWithImpl;
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
      RequestState getStaticPageState,
      RequestState deleteAccountState,
      String deleteAccountMessage});

  $PlanHistoryModelCopyWith<$Res>? get planHistoryModel;
  $NutrientsCopyWith<$Res>? get nutrition;
  $ExerciseHistoryDataCopyWith<$Res>? get exerciseHistoryData;
  $StaticPageModelCopyWith<$Res>? get staticPageModel;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._self, this._then);

  final SettingState _self;
  final $Res Function(SettingState) _then;

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
    Object? deleteAccountState = null,
    Object? deleteAccountMessage = null,
  }) {
    return _then(_self.copyWith(
      planHistoryModel: freezed == planHistoryModel
          ? _self.planHistoryModel
          : planHistoryModel // ignore: cast_nullable_to_non_nullable
              as PlanHistoryModel?,
      totalCalories: null == totalCalories
          ? _self.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: freezed == nutrition
          ? _self.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrients?,
      exerciseHistoryData: freezed == exerciseHistoryData
          ? _self.exerciseHistoryData
          : exerciseHistoryData // ignore: cast_nullable_to_non_nullable
              as ExerciseHistoryData?,
      staticPageModel: freezed == staticPageModel
          ? _self.staticPageModel
          : staticPageModel // ignore: cast_nullable_to_non_nullable
              as StaticPageModel?,
      getPlanDataState: null == getPlanDataState
          ? _self.getPlanDataState
          : getPlanDataState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPlanHistoryState: null == getPlanHistoryState
          ? _self.getPlanHistoryState
          : getPlanHistoryState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getStaticPageState: null == getStaticPageState
          ? _self.getStaticPageState
          : getStaticPageState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      deleteAccountState: null == deleteAccountState
          ? _self.deleteAccountState
          : deleteAccountState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      deleteAccountMessage: null == deleteAccountMessage
          ? _self.deleteAccountMessage
          : deleteAccountMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanHistoryModelCopyWith<$Res>? get planHistoryModel {
    if (_self.planHistoryModel == null) {
      return null;
    }

    return $PlanHistoryModelCopyWith<$Res>(_self.planHistoryModel!, (value) {
      return _then(_self.copyWith(planHistoryModel: value));
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<$Res>? get nutrition {
    if (_self.nutrition == null) {
      return null;
    }

    return $NutrientsCopyWith<$Res>(_self.nutrition!, (value) {
      return _then(_self.copyWith(nutrition: value));
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseHistoryDataCopyWith<$Res>? get exerciseHistoryData {
    if (_self.exerciseHistoryData == null) {
      return null;
    }

    return $ExerciseHistoryDataCopyWith<$Res>(_self.exerciseHistoryData!,
        (value) {
      return _then(_self.copyWith(exerciseHistoryData: value));
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaticPageModelCopyWith<$Res>? get staticPageModel {
    if (_self.staticPageModel == null) {
      return null;
    }

    return $StaticPageModelCopyWith<$Res>(_self.staticPageModel!, (value) {
      return _then(_self.copyWith(staticPageModel: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SettingState].
extension SettingStatePatterns on SettingState {
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
    TResult Function(_SettingState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingState() when $default != null:
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
    TResult Function(_SettingState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingState():
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
    TResult? Function(_SettingState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingState() when $default != null:
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
            PlanHistoryModel? planHistoryModel,
            num totalCalories,
            String errorMessage,
            Nutrients? nutrition,
            ExerciseHistoryData? exerciseHistoryData,
            StaticPageModel? staticPageModel,
            RequestState getPlanDataState,
            RequestState getPlanHistoryState,
            RequestState getStaticPageState,
            RequestState deleteAccountState,
            String deleteAccountMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingState() when $default != null:
        return $default(
            _that.planHistoryModel,
            _that.totalCalories,
            _that.errorMessage,
            _that.nutrition,
            _that.exerciseHistoryData,
            _that.staticPageModel,
            _that.getPlanDataState,
            _that.getPlanHistoryState,
            _that.getStaticPageState,
            _that.deleteAccountState,
            _that.deleteAccountMessage);
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
            PlanHistoryModel? planHistoryModel,
            num totalCalories,
            String errorMessage,
            Nutrients? nutrition,
            ExerciseHistoryData? exerciseHistoryData,
            StaticPageModel? staticPageModel,
            RequestState getPlanDataState,
            RequestState getPlanHistoryState,
            RequestState getStaticPageState,
            RequestState deleteAccountState,
            String deleteAccountMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingState():
        return $default(
            _that.planHistoryModel,
            _that.totalCalories,
            _that.errorMessage,
            _that.nutrition,
            _that.exerciseHistoryData,
            _that.staticPageModel,
            _that.getPlanDataState,
            _that.getPlanHistoryState,
            _that.getStaticPageState,
            _that.deleteAccountState,
            _that.deleteAccountMessage);
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
            PlanHistoryModel? planHistoryModel,
            num totalCalories,
            String errorMessage,
            Nutrients? nutrition,
            ExerciseHistoryData? exerciseHistoryData,
            StaticPageModel? staticPageModel,
            RequestState getPlanDataState,
            RequestState getPlanHistoryState,
            RequestState getStaticPageState,
            RequestState deleteAccountState,
            String deleteAccountMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingState() when $default != null:
        return $default(
            _that.planHistoryModel,
            _that.totalCalories,
            _that.errorMessage,
            _that.nutrition,
            _that.exerciseHistoryData,
            _that.staticPageModel,
            _that.getPlanDataState,
            _that.getPlanHistoryState,
            _that.getStaticPageState,
            _that.deleteAccountState,
            _that.deleteAccountMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SettingState implements SettingState {
  const _SettingState(
      {this.planHistoryModel = null,
      this.totalCalories = 0,
      this.errorMessage = '',
      this.nutrition = null,
      this.exerciseHistoryData = null,
      this.staticPageModel = null,
      this.getPlanDataState = RequestState.initial,
      this.getPlanHistoryState = RequestState.initial,
      this.getStaticPageState = RequestState.initial,
      this.deleteAccountState = RequestState.initial,
      this.deleteAccountMessage = ''});

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
  @JsonKey()
  final RequestState deleteAccountState;
  @override
  @JsonKey()
  final String deleteAccountMessage;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingState &&
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
                other.getStaticPageState == getStaticPageState) &&
            (identical(other.deleteAccountState, deleteAccountState) ||
                other.deleteAccountState == deleteAccountState) &&
            (identical(other.deleteAccountMessage, deleteAccountMessage) ||
                other.deleteAccountMessage == deleteAccountMessage));
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
      getStaticPageState,
      deleteAccountState,
      deleteAccountMessage);

  @override
  String toString() {
    return 'SettingState(planHistoryModel: $planHistoryModel, totalCalories: $totalCalories, errorMessage: $errorMessage, nutrition: $nutrition, exerciseHistoryData: $exerciseHistoryData, staticPageModel: $staticPageModel, getPlanDataState: $getPlanDataState, getPlanHistoryState: $getPlanHistoryState, getStaticPageState: $getStaticPageState, deleteAccountState: $deleteAccountState, deleteAccountMessage: $deleteAccountMessage)';
  }
}

/// @nodoc
abstract mixin class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) _then) =
      __$SettingStateCopyWithImpl;
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
      RequestState getStaticPageState,
      RequestState deleteAccountState,
      String deleteAccountMessage});

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
class __$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(this._self, this._then);

  final _SettingState _self;
  final $Res Function(_SettingState) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? deleteAccountState = null,
    Object? deleteAccountMessage = null,
  }) {
    return _then(_SettingState(
      planHistoryModel: freezed == planHistoryModel
          ? _self.planHistoryModel
          : planHistoryModel // ignore: cast_nullable_to_non_nullable
              as PlanHistoryModel?,
      totalCalories: null == totalCalories
          ? _self.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as num,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: freezed == nutrition
          ? _self.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrients?,
      exerciseHistoryData: freezed == exerciseHistoryData
          ? _self.exerciseHistoryData
          : exerciseHistoryData // ignore: cast_nullable_to_non_nullable
              as ExerciseHistoryData?,
      staticPageModel: freezed == staticPageModel
          ? _self.staticPageModel
          : staticPageModel // ignore: cast_nullable_to_non_nullable
              as StaticPageModel?,
      getPlanDataState: null == getPlanDataState
          ? _self.getPlanDataState
          : getPlanDataState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getPlanHistoryState: null == getPlanHistoryState
          ? _self.getPlanHistoryState
          : getPlanHistoryState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getStaticPageState: null == getStaticPageState
          ? _self.getStaticPageState
          : getStaticPageState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      deleteAccountState: null == deleteAccountState
          ? _self.deleteAccountState
          : deleteAccountState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      deleteAccountMessage: null == deleteAccountMessage
          ? _self.deleteAccountMessage
          : deleteAccountMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanHistoryModelCopyWith<$Res>? get planHistoryModel {
    if (_self.planHistoryModel == null) {
      return null;
    }

    return $PlanHistoryModelCopyWith<$Res>(_self.planHistoryModel!, (value) {
      return _then(_self.copyWith(planHistoryModel: value));
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<$Res>? get nutrition {
    if (_self.nutrition == null) {
      return null;
    }

    return $NutrientsCopyWith<$Res>(_self.nutrition!, (value) {
      return _then(_self.copyWith(nutrition: value));
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseHistoryDataCopyWith<$Res>? get exerciseHistoryData {
    if (_self.exerciseHistoryData == null) {
      return null;
    }

    return $ExerciseHistoryDataCopyWith<$Res>(_self.exerciseHistoryData!,
        (value) {
      return _then(_self.copyWith(exerciseHistoryData: value));
    });
  }

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaticPageModelCopyWith<$Res>? get staticPageModel {
    if (_self.staticPageModel == null) {
      return null;
    }

    return $StaticPageModelCopyWith<$Res>(_self.staticPageModel!, (value) {
      return _then(_self.copyWith(staticPageModel: value));
    });
  }
}

// dart format on
