// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_personal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPersonalInfoModel {
  GenderEnum? get gender;
  int? get age;
  double? get height;
  double? get current_weight;
  List<UserGoalsModel> get selectedGaols;
  double? get targetWeight;
  int? get diet_id;
  List<int> get likedMealsIds;
  List<int> get notLikedMealsIds;
  int? get mealsVariantsId;
  List<int> get workoutTypesIds;
  List<String> get muscleFocusIds;
  List<String> get exciseDays;
  List<int> get equipmentsIds;
  String? get numOfDailyMeals;
  int? get mealVarietyLevel;
  int? get weaklyTrainingCount;

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPersonalInfoModelCopyWith<UserPersonalInfoModel> get copyWith =>
      _$UserPersonalInfoModelCopyWithImpl<UserPersonalInfoModel>(
          this as UserPersonalInfoModel, _$identity);

  /// Serializes this UserPersonalInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPersonalInfoModel &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.current_weight, current_weight) ||
                other.current_weight == current_weight) &&
            const DeepCollectionEquality()
                .equals(other.selectedGaols, selectedGaols) &&
            (identical(other.targetWeight, targetWeight) ||
                other.targetWeight == targetWeight) &&
            (identical(other.diet_id, diet_id) || other.diet_id == diet_id) &&
            const DeepCollectionEquality()
                .equals(other.likedMealsIds, likedMealsIds) &&
            const DeepCollectionEquality()
                .equals(other.notLikedMealsIds, notLikedMealsIds) &&
            (identical(other.mealsVariantsId, mealsVariantsId) ||
                other.mealsVariantsId == mealsVariantsId) &&
            const DeepCollectionEquality()
                .equals(other.workoutTypesIds, workoutTypesIds) &&
            const DeepCollectionEquality()
                .equals(other.muscleFocusIds, muscleFocusIds) &&
            const DeepCollectionEquality()
                .equals(other.exciseDays, exciseDays) &&
            const DeepCollectionEquality()
                .equals(other.equipmentsIds, equipmentsIds) &&
            (identical(other.numOfDailyMeals, numOfDailyMeals) ||
                other.numOfDailyMeals == numOfDailyMeals) &&
            (identical(other.mealVarietyLevel, mealVarietyLevel) ||
                other.mealVarietyLevel == mealVarietyLevel) &&
            (identical(other.weaklyTrainingCount, weaklyTrainingCount) ||
                other.weaklyTrainingCount == weaklyTrainingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      age,
      height,
      current_weight,
      const DeepCollectionEquality().hash(selectedGaols),
      targetWeight,
      diet_id,
      const DeepCollectionEquality().hash(likedMealsIds),
      const DeepCollectionEquality().hash(notLikedMealsIds),
      mealsVariantsId,
      const DeepCollectionEquality().hash(workoutTypesIds),
      const DeepCollectionEquality().hash(muscleFocusIds),
      const DeepCollectionEquality().hash(exciseDays),
      const DeepCollectionEquality().hash(equipmentsIds),
      numOfDailyMeals,
      mealVarietyLevel,
      weaklyTrainingCount);

  @override
  String toString() {
    return 'UserPersonalInfoModel(gender: $gender, age: $age, height: $height, current_weight: $current_weight, selectedGaols: $selectedGaols, targetWeight: $targetWeight, diet_id: $diet_id, likedMealsIds: $likedMealsIds, notLikedMealsIds: $notLikedMealsIds, mealsVariantsId: $mealsVariantsId, workoutTypesIds: $workoutTypesIds, muscleFocusIds: $muscleFocusIds, exciseDays: $exciseDays, equipmentsIds: $equipmentsIds, numOfDailyMeals: $numOfDailyMeals, mealVarietyLevel: $mealVarietyLevel, weaklyTrainingCount: $weaklyTrainingCount)';
  }
}

/// @nodoc
abstract mixin class $UserPersonalInfoModelCopyWith<$Res> {
  factory $UserPersonalInfoModelCopyWith(UserPersonalInfoModel value,
          $Res Function(UserPersonalInfoModel) _then) =
      _$UserPersonalInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {GenderEnum? gender,
      int? age,
      double? height,
      double? current_weight,
      List<UserGoalsModel> selectedGaols,
      double? targetWeight,
      int? diet_id,
      List<int> likedMealsIds,
      List<int> notLikedMealsIds,
      int? mealsVariantsId,
      List<int> workoutTypesIds,
      List<String> muscleFocusIds,
      List<String> exciseDays,
      List<int> equipmentsIds,
      String? numOfDailyMeals,
      int? mealVarietyLevel,
      int? weaklyTrainingCount});
}

