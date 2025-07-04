// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_personal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPersonalInfoModel _$UserPersonalInfoModelFromJson(
    Map<String, dynamic> json) {
  return _UserPersonalInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserPersonalInfoModel {
  GenderEnum? get gender => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get current_weight => throw _privateConstructorUsedError;
  List<UserGoalsModel> get selectedGaols => throw _privateConstructorUsedError;
  double? get targetWeight => throw _privateConstructorUsedError;
  int? get diet_id => throw _privateConstructorUsedError;
  List<int> get likedMealsIds => throw _privateConstructorUsedError;
  List<int> get notLikedMealsIds => throw _privateConstructorUsedError;
  int? get mealsVariantsId => throw _privateConstructorUsedError;
  List<int> get workoutTypesIds => throw _privateConstructorUsedError;
  List<String> get muscleFocusIds => throw _privateConstructorUsedError;
  List<String> get exciseDays => throw _privateConstructorUsedError;
  List<int> get equipmentsIds => throw _privateConstructorUsedError;
  String? get numOfDailyMeals => throw _privateConstructorUsedError;
  int? get mealVarietyLevel => throw _privateConstructorUsedError;
  int? get weaklyTrainingCount => throw _privateConstructorUsedError;

  /// Serializes this UserPersonalInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPersonalInfoModelCopyWith<UserPersonalInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPersonalInfoModelCopyWith<$Res> {
  factory $UserPersonalInfoModelCopyWith(UserPersonalInfoModel value,
          $Res Function(UserPersonalInfoModel) then) =
      _$UserPersonalInfoModelCopyWithImpl<$Res, UserPersonalInfoModel>;
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
class _$UserPersonalInfoModelCopyWithImpl<$Res,
        $Val extends UserPersonalInfoModel>
    implements $UserPersonalInfoModelCopyWith<$Res> {
  _$UserPersonalInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      current_weight: freezed == current_weight
          ? _value.current_weight
          : current_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedGaols: null == selectedGaols
          ? _value.selectedGaols
          : selectedGaols // ignore: cast_nullable_to_non_nullable
              as List<UserGoalsModel>,
      targetWeight: freezed == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      diet_id: freezed == diet_id
          ? _value.diet_id
          : diet_id // ignore: cast_nullable_to_non_nullable
              as int?,
      likedMealsIds: null == likedMealsIds
          ? _value.likedMealsIds
          : likedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notLikedMealsIds: null == notLikedMealsIds
          ? _value.notLikedMealsIds
          : notLikedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mealsVariantsId: freezed == mealsVariantsId
          ? _value.mealsVariantsId
          : mealsVariantsId // ignore: cast_nullable_to_non_nullable
              as int?,
      workoutTypesIds: null == workoutTypesIds
          ? _value.workoutTypesIds
          : workoutTypesIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      muscleFocusIds: null == muscleFocusIds
          ? _value.muscleFocusIds
          : muscleFocusIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exciseDays: null == exciseDays
          ? _value.exciseDays
          : exciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      equipmentsIds: null == equipmentsIds
          ? _value.equipmentsIds
          : equipmentsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      numOfDailyMeals: freezed == numOfDailyMeals
          ? _value.numOfDailyMeals
          : numOfDailyMeals // ignore: cast_nullable_to_non_nullable
              as String?,
      mealVarietyLevel: freezed == mealVarietyLevel
          ? _value.mealVarietyLevel
          : mealVarietyLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      weaklyTrainingCount: freezed == weaklyTrainingCount
          ? _value.weaklyTrainingCount
          : weaklyTrainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPersonalInfoModelImplCopyWith<$Res>
    implements $UserPersonalInfoModelCopyWith<$Res> {
  factory _$$UserPersonalInfoModelImplCopyWith(
          _$UserPersonalInfoModelImpl value,
          $Res Function(_$UserPersonalInfoModelImpl) then) =
      __$$UserPersonalInfoModelImplCopyWithImpl<$Res>;
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
class __$$UserPersonalInfoModelImplCopyWithImpl<$Res>
    extends _$UserPersonalInfoModelCopyWithImpl<$Res,
        _$UserPersonalInfoModelImpl>
    implements _$$UserPersonalInfoModelImplCopyWith<$Res> {
  __$$UserPersonalInfoModelImplCopyWithImpl(_$UserPersonalInfoModelImpl _value,
      $Res Function(_$UserPersonalInfoModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$UserPersonalInfoModelImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      current_weight: freezed == current_weight
          ? _value.current_weight
          : current_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedGaols: null == selectedGaols
          ? _value.selectedGaols
          : selectedGaols // ignore: cast_nullable_to_non_nullable
              as List<UserGoalsModel>,
      targetWeight: freezed == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      diet_id: freezed == diet_id
          ? _value.diet_id
          : diet_id // ignore: cast_nullable_to_non_nullable
              as int?,
      likedMealsIds: null == likedMealsIds
          ? _value.likedMealsIds
          : likedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      notLikedMealsIds: null == notLikedMealsIds
          ? _value.notLikedMealsIds
          : notLikedMealsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mealsVariantsId: freezed == mealsVariantsId
          ? _value.mealsVariantsId
          : mealsVariantsId // ignore: cast_nullable_to_non_nullable
              as int?,
      workoutTypesIds: null == workoutTypesIds
          ? _value.workoutTypesIds
          : workoutTypesIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      muscleFocusIds: null == muscleFocusIds
          ? _value.muscleFocusIds
          : muscleFocusIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exciseDays: null == exciseDays
          ? _value.exciseDays
          : exciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      equipmentsIds: null == equipmentsIds
          ? _value.equipmentsIds
          : equipmentsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      numOfDailyMeals: freezed == numOfDailyMeals
          ? _value.numOfDailyMeals
          : numOfDailyMeals // ignore: cast_nullable_to_non_nullable
              as String?,
      mealVarietyLevel: freezed == mealVarietyLevel
          ? _value.mealVarietyLevel
          : mealVarietyLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      weaklyTrainingCount: freezed == weaklyTrainingCount
          ? _value.weaklyTrainingCount
          : weaklyTrainingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPersonalInfoModelImpl implements _UserPersonalInfoModel {
  _$UserPersonalInfoModelImpl(
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

  factory _$UserPersonalInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPersonalInfoModelImplFromJson(json);

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

  @override
  String toString() {
    return 'UserPersonalInfoModel(gender: $gender, age: $age, height: $height, current_weight: $current_weight, selectedGaols: $selectedGaols, targetWeight: $targetWeight, diet_id: $diet_id, likedMealsIds: $likedMealsIds, notLikedMealsIds: $notLikedMealsIds, mealsVariantsId: $mealsVariantsId, workoutTypesIds: $workoutTypesIds, muscleFocusIds: $muscleFocusIds, exciseDays: $exciseDays, equipmentsIds: $equipmentsIds, numOfDailyMeals: $numOfDailyMeals, mealVarietyLevel: $mealVarietyLevel, weaklyTrainingCount: $weaklyTrainingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPersonalInfoModelImpl &&
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

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPersonalInfoModelImplCopyWith<_$UserPersonalInfoModelImpl>
      get copyWith => __$$UserPersonalInfoModelImplCopyWithImpl<
          _$UserPersonalInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPersonalInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UserPersonalInfoModel implements UserPersonalInfoModel {
  factory _UserPersonalInfoModel(
      {final GenderEnum? gender,
      final int? age,
      final double? height,
      final double? current_weight,
      required final List<UserGoalsModel> selectedGaols,
      final double? targetWeight,
      final int? diet_id,
      final List<int> likedMealsIds,
      final List<int> notLikedMealsIds,
      final int? mealsVariantsId,
      final List<int> workoutTypesIds,
      final List<String> muscleFocusIds,
      final List<String> exciseDays,
      final List<int> equipmentsIds,
      final String? numOfDailyMeals,
      final int? mealVarietyLevel,
      final int? weaklyTrainingCount}) = _$UserPersonalInfoModelImpl;

  factory _UserPersonalInfoModel.fromJson(Map<String, dynamic> json) =
      _$UserPersonalInfoModelImpl.fromJson;

  @override
  GenderEnum? get gender;
  @override
  int? get age;
  @override
  double? get height;
  @override
  double? get current_weight;
  @override
  List<UserGoalsModel> get selectedGaols;
  @override
  double? get targetWeight;
  @override
  int? get diet_id;
  @override
  List<int> get likedMealsIds;
  @override
  List<int> get notLikedMealsIds;
  @override
  int? get mealsVariantsId;
  @override
  List<int> get workoutTypesIds;
  @override
  List<String> get muscleFocusIds;
  @override
  List<String> get exciseDays;
  @override
  List<int> get equipmentsIds;
  @override
  String? get numOfDailyMeals;
  @override
  int? get mealVarietyLevel;
  @override
  int? get weaklyTrainingCount;

  /// Create a copy of UserPersonalInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPersonalInfoModelImplCopyWith<_$UserPersonalInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
