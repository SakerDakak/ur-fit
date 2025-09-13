// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserInfoState {
  UserPersonalInfoModel get userInfo;
  String get oldPassword;
  String get newPassword;
  String get confirmPassword;
  int get currentInfoStep;
  int get currentStepOneIndex;
  int get currentStepTwoIndex;
  int get currentStepThreeIndex;
  int get currentPageIndex;
  List<UserGoalsModel> get goals;
  List<SelectionItemModel> get mealsNotLiked;
  List<SelectionItemModel> get mealsLiked;
  List<SelectionItemModel> get diet;
  List<SelectionItemModel> get mealVariants;
  List<NoOfDailyMealsModel> get noOfDailyMeals;
  List<BodyPartsModel> get muscleFocusData;
  List<SelectionItemModel> get workoutTypes;
  List<SelectionItemModel> get equipments;
  String get errMessage;
  RequestState get getGoalsState;
  RequestState get changePasswordState;
  RequestState get getNotLikedMealsState;
  RequestState get getLikedMealsState;
  RequestState get getDietOptionsState;
  RequestState get getMealVariantsState;
  RequestState get getNoOfDailyMealsState;
  RequestState get getMuscleFocusState;
  RequestState get getWorkoutTypesState;
  RequestState get getEquipmentsState;
  RequestState get updatePersonalInfo;

  /// Create a copy of UpdateUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserInfoStateCopyWith<UpdateUserInfoState> get copyWith =>
      _$UpdateUserInfoStateCopyWithImpl<UpdateUserInfoState>(
          this as UpdateUserInfoState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserInfoState &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.currentInfoStep, currentInfoStep) ||
                other.currentInfoStep == currentInfoStep) &&
            (identical(other.currentStepOneIndex, currentStepOneIndex) ||
                other.currentStepOneIndex == currentStepOneIndex) &&
            (identical(other.currentStepTwoIndex, currentStepTwoIndex) ||
                other.currentStepTwoIndex == currentStepTwoIndex) &&
            (identical(other.currentStepThreeIndex, currentStepThreeIndex) ||
                other.currentStepThreeIndex == currentStepThreeIndex) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            const DeepCollectionEquality().equals(other.goals, goals) &&
            const DeepCollectionEquality()
                .equals(other.mealsNotLiked, mealsNotLiked) &&
            const DeepCollectionEquality()
                .equals(other.mealsLiked, mealsLiked) &&
            const DeepCollectionEquality().equals(other.diet, diet) &&
            const DeepCollectionEquality()
                .equals(other.mealVariants, mealVariants) &&
            const DeepCollectionEquality()
                .equals(other.noOfDailyMeals, noOfDailyMeals) &&
            const DeepCollectionEquality()
                .equals(other.muscleFocusData, muscleFocusData) &&
            const DeepCollectionEquality()
                .equals(other.workoutTypes, workoutTypes) &&
            const DeepCollectionEquality()
                .equals(other.equipments, equipments) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.getGoalsState, getGoalsState) ||
                other.getGoalsState == getGoalsState) &&
            (identical(other.changePasswordState, changePasswordState) ||
                other.changePasswordState == changePasswordState) &&
            (identical(other.getNotLikedMealsState, getNotLikedMealsState) ||
                other.getNotLikedMealsState == getNotLikedMealsState) &&
            (identical(other.getLikedMealsState, getLikedMealsState) ||
                other.getLikedMealsState == getLikedMealsState) &&
            (identical(other.getDietOptionsState, getDietOptionsState) ||
                other.getDietOptionsState == getDietOptionsState) &&
            (identical(other.getMealVariantsState, getMealVariantsState) ||
                other.getMealVariantsState == getMealVariantsState) &&
            (identical(other.getNoOfDailyMealsState, getNoOfDailyMealsState) ||
                other.getNoOfDailyMealsState == getNoOfDailyMealsState) &&
            (identical(other.getMuscleFocusState, getMuscleFocusState) ||
                other.getMuscleFocusState == getMuscleFocusState) &&
            (identical(other.getWorkoutTypesState, getWorkoutTypesState) ||
                other.getWorkoutTypesState == getWorkoutTypesState) &&
            (identical(other.getEquipmentsState, getEquipmentsState) ||
                other.getEquipmentsState == getEquipmentsState) &&
            (identical(other.updatePersonalInfo, updatePersonalInfo) ||
                other.updatePersonalInfo == updatePersonalInfo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userInfo,
        oldPassword,
        newPassword,
        confirmPassword,
        currentInfoStep,
        currentStepOneIndex,
        currentStepTwoIndex,
        currentStepThreeIndex,
        currentPageIndex,
        const DeepCollectionEquality().hash(goals),
        const DeepCollectionEquality().hash(mealsNotLiked),
        const DeepCollectionEquality().hash(mealsLiked),
        const DeepCollectionEquality().hash(diet),
        const DeepCollectionEquality().hash(mealVariants),
        const DeepCollectionEquality().hash(noOfDailyMeals),
        const DeepCollectionEquality().hash(muscleFocusData),
        const DeepCollectionEquality().hash(workoutTypes),
        const DeepCollectionEquality().hash(equipments),
        errMessage,
        getGoalsState,
        changePasswordState,
        getNotLikedMealsState,
        getLikedMealsState,
        getDietOptionsState,
        getMealVariantsState,
        getNoOfDailyMealsState,
        getMuscleFocusState,
        getWorkoutTypesState,
        getEquipmentsState,
        updatePersonalInfo
      ]);

  @override
  String toString() {
    return 'UpdateUserInfoState(userInfo: $userInfo, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, currentInfoStep: $currentInfoStep, currentStepOneIndex: $currentStepOneIndex, currentStepTwoIndex: $currentStepTwoIndex, currentStepThreeIndex: $currentStepThreeIndex, currentPageIndex: $currentPageIndex, goals: $goals, mealsNotLiked: $mealsNotLiked, mealsLiked: $mealsLiked, diet: $diet, mealVariants: $mealVariants, noOfDailyMeals: $noOfDailyMeals, muscleFocusData: $muscleFocusData, workoutTypes: $workoutTypes, equipments: $equipments, errMessage: $errMessage, getGoalsState: $getGoalsState, changePasswordState: $changePasswordState, getNotLikedMealsState: $getNotLikedMealsState, getLikedMealsState: $getLikedMealsState, getDietOptionsState: $getDietOptionsState, getMealVariantsState: $getMealVariantsState, getNoOfDailyMealsState: $getNoOfDailyMealsState, getMuscleFocusState: $getMuscleFocusState, getWorkoutTypesState: $getWorkoutTypesState, getEquipmentsState: $getEquipmentsState, updatePersonalInfo: $updatePersonalInfo)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserInfoStateCopyWith<$Res> {
  factory $UpdateUserInfoStateCopyWith(
          UpdateUserInfoState value, $Res Function(UpdateUserInfoState) _then) =
      _$UpdateUserInfoStateCopyWithImpl;
  @useResult
  $Res call(
      {UserPersonalInfoModel userInfo,
      String oldPassword,
      String newPassword,
      String confirmPassword,
      int currentInfoStep,
      int currentStepOneIndex,
      int currentStepTwoIndex,
      int currentStepThreeIndex,
      int currentPageIndex,
      List<UserGoalsModel> goals,
      List<SelectionItemModel> mealsNotLiked,
      List<SelectionItemModel> mealsLiked,
      List<SelectionItemModel> diet,
      List<SelectionItemModel> mealVariants,
      List<NoOfDailyMealsModel> noOfDailyMeals,
      List<BodyPartsModel> muscleFocusData,
      List<SelectionItemModel> workoutTypes,
      List<SelectionItemModel> equipments,
      String errMessage,
      RequestState getGoalsState,
      RequestState changePasswordState,
      RequestState getNotLikedMealsState,
      RequestState getLikedMealsState,
      RequestState getDietOptionsState,
      RequestState getMealVariantsState,
      RequestState getNoOfDailyMealsState,
      RequestState getMuscleFocusState,
      RequestState getWorkoutTypesState,
      RequestState getEquipmentsState,
      RequestState updatePersonalInfo});

  $UserPersonalInfoModelCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$UpdateUserInfoStateCopyWithImpl<$Res>
    implements $UpdateUserInfoStateCopyWith<$Res> {
  _$UpdateUserInfoStateCopyWithImpl(this._self, this._then);

  final UpdateUserInfoState _self;
  final $Res Function(UpdateUserInfoState) _then;

  /// Create a copy of UpdateUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? currentInfoStep = null,
    Object? currentStepOneIndex = null,
    Object? currentStepTwoIndex = null,
    Object? currentStepThreeIndex = null,
    Object? currentPageIndex = null,
    Object? goals = null,
    Object? mealsNotLiked = null,
    Object? mealsLiked = null,
    Object? diet = null,
    Object? mealVariants = null,
    Object? noOfDailyMeals = null,
    Object? muscleFocusData = null,
    Object? workoutTypes = null,
    Object? equipments = null,
    Object? errMessage = null,
    Object? getGoalsState = null,
    Object? changePasswordState = null,
    Object? getNotLikedMealsState = null,
    Object? getLikedMealsState = null,
    Object? getDietOptionsState = null,
    Object? getMealVariantsState = null,
    Object? getNoOfDailyMealsState = null,
    Object? getMuscleFocusState = null,
    Object? getWorkoutTypesState = null,
    Object? getEquipmentsState = null,
    Object? updatePersonalInfo = null,
  }) {
    return _then(_self.copyWith(
      userInfo: null == userInfo
          ? _self.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserPersonalInfoModel,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      currentInfoStep: null == currentInfoStep
          ? _self.currentInfoStep
          : currentInfoStep // ignore: cast_nullable_to_non_nullable
              as int,
      currentStepOneIndex: null == currentStepOneIndex
          ? _self.currentStepOneIndex
          : currentStepOneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentStepTwoIndex: null == currentStepTwoIndex
          ? _self.currentStepTwoIndex
          : currentStepTwoIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentStepThreeIndex: null == currentStepThreeIndex
          ? _self.currentStepThreeIndex
          : currentStepThreeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageIndex: null == currentPageIndex
          ? _self.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      goals: null == goals
          ? _self.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<UserGoalsModel>,
      mealsNotLiked: null == mealsNotLiked
          ? _self.mealsNotLiked
          : mealsNotLiked // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      mealsLiked: null == mealsLiked
          ? _self.mealsLiked
          : mealsLiked // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      diet: null == diet
          ? _self.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      mealVariants: null == mealVariants
          ? _self.mealVariants
          : mealVariants // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      noOfDailyMeals: null == noOfDailyMeals
          ? _self.noOfDailyMeals
          : noOfDailyMeals // ignore: cast_nullable_to_non_nullable
              as List<NoOfDailyMealsModel>,
      muscleFocusData: null == muscleFocusData
          ? _self.muscleFocusData
          : muscleFocusData // ignore: cast_nullable_to_non_nullable
              as List<BodyPartsModel>,
      workoutTypes: null == workoutTypes
          ? _self.workoutTypes
          : workoutTypes // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      equipments: null == equipments
          ? _self.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getGoalsState: null == getGoalsState
          ? _self.getGoalsState
          : getGoalsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      changePasswordState: null == changePasswordState
          ? _self.changePasswordState
          : changePasswordState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getNotLikedMealsState: null == getNotLikedMealsState
          ? _self.getNotLikedMealsState
          : getNotLikedMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getLikedMealsState: null == getLikedMealsState
          ? _self.getLikedMealsState
          : getLikedMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getDietOptionsState: null == getDietOptionsState
          ? _self.getDietOptionsState
          : getDietOptionsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealVariantsState: null == getMealVariantsState
          ? _self.getMealVariantsState
          : getMealVariantsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getNoOfDailyMealsState: null == getNoOfDailyMealsState
          ? _self.getNoOfDailyMealsState
          : getNoOfDailyMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMuscleFocusState: null == getMuscleFocusState
          ? _self.getMuscleFocusState
          : getMuscleFocusState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getWorkoutTypesState: null == getWorkoutTypesState
          ? _self.getWorkoutTypesState
          : getWorkoutTypesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getEquipmentsState: null == getEquipmentsState
          ? _self.getEquipmentsState
          : getEquipmentsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      updatePersonalInfo: null == updatePersonalInfo
          ? _self.updatePersonalInfo
          : updatePersonalInfo // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }

  /// Create a copy of UpdateUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPersonalInfoModelCopyWith<$Res> get userInfo {
    return $UserPersonalInfoModelCopyWith<$Res>(_self.userInfo, (value) {
      return _then(_self.copyWith(userInfo: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UpdateUserInfoState].
extension UpdateUserInfoStatePatterns on UpdateUserInfoState {
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
    TResult Function(_UpdateUserInfoState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserInfoState() when $default != null:
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
    TResult Function(_UpdateUserInfoState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserInfoState():
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
    TResult? Function(_UpdateUserInfoState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserInfoState() when $default != null:
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
            UserPersonalInfoModel userInfo,
            String oldPassword,
            String newPassword,
            String confirmPassword,
            int currentInfoStep,
            int currentStepOneIndex,
            int currentStepTwoIndex,
            int currentStepThreeIndex,
            int currentPageIndex,
            List<UserGoalsModel> goals,
            List<SelectionItemModel> mealsNotLiked,
            List<SelectionItemModel> mealsLiked,
            List<SelectionItemModel> diet,
            List<SelectionItemModel> mealVariants,
            List<NoOfDailyMealsModel> noOfDailyMeals,
            List<BodyPartsModel> muscleFocusData,
            List<SelectionItemModel> workoutTypes,
            List<SelectionItemModel> equipments,
            String errMessage,
            RequestState getGoalsState,
            RequestState changePasswordState,
            RequestState getNotLikedMealsState,
            RequestState getLikedMealsState,
            RequestState getDietOptionsState,
            RequestState getMealVariantsState,
            RequestState getNoOfDailyMealsState,
            RequestState getMuscleFocusState,
            RequestState getWorkoutTypesState,
            RequestState getEquipmentsState,
            RequestState updatePersonalInfo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserInfoState() when $default != null:
        return $default(
            _that.userInfo,
            _that.oldPassword,
            _that.newPassword,
            _that.confirmPassword,
            _that.currentInfoStep,
            _that.currentStepOneIndex,
            _that.currentStepTwoIndex,
            _that.currentStepThreeIndex,
            _that.currentPageIndex,
            _that.goals,
            _that.mealsNotLiked,
            _that.mealsLiked,
            _that.diet,
            _that.mealVariants,
            _that.noOfDailyMeals,
            _that.muscleFocusData,
            _that.workoutTypes,
            _that.equipments,
            _that.errMessage,
            _that.getGoalsState,
            _that.changePasswordState,
            _that.getNotLikedMealsState,
            _that.getLikedMealsState,
            _that.getDietOptionsState,
            _that.getMealVariantsState,
            _that.getNoOfDailyMealsState,
            _that.getMuscleFocusState,
            _that.getWorkoutTypesState,
            _that.getEquipmentsState,
            _that.updatePersonalInfo);
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
            UserPersonalInfoModel userInfo,
            String oldPassword,
            String newPassword,
            String confirmPassword,
            int currentInfoStep,
            int currentStepOneIndex,
            int currentStepTwoIndex,
            int currentStepThreeIndex,
            int currentPageIndex,
            List<UserGoalsModel> goals,
            List<SelectionItemModel> mealsNotLiked,
            List<SelectionItemModel> mealsLiked,
            List<SelectionItemModel> diet,
            List<SelectionItemModel> mealVariants,
            List<NoOfDailyMealsModel> noOfDailyMeals,
            List<BodyPartsModel> muscleFocusData,
            List<SelectionItemModel> workoutTypes,
            List<SelectionItemModel> equipments,
            String errMessage,
            RequestState getGoalsState,
            RequestState changePasswordState,
            RequestState getNotLikedMealsState,
            RequestState getLikedMealsState,
            RequestState getDietOptionsState,
            RequestState getMealVariantsState,
            RequestState getNoOfDailyMealsState,
            RequestState getMuscleFocusState,
            RequestState getWorkoutTypesState,
            RequestState getEquipmentsState,
            RequestState updatePersonalInfo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserInfoState():
        return $default(
            _that.userInfo,
            _that.oldPassword,
            _that.newPassword,
            _that.confirmPassword,
            _that.currentInfoStep,
            _that.currentStepOneIndex,
            _that.currentStepTwoIndex,
            _that.currentStepThreeIndex,
            _that.currentPageIndex,
            _that.goals,
            _that.mealsNotLiked,
            _that.mealsLiked,
            _that.diet,
            _that.mealVariants,
            _that.noOfDailyMeals,
            _that.muscleFocusData,
            _that.workoutTypes,
            _that.equipments,
            _that.errMessage,
            _that.getGoalsState,
            _that.changePasswordState,
            _that.getNotLikedMealsState,
            _that.getLikedMealsState,
            _that.getDietOptionsState,
            _that.getMealVariantsState,
            _that.getNoOfDailyMealsState,
            _that.getMuscleFocusState,
            _that.getWorkoutTypesState,
            _that.getEquipmentsState,
            _that.updatePersonalInfo);
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
            UserPersonalInfoModel userInfo,
            String oldPassword,
            String newPassword,
            String confirmPassword,
            int currentInfoStep,
            int currentStepOneIndex,
            int currentStepTwoIndex,
            int currentStepThreeIndex,
            int currentPageIndex,
            List<UserGoalsModel> goals,
            List<SelectionItemModel> mealsNotLiked,
            List<SelectionItemModel> mealsLiked,
            List<SelectionItemModel> diet,
            List<SelectionItemModel> mealVariants,
            List<NoOfDailyMealsModel> noOfDailyMeals,
            List<BodyPartsModel> muscleFocusData,
            List<SelectionItemModel> workoutTypes,
            List<SelectionItemModel> equipments,
            String errMessage,
            RequestState getGoalsState,
            RequestState changePasswordState,
            RequestState getNotLikedMealsState,
            RequestState getLikedMealsState,
            RequestState getDietOptionsState,
            RequestState getMealVariantsState,
            RequestState getNoOfDailyMealsState,
            RequestState getMuscleFocusState,
            RequestState getWorkoutTypesState,
            RequestState getEquipmentsState,
            RequestState updatePersonalInfo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserInfoState() when $default != null:
        return $default(
            _that.userInfo,
            _that.oldPassword,
            _that.newPassword,
            _that.confirmPassword,
            _that.currentInfoStep,
            _that.currentStepOneIndex,
            _that.currentStepTwoIndex,
            _that.currentStepThreeIndex,
            _that.currentPageIndex,
            _that.goals,
            _that.mealsNotLiked,
            _that.mealsLiked,
            _that.diet,
            _that.mealVariants,
            _that.noOfDailyMeals,
            _that.muscleFocusData,
            _that.workoutTypes,
            _that.equipments,
            _that.errMessage,
            _that.getGoalsState,
            _that.changePasswordState,
            _that.getNotLikedMealsState,
            _that.getLikedMealsState,
            _that.getDietOptionsState,
            _that.getMealVariantsState,
            _that.getNoOfDailyMealsState,
            _that.getMuscleFocusState,
            _that.getWorkoutTypesState,
            _that.getEquipmentsState,
            _that.updatePersonalInfo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UpdateUserInfoState implements UpdateUserInfoState {
  const _UpdateUserInfoState(
      {required this.userInfo,
      this.oldPassword = "",
      this.newPassword = "",
      this.confirmPassword = "",
      this.currentInfoStep = 1,
      this.currentStepOneIndex = 1,
      this.currentStepTwoIndex = 1,
      this.currentStepThreeIndex = 1,
      this.currentPageIndex = 0,
      final List<UserGoalsModel> goals = const [],
      final List<SelectionItemModel> mealsNotLiked = const [],
      final List<SelectionItemModel> mealsLiked = const [],
      final List<SelectionItemModel> diet = const [],
      final List<SelectionItemModel> mealVariants = const [],
      final List<NoOfDailyMealsModel> noOfDailyMeals = const [],
      final List<BodyPartsModel> muscleFocusData = const [],
      final List<SelectionItemModel> workoutTypes = const [],
      final List<SelectionItemModel> equipments = const [],
      this.errMessage = '',
      this.getGoalsState = RequestState.initial,
      this.changePasswordState = RequestState.initial,
      this.getNotLikedMealsState = RequestState.initial,
      this.getLikedMealsState = RequestState.initial,
      this.getDietOptionsState = RequestState.initial,
      this.getMealVariantsState = RequestState.initial,
      this.getNoOfDailyMealsState = RequestState.initial,
      this.getMuscleFocusState = RequestState.initial,
      this.getWorkoutTypesState = RequestState.initial,
      this.getEquipmentsState = RequestState.initial,
      this.updatePersonalInfo = RequestState.initial})
      : _goals = goals,
        _mealsNotLiked = mealsNotLiked,
        _mealsLiked = mealsLiked,
        _diet = diet,
        _mealVariants = mealVariants,
        _noOfDailyMeals = noOfDailyMeals,
        _muscleFocusData = muscleFocusData,
        _workoutTypes = workoutTypes,
        _equipments = equipments;

  @override
  final UserPersonalInfoModel userInfo;
  @override
  @JsonKey()
  final String oldPassword;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final int currentInfoStep;
  @override
  @JsonKey()
  final int currentStepOneIndex;
  @override
  @JsonKey()
  final int currentStepTwoIndex;
  @override
  @JsonKey()
  final int currentStepThreeIndex;
  @override
  @JsonKey()
  final int currentPageIndex;
  final List<UserGoalsModel> _goals;
  @override
  @JsonKey()
  List<UserGoalsModel> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  final List<SelectionItemModel> _mealsNotLiked;
  @override
  @JsonKey()
  List<SelectionItemModel> get mealsNotLiked {
    if (_mealsNotLiked is EqualUnmodifiableListView) return _mealsNotLiked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealsNotLiked);
  }

  final List<SelectionItemModel> _mealsLiked;
  @override
  @JsonKey()
  List<SelectionItemModel> get mealsLiked {
    if (_mealsLiked is EqualUnmodifiableListView) return _mealsLiked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealsLiked);
  }

  final List<SelectionItemModel> _diet;
  @override
  @JsonKey()
  List<SelectionItemModel> get diet {
    if (_diet is EqualUnmodifiableListView) return _diet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diet);
  }

  final List<SelectionItemModel> _mealVariants;
  @override
  @JsonKey()
  List<SelectionItemModel> get mealVariants {
    if (_mealVariants is EqualUnmodifiableListView) return _mealVariants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealVariants);
  }

  final List<NoOfDailyMealsModel> _noOfDailyMeals;
  @override
  @JsonKey()
  List<NoOfDailyMealsModel> get noOfDailyMeals {
    if (_noOfDailyMeals is EqualUnmodifiableListView) return _noOfDailyMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noOfDailyMeals);
  }

  final List<BodyPartsModel> _muscleFocusData;
  @override
  @JsonKey()
  List<BodyPartsModel> get muscleFocusData {
    if (_muscleFocusData is EqualUnmodifiableListView) return _muscleFocusData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_muscleFocusData);
  }

  final List<SelectionItemModel> _workoutTypes;
  @override
  @JsonKey()
  List<SelectionItemModel> get workoutTypes {
    if (_workoutTypes is EqualUnmodifiableListView) return _workoutTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutTypes);
  }

  final List<SelectionItemModel> _equipments;
  @override
  @JsonKey()
  List<SelectionItemModel> get equipments {
    if (_equipments is EqualUnmodifiableListView) return _equipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipments);
  }

  @override
  @JsonKey()
  final String errMessage;
  @override
  @JsonKey()
  final RequestState getGoalsState;
  @override
  @JsonKey()
  final RequestState changePasswordState;
  @override
  @JsonKey()
  final RequestState getNotLikedMealsState;
  @override
  @JsonKey()
  final RequestState getLikedMealsState;
  @override
  @JsonKey()
  final RequestState getDietOptionsState;
  @override
  @JsonKey()
  final RequestState getMealVariantsState;
  @override
  @JsonKey()
  final RequestState getNoOfDailyMealsState;
  @override
  @JsonKey()
  final RequestState getMuscleFocusState;
  @override
  @JsonKey()
  final RequestState getWorkoutTypesState;
  @override
  @JsonKey()
  final RequestState getEquipmentsState;
  @override
  @JsonKey()
  final RequestState updatePersonalInfo;

  /// Create a copy of UpdateUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserInfoStateCopyWith<_UpdateUserInfoState> get copyWith =>
      __$UpdateUserInfoStateCopyWithImpl<_UpdateUserInfoState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserInfoState &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.currentInfoStep, currentInfoStep) ||
                other.currentInfoStep == currentInfoStep) &&
            (identical(other.currentStepOneIndex, currentStepOneIndex) ||
                other.currentStepOneIndex == currentStepOneIndex) &&
            (identical(other.currentStepTwoIndex, currentStepTwoIndex) ||
                other.currentStepTwoIndex == currentStepTwoIndex) &&
            (identical(other.currentStepThreeIndex, currentStepThreeIndex) ||
                other.currentStepThreeIndex == currentStepThreeIndex) &&
            (identical(other.currentPageIndex, currentPageIndex) ||
                other.currentPageIndex == currentPageIndex) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            const DeepCollectionEquality()
                .equals(other._mealsNotLiked, _mealsNotLiked) &&
            const DeepCollectionEquality()
                .equals(other._mealsLiked, _mealsLiked) &&
            const DeepCollectionEquality().equals(other._diet, _diet) &&
            const DeepCollectionEquality()
                .equals(other._mealVariants, _mealVariants) &&
            const DeepCollectionEquality()
                .equals(other._noOfDailyMeals, _noOfDailyMeals) &&
            const DeepCollectionEquality()
                .equals(other._muscleFocusData, _muscleFocusData) &&
            const DeepCollectionEquality()
                .equals(other._workoutTypes, _workoutTypes) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.getGoalsState, getGoalsState) ||
                other.getGoalsState == getGoalsState) &&
            (identical(other.changePasswordState, changePasswordState) ||
                other.changePasswordState == changePasswordState) &&
            (identical(other.getNotLikedMealsState, getNotLikedMealsState) ||
                other.getNotLikedMealsState == getNotLikedMealsState) &&
            (identical(other.getLikedMealsState, getLikedMealsState) ||
                other.getLikedMealsState == getLikedMealsState) &&
            (identical(other.getDietOptionsState, getDietOptionsState) ||
                other.getDietOptionsState == getDietOptionsState) &&
            (identical(other.getMealVariantsState, getMealVariantsState) ||
                other.getMealVariantsState == getMealVariantsState) &&
            (identical(other.getNoOfDailyMealsState, getNoOfDailyMealsState) ||
                other.getNoOfDailyMealsState == getNoOfDailyMealsState) &&
            (identical(other.getMuscleFocusState, getMuscleFocusState) ||
                other.getMuscleFocusState == getMuscleFocusState) &&
            (identical(other.getWorkoutTypesState, getWorkoutTypesState) ||
                other.getWorkoutTypesState == getWorkoutTypesState) &&
            (identical(other.getEquipmentsState, getEquipmentsState) ||
                other.getEquipmentsState == getEquipmentsState) &&
            (identical(other.updatePersonalInfo, updatePersonalInfo) ||
                other.updatePersonalInfo == updatePersonalInfo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userInfo,
        oldPassword,
        newPassword,
        confirmPassword,
        currentInfoStep,
        currentStepOneIndex,
        currentStepTwoIndex,
        currentStepThreeIndex,
        currentPageIndex,
        const DeepCollectionEquality().hash(_goals),
        const DeepCollectionEquality().hash(_mealsNotLiked),
        const DeepCollectionEquality().hash(_mealsLiked),
        const DeepCollectionEquality().hash(_diet),
        const DeepCollectionEquality().hash(_mealVariants),
        const DeepCollectionEquality().hash(_noOfDailyMeals),
        const DeepCollectionEquality().hash(_muscleFocusData),
        const DeepCollectionEquality().hash(_workoutTypes),
        const DeepCollectionEquality().hash(_equipments),
        errMessage,
        getGoalsState,
        changePasswordState,
        getNotLikedMealsState,
        getLikedMealsState,
        getDietOptionsState,
        getMealVariantsState,
        getNoOfDailyMealsState,
        getMuscleFocusState,
        getWorkoutTypesState,
        getEquipmentsState,
        updatePersonalInfo
      ]);

  @override
  String toString() {
    return 'UpdateUserInfoState(userInfo: $userInfo, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, currentInfoStep: $currentInfoStep, currentStepOneIndex: $currentStepOneIndex, currentStepTwoIndex: $currentStepTwoIndex, currentStepThreeIndex: $currentStepThreeIndex, currentPageIndex: $currentPageIndex, goals: $goals, mealsNotLiked: $mealsNotLiked, mealsLiked: $mealsLiked, diet: $diet, mealVariants: $mealVariants, noOfDailyMeals: $noOfDailyMeals, muscleFocusData: $muscleFocusData, workoutTypes: $workoutTypes, equipments: $equipments, errMessage: $errMessage, getGoalsState: $getGoalsState, changePasswordState: $changePasswordState, getNotLikedMealsState: $getNotLikedMealsState, getLikedMealsState: $getLikedMealsState, getDietOptionsState: $getDietOptionsState, getMealVariantsState: $getMealVariantsState, getNoOfDailyMealsState: $getNoOfDailyMealsState, getMuscleFocusState: $getMuscleFocusState, getWorkoutTypesState: $getWorkoutTypesState, getEquipmentsState: $getEquipmentsState, updatePersonalInfo: $updatePersonalInfo)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserInfoStateCopyWith<$Res>
    implements $UpdateUserInfoStateCopyWith<$Res> {
  factory _$UpdateUserInfoStateCopyWith(_UpdateUserInfoState value,
          $Res Function(_UpdateUserInfoState) _then) =
      __$UpdateUserInfoStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {UserPersonalInfoModel userInfo,
      String oldPassword,
      String newPassword,
      String confirmPassword,
      int currentInfoStep,
      int currentStepOneIndex,
      int currentStepTwoIndex,
      int currentStepThreeIndex,
      int currentPageIndex,
      List<UserGoalsModel> goals,
      List<SelectionItemModel> mealsNotLiked,
      List<SelectionItemModel> mealsLiked,
      List<SelectionItemModel> diet,
      List<SelectionItemModel> mealVariants,
      List<NoOfDailyMealsModel> noOfDailyMeals,
      List<BodyPartsModel> muscleFocusData,
      List<SelectionItemModel> workoutTypes,
      List<SelectionItemModel> equipments,
      String errMessage,
      RequestState getGoalsState,
      RequestState changePasswordState,
      RequestState getNotLikedMealsState,
      RequestState getLikedMealsState,
      RequestState getDietOptionsState,
      RequestState getMealVariantsState,
      RequestState getNoOfDailyMealsState,
      RequestState getMuscleFocusState,
      RequestState getWorkoutTypesState,
      RequestState getEquipmentsState,
      RequestState updatePersonalInfo});

  @override
  $UserPersonalInfoModelCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$UpdateUserInfoStateCopyWithImpl<$Res>
    implements _$UpdateUserInfoStateCopyWith<$Res> {
  __$UpdateUserInfoStateCopyWithImpl(this._self, this._then);

  final _UpdateUserInfoState _self;
  final $Res Function(_UpdateUserInfoState) _then;

  /// Create a copy of UpdateUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userInfo = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? currentInfoStep = null,
    Object? currentStepOneIndex = null,
    Object? currentStepTwoIndex = null,
    Object? currentStepThreeIndex = null,
    Object? currentPageIndex = null,
    Object? goals = null,
    Object? mealsNotLiked = null,
    Object? mealsLiked = null,
    Object? diet = null,
    Object? mealVariants = null,
    Object? noOfDailyMeals = null,
    Object? muscleFocusData = null,
    Object? workoutTypes = null,
    Object? equipments = null,
    Object? errMessage = null,
    Object? getGoalsState = null,
    Object? changePasswordState = null,
    Object? getNotLikedMealsState = null,
    Object? getLikedMealsState = null,
    Object? getDietOptionsState = null,
    Object? getMealVariantsState = null,
    Object? getNoOfDailyMealsState = null,
    Object? getMuscleFocusState = null,
    Object? getWorkoutTypesState = null,
    Object? getEquipmentsState = null,
    Object? updatePersonalInfo = null,
  }) {
    return _then(_UpdateUserInfoState(
      userInfo: null == userInfo
          ? _self.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserPersonalInfoModel,
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      currentInfoStep: null == currentInfoStep
          ? _self.currentInfoStep
          : currentInfoStep // ignore: cast_nullable_to_non_nullable
              as int,
      currentStepOneIndex: null == currentStepOneIndex
          ? _self.currentStepOneIndex
          : currentStepOneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentStepTwoIndex: null == currentStepTwoIndex
          ? _self.currentStepTwoIndex
          : currentStepTwoIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentStepThreeIndex: null == currentStepThreeIndex
          ? _self.currentStepThreeIndex
          : currentStepThreeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageIndex: null == currentPageIndex
          ? _self.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      goals: null == goals
          ? _self._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<UserGoalsModel>,
      mealsNotLiked: null == mealsNotLiked
          ? _self._mealsNotLiked
          : mealsNotLiked // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      mealsLiked: null == mealsLiked
          ? _self._mealsLiked
          : mealsLiked // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      diet: null == diet
          ? _self._diet
          : diet // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      mealVariants: null == mealVariants
          ? _self._mealVariants
          : mealVariants // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      noOfDailyMeals: null == noOfDailyMeals
          ? _self._noOfDailyMeals
          : noOfDailyMeals // ignore: cast_nullable_to_non_nullable
              as List<NoOfDailyMealsModel>,
      muscleFocusData: null == muscleFocusData
          ? _self._muscleFocusData
          : muscleFocusData // ignore: cast_nullable_to_non_nullable
              as List<BodyPartsModel>,
      workoutTypes: null == workoutTypes
          ? _self._workoutTypes
          : workoutTypes // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      equipments: null == equipments
          ? _self._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<SelectionItemModel>,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getGoalsState: null == getGoalsState
          ? _self.getGoalsState
          : getGoalsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      changePasswordState: null == changePasswordState
          ? _self.changePasswordState
          : changePasswordState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getNotLikedMealsState: null == getNotLikedMealsState
          ? _self.getNotLikedMealsState
          : getNotLikedMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getLikedMealsState: null == getLikedMealsState
          ? _self.getLikedMealsState
          : getLikedMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getDietOptionsState: null == getDietOptionsState
          ? _self.getDietOptionsState
          : getDietOptionsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealVariantsState: null == getMealVariantsState
          ? _self.getMealVariantsState
          : getMealVariantsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getNoOfDailyMealsState: null == getNoOfDailyMealsState
          ? _self.getNoOfDailyMealsState
          : getNoOfDailyMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMuscleFocusState: null == getMuscleFocusState
          ? _self.getMuscleFocusState
          : getMuscleFocusState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getWorkoutTypesState: null == getWorkoutTypesState
          ? _self.getWorkoutTypesState
          : getWorkoutTypesState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getEquipmentsState: null == getEquipmentsState
          ? _self.getEquipmentsState
          : getEquipmentsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      updatePersonalInfo: null == updatePersonalInfo
          ? _self.updatePersonalInfo
          : updatePersonalInfo // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }

  /// Create a copy of UpdateUserInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserPersonalInfoModelCopyWith<$Res> get userInfo {
    return $UserPersonalInfoModelCopyWith<$Res>(_self.userInfo, (value) {
      return _then(_self.copyWith(userInfo: value));
    });
  }
}

// dart format on