/// @nodoc
class _$UserPersonalInfoModelCopyWithImpl<$Res>
    implements $UserPersonalInfoModelCopyWith<$Res> {
  _$UserPersonalInfoModelCopyWithImpl(this._self, this._then);

  final UserPersonalInfoModel _self;
  final $Res Function(UserPersonalInfoModel) _then;

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? current_weight = freezed,
    Object? selectedGaols = null,
    Object? targetWeight = freezed,
    Object? diet_id = freezed,
    Object? likedMealsIds = null,
    Object? notLikedMealsIds = null,
    Object? mealsVariantsId = freezed,
    Object? workoutTypesIds = null,
    Object? muscleFocusIds = null,
    Object? exciseDays = null,
    Object? equipmentsIds = null,
    Object? numOfDailyMeals = freezed,
    Object? mealVarietyLevel = freezed,
    Object? weaklyTrainingCount = freezed,
  }) {
    return _then(_self.copyWith(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      current_weight: freezed == current_weight
          ? _self.current_weight
          : current_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedGaols: null == selectedGaols
          ? _self.selectedGaols
          : selectedGaols // ignore: cast_nullable_to_non_nullable
              as List<UserGoalsModel>,
      targetWeight: freezed == targetWeight
          ? _self.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      diet_id: freezed == diet_id
          ? _self.diet_id
          : diet_id // ignore: cast_nullable_to_non_nullable
              as int?,
      likedMealsIds: null == likedMealsIds
          ? _self.likedMealsIds
          : likedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notLikedMealsIds: null == notLikedMealsIds
          ? _self.notLikedMealsIds
          : notLikedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mealsVariantsId: freezed == mealsVariantsId
          ? _self.mealsVariantsId
          : mealsVariantsId // ignore: cast_nullable_to_non_nullable
              as int?,
      workoutTypesIds: null == workoutTypesIds
          ? _self.workoutTypesIds
          : workoutTypesIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      muscleFocusIds: null == muscleFocusIds
          ? _self.muscleFocusIds
          : muscleFocusIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exciseDays: null == exciseDays
          ? _self.exciseDays
          : exciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      equipmentsIds: null == equipmentsIds
          ? _self.equipmentsIds
          : equipmentsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      numOfDailyMeals: freezed == numOfDailyMeals
          ? _self.numOfDailyMeals
          : numOfDailyMeals // ignore: cast_nullable_to_non_nullable
              as String?,
      mealVarietyLevel: freezed == mealVarietyLevel
          ? _self.mealVarietyLevel
          : mealVarietyLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      weaklyTrainingCount: freezed == weaklyTrainingCount
          ? _self.weaklyTrainingCount
          : weaklyTrainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserPersonalInfoModel].
extension UserPersonalInfoModelPatterns on UserPersonalInfoModel {
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
    TResult Function(_UserPersonalInfoModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserPersonalInfoModel() when $default != null:
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
    TResult Function(_UserPersonalInfoModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPersonalInfoModel():
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
    TResult? Function(_UserPersonalInfoModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPersonalInfoModel() when $default != null:
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
            GenderEnum? gender,
            int? age,
            double? height,
            double? current_weight,
            List<UserGoalsModel> selectedGaols,
            double? targetWeight,
            int? diet_id,
            List<int> likedMealsIds,
            List<int> notLikedMealsIds,
            int? mealsVariantsId,
            List<int> workoutTypesIds,
            List<String> muscleFocusIds,
            List<String> exciseDays,
            List<int> equipmentsIds,
            String? numOfDailyMeals,
            int? mealVarietyLevel,
            int? weaklyTrainingCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserPersonalInfoModel() when $default != null:
        return $default(
            _that.gender,
            _that.age,
            _that.height,
            _that.current_weight,
            _that.selectedGaols,
            _that.targetWeight,
            _that.diet_id,
            _that.likedMealsIds,
            _that.notLikedMealsIds,
            _that.mealsVariantsId,
            _that.workoutTypesIds,
            _that.muscleFocusIds,
            _that.exciseDays,
            _that.equipmentsIds,
            _that.numOfDailyMeals,
            _that.mealVarietyLevel,
            _that.weaklyTrainingCount);
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
            GenderEnum? gender,
            int? age,
            double? height,
            double? current_weight,
            List<UserGoalsModel> selectedGaols,
            double? targetWeight,
            int? diet_id,
            List<int> likedMealsIds,
            List<int> notLikedMealsIds,
            int? mealsVariantsId,
            List<int> workoutTypesIds,
            List<String> muscleFocusIds,
            List<String> exciseDays,
            List<int> equipmentsIds,
            String? numOfDailyMeals,
            int? mealVarietyLevel,
            int? weaklyTrainingCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPersonalInfoModel():
        return $default(
            _that.gender,
            _that.age,
            _that.height,
            _that.current_weight,
            _that.selectedGaols,
            _that.targetWeight,
            _that.diet_id,
            _that.likedMealsIds,
            _that.notLikedMealsIds,
            _that.mealsVariantsId,
            _that.workoutTypesIds,
            _that.muscleFocusIds,
            _that.exciseDays,
            _that.equipmentsIds,
            _that.numOfDailyMeals,
            _that.mealVarietyLevel,
            _that.weaklyTrainingCount);
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
            GenderEnum? gender,
            int? age,
            double? height,
            double? current_weight,
            List<UserGoalsModel> selectedGaols,
            double? targetWeight,
            int? diet_id,
            List<int> likedMealsIds,
            List<int> notLikedMealsIds,
            int? mealsVariantsId,
            List<int> workoutTypesIds,
            List<String> muscleFocusIds,
            List<String> exciseDays,
            List<int> equipmentsIds,
            String? numOfDailyMeals,
            int? mealVarietyLevel,
            int? weaklyTrainingCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserPersonalInfoModel() when $default != null:
        return $default(
            _that.gender,
            _that.age,
            _that.height,
            _that.current_weight,
            _that.selectedGaols,
            _that.targetWeight,
            _that.diet_id,
            _that.likedMealsIds,
            _that.notLikedMealsIds,
            _that.mealsVariantsId,
            _that.workoutTypesIds,
            _that.muscleFocusIds,
            _that.exciseDays,
            _that.equipmentsIds,
            _that.numOfDailyMeals,
            _that.mealVarietyLevel,
            _that.weaklyTrainingCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserPersonalInfoModel implements UserPersonalInfoModel {
  _UserPersonalInfoModel(
      {this.gender,
      this.age,
      this.height,
      this.current_weight,
      required this.selectedGaols,
      this.targetWeight,
      this.diet_id,
      this.likedMealsIds = const [],
      this.notLikedMealsIds = const [],
      this.mealsVariantsId,
      this.workoutTypesIds = const [],
      this.muscleFocusIds = const [],
      this.exciseDays = const [],
      this.equipmentsIds = const [],
      this.numOfDailyMeals,
      this.mealVarietyLevel,
      this.weaklyTrainingCount});
  factory _UserPersonalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserPersonalInfoModelFromJson(json);

  @override
  final GenderEnum? gender;
  @override
  final int? age;
  @override
  final double? height;
  @override
  final double? current_weight;
  @override
  final List<UserGoalsModel> selectedGaols;
  @override
  final double? targetWeight;
  @override
  final int? diet_id;
  @override
  @JsonKey()
  final List<int> likedMealsIds;
  @override
  @JsonKey()
  final List<int> notLikedMealsIds;
  @override
  final int? mealsVariantsId;
  @override
  @JsonKey()
  final List<int> workoutTypesIds;
  @override
  @JsonKey()
  final List<String> muscleFocusIds;
  @override
  @JsonKey()
  final List<String> exciseDays;
  @override
  @JsonKey()
  final List<int> equipmentsIds;
  @override
  final String? numOfDailyMeals;
  @override
  final int? mealVarietyLevel;
  @override
  final int? weaklyTrainingCount;

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserPersonalInfoModelCopyWith<_UserPersonalInfoModel> get copyWith =>
      __$UserPersonalInfoModelCopyWithImpl<_UserPersonalInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserPersonalInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserPersonalInfoModel &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.current_weight, current_weight) ||
                other.current_weight == current_weight) &&
            const DeepCollectionEquality()
                .equals(other.selectedGaols, selectedGaols) &&
            (identical(other.targetWeight, targetWeight) ||
                other.targetWeight == targetWeight) &&
            (identical(other.diet_id, diet_id) || other.diet_id == diet_id) &&
            const DeepCollectionEquality()
                .equals(other.likedMealsIds, likedMealsIds) &&
            const DeepCollectionEquality()
                .equals(other.notLikedMealsIds, notLikedMealsIds) &&
            (identical(other.mealsVariantsId, mealsVariantsId) ||
                other.mealsVariantsId == mealsVariantsId) &&
            const DeepCollectionEquality()
                .equals(other.workoutTypesIds, workoutTypesIds) &&
            const DeepCollectionEquality()
                .equals(other.muscleFocusIds, muscleFocusIds) &&
            const DeepCollectionEquality()
                .equals(other.exciseDays, exciseDays) &&
            const DeepCollectionEquality()
                .equals(other.equipmentsIds, equipmentsIds) &&
            (identical(other.numOfDailyMeals, numOfDailyMeals) ||
                other.numOfDailyMeals == numOfDailyMeals) &&
            (identical(other.mealVarietyLevel, mealVarietyLevel) ||
                other.mealVarietyLevel == mealVarietyLevel) &&
            (identical(other.weaklyTrainingCount, weaklyTrainingCount) ||
                other.weaklyTrainingCount == weaklyTrainingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      age,
      height,
      current_weight,
      const DeepCollectionEquality().hash(selectedGaols),
      targetWeight,
      diet_id,
      const DeepCollectionEquality().hash(likedMealsIds),
      const DeepCollectionEquality().hash(notLikedMealsIds),
      mealsVariantsId,
      const DeepCollectionEquality().hash(workoutTypesIds),
      const DeepCollectionEquality().hash(muscleFocusIds),
      const DeepCollectionEquality().hash(exciseDays),
      const DeepCollectionEquality().hash(equipmentsIds),
      numOfDailyMeals,
      mealVarietyLevel,
      weaklyTrainingCount);

  @override
  String toString() {
    return 'UserPersonalInfoModel(gender: $gender, age: $age, height: $height, current_weight: $current_weight, selectedGaols: $selectedGaols, targetWeight: $targetWeight, diet_id: $diet_id, likedMealsIds: $likedMealsIds, notLikedMealsIds: $notLikedMealsIds, mealsVariantsId: $mealsVariantsId, workoutTypesIds: $workoutTypesIds, muscleFocusIds: $muscleFocusIds, exciseDays: $exciseDays, equipmentsIds: $equipmentsIds, numOfDailyMeals: $numOfDailyMeals, mealVarietyLevel: $mealVarietyLevel, weaklyTrainingCount: $weaklyTrainingCount)';
  }
}

/// @nodoc
abstract mixin class _$UserPersonalInfoModelCopyWith<$Res>
    implements $UserPersonalInfoModelCopyWith<$Res> {
  factory _$UserPersonalInfoModelCopyWith(_UserPersonalInfoModel value,
          $Res Function(_UserPersonalInfoModel) _then) =
      __$UserPersonalInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GenderEnum? gender,
      int? age,
      double? height,
      double? current_weight,
      List<UserGoalsModel> selectedGaols,
      double? targetWeight,
      int? diet_id,
      List<int> likedMealsIds,
      List<int> notLikedMealsIds,
      int? mealsVariantsId,
      List<int> workoutTypesIds,
      List<String> muscleFocusIds,
      List<String> exciseDays,
      List<int> equipmentsIds,
      String? numOfDailyMeals,
      int? mealVarietyLevel,
      int? weaklyTrainingCount});
}

/// @nodoc
class __$UserPersonalInfoModelCopyWithImpl<$Res>
    implements _$UserPersonalInfoModelCopyWith<$Res> {
  __$UserPersonalInfoModelCopyWithImpl(this._self, this._then);

  final _UserPersonalInfoModel _self;
  final $Res Function(_UserPersonalInfoModel) _then;

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? current_weight = freezed,
    Object? selectedGaols = null,
    Object? targetWeight = freezed,
    Object? diet_id = freezed,
    Object? likedMealsIds = null,
    Object? notLikedMealsIds = null,
    Object? mealsVariantsId = freezed,
    Object? workoutTypesIds = null,
    Object? muscleFocusIds = null,
    Object? exciseDays = null,
    Object? equipmentsIds = null,
    Object? numOfDailyMeals = freezed,
    Object? mealVarietyLevel = freezed,
    Object? weaklyTrainingCount = freezed,
  }) {
    return _then(_UserPersonalInfoModel(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      current_weight: freezed == current_weight
          ? _self.current_weight
          : current_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedGaols: null == selectedGaols
          ? _self.selectedGaols
          : selectedGaols // ignore: cast_nullable_to_non_nullable
              as List<UserGoalsModel>,
      targetWeight: freezed == targetWeight
          ? _self.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      diet_id: freezed == diet_id
          ? _self.diet_id
          : diet_id // ignore: cast_nullable_to_non_nullable
              as int?,
      likedMealsIds: null == likedMealsIds
          ? _self.likedMealsIds
          : likedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notLikedMealsIds: null == notLikedMealsIds
          ? _self.notLikedMealsIds
          : notLikedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mealsVariantsId: freezed == mealsVariantsId
          ? _self.mealsVariantsId
          : mealsVariantsId // ignore: cast_nullable_to_non_nullable
              as int?,
      workoutTypesIds: null == workoutTypesIds
          ? _self.workoutTypesIds
          : workoutTypesIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      muscleFocusIds: null == muscleFocusIds
          ? _self.muscleFocusIds
          : muscleFocusIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exciseDays: null == exciseDays
          ? _self.exciseDays
          : exciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      equipmentsIds: null == equipmentsIds
          ? _self.equipmentsIds
          : equipmentsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      numOfDailyMeals: freezed == numOfDailyMeals
          ? _self.numOfDailyMeals
          : numOfDailyMeals // ignore: cast_nullable_to_non_nullable
              as String?,
      mealVarietyLevel: freezed == mealVarietyLevel
          ? _self.mealVarietyLevel
          : mealVarietyLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      weaklyTrainingCount: freezed == weaklyTrainingCount
          ? _self.weaklyTrainingCount
          : weaklyTrainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
