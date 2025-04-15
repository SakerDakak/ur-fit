// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool? get hasValidSubscription => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  City? get city => throw _privateConstructorUsedError;
  @GenderEnumConverter()
  GenderEnum? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_id')
  int? get packageId => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_weight')
  int? get currentWeight => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get otpCode => throw _privateConstructorUsedError;
  List<Goal>? get goals => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_weight')
  int? get targetWeight => throw _privateConstructorUsedError;
  @BodyShapeConverter()
  @JsonKey(name: 'body_shape')
  BodyShape? get bodyShape =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'muscleFocuses') required List<MuscleFocus>? muscleFocuses,
// @JsonKey(name: 'training_days_per_week') required int? trainingDaysPerWeek,
  @JsonKey(name: 'body_parts')
  List<String>? get bodyParts => throw _privateConstructorUsedError;
  @JsonKey(name: 'exercise_days')
  List<String>? get exerciseDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'workoutTypes')
  List<WorkoutType>? get workoutTypes => throw _privateConstructorUsedError;
  List<Equipment>? get equipments => throw _privateConstructorUsedError;
  @DietConverter()
  Diet? get diet => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_types')
  List<RecipeType>? get recipeTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'foods_not_liked')
  List<FoodNotLiked>? get foodsNotLiked => throw _privateConstructorUsedError;
  @MealVarietyConverter()
  @JsonKey(name: 'meal_variety')
  MealVariety? get mealVariety => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_checked')
  String? get isChecked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  String? get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  String? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_key')
  String? get countryKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_have_exercise_plan')
  bool? get haveExercisePlan => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_have_meal_plan')
  bool? get haveMealPlan => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      bool? hasValidSubscription,
      Country? country,
      @JsonKey(name: 'city_id') City? city,
      @GenderEnumConverter() GenderEnum? gender,
      @JsonKey(name: 'package_id') int? packageId,
      int? age,
      @JsonKey(name: 'current_weight') int? currentWeight,
      int? height,
      int? otpCode,
      List<Goal>? goals,
      @JsonKey(name: 'target_weight') int? targetWeight,
      @BodyShapeConverter() @JsonKey(name: 'body_shape') BodyShape? bodyShape,
      @JsonKey(name: 'body_parts') List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
      @JsonKey(name: 'workoutTypes') List<WorkoutType>? workoutTypes,
      List<Equipment>? equipments,
      @DietConverter() Diet? diet,
      @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
      @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
      @MealVarietyConverter()
      @JsonKey(name: 'meal_variety')
      MealVariety? mealVariety,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'is_checked') String? isChecked,
      @JsonKey(name: 'is_completed') String? isCompleted,
      @JsonKey(name: 'is_active') String? isActive,
      @JsonKey(name: 'country_key') String? countryKey,
      @JsonKey(name: 'is_have_exercise_plan') bool? haveExercisePlan,
      @JsonKey(name: 'is_have_meal_plan') bool? haveMealPlan});

  $CountryCopyWith<$Res>? get country;
  $CityCopyWith<$Res>? get city;
  $BodyShapeCopyWith<$Res>? get bodyShape;
  $DietCopyWith<$Res>? get diet;
  $MealVarietyCopyWith<$Res>? get mealVariety;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? hasValidSubscription = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? gender = freezed,
    Object? packageId = freezed,
    Object? age = freezed,
    Object? currentWeight = freezed,
    Object? height = freezed,
    Object? otpCode = freezed,
    Object? goals = freezed,
    Object? targetWeight = freezed,
    Object? bodyShape = freezed,
    Object? bodyParts = freezed,
    Object? exerciseDays = freezed,
    Object? workoutTypes = freezed,
    Object? equipments = freezed,
    Object? diet = freezed,
    Object? recipeTypes = freezed,
    Object? foodsNotLiked = freezed,
    Object? mealVariety = freezed,
    Object? emailVerifiedAt = freezed,
    Object? isChecked = freezed,
    Object? isCompleted = freezed,
    Object? isActive = freezed,
    Object? countryKey = freezed,
    Object? haveExercisePlan = freezed,
    Object? haveMealPlan = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hasValidSubscription: freezed == hasValidSubscription
          ? _value.hasValidSubscription
          : hasValidSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWeight: freezed == currentWeight
          ? _value.currentWeight
          : currentWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      goals: freezed == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
      targetWeight: freezed == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyShape: freezed == bodyShape
          ? _value.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      bodyParts: freezed == bodyParts
          ? _value.bodyParts
          : bodyParts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      exerciseDays: freezed == exerciseDays
          ? _value.exerciseDays
          : exerciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workoutTypes: freezed == workoutTypes
          ? _value.workoutTypes
          : workoutTypes // ignore: cast_nullable_to_non_nullable
              as List<WorkoutType>?,
      equipments: freezed == equipments
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      diet: freezed == diet
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as Diet?,
      recipeTypes: freezed == recipeTypes
          ? _value.recipeTypes
          : recipeTypes // ignore: cast_nullable_to_non_nullable
              as List<RecipeType>?,
      foodsNotLiked: freezed == foodsNotLiked
          ? _value.foodsNotLiked
          : foodsNotLiked // ignore: cast_nullable_to_non_nullable
              as List<FoodNotLiked>?,
      mealVariety: freezed == mealVariety
          ? _value.mealVariety
          : mealVariety // ignore: cast_nullable_to_non_nullable
              as MealVariety?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String?,
      countryKey: freezed == countryKey
          ? _value.countryKey
          : countryKey // ignore: cast_nullable_to_non_nullable
              as String?,
      haveExercisePlan: freezed == haveExercisePlan
          ? _value.haveExercisePlan
          : haveExercisePlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveMealPlan: freezed == haveMealPlan
          ? _value.haveMealPlan
          : haveMealPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyShapeCopyWith<$Res>? get bodyShape {
    if (_value.bodyShape == null) {
      return null;
    }

    return $BodyShapeCopyWith<$Res>(_value.bodyShape!, (value) {
      return _then(_value.copyWith(bodyShape: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DietCopyWith<$Res>? get diet {
    if (_value.diet == null) {
      return null;
    }

    return $DietCopyWith<$Res>(_value.diet!, (value) {
      return _then(_value.copyWith(diet: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MealVarietyCopyWith<$Res>? get mealVariety {
    if (_value.mealVariety == null) {
      return null;
    }

    return $MealVarietyCopyWith<$Res>(_value.mealVariety!, (value) {
      return _then(_value.copyWith(mealVariety: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      bool? hasValidSubscription,
      Country? country,
      @JsonKey(name: 'city_id') City? city,
      @GenderEnumConverter() GenderEnum? gender,
      @JsonKey(name: 'package_id') int? packageId,
      int? age,
      @JsonKey(name: 'current_weight') int? currentWeight,
      int? height,
      int? otpCode,
      List<Goal>? goals,
      @JsonKey(name: 'target_weight') int? targetWeight,
      @BodyShapeConverter() @JsonKey(name: 'body_shape') BodyShape? bodyShape,
      @JsonKey(name: 'body_parts') List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
      @JsonKey(name: 'workoutTypes') List<WorkoutType>? workoutTypes,
      List<Equipment>? equipments,
      @DietConverter() Diet? diet,
      @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
      @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
      @MealVarietyConverter()
      @JsonKey(name: 'meal_variety')
      MealVariety? mealVariety,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'is_checked') String? isChecked,
      @JsonKey(name: 'is_completed') String? isCompleted,
      @JsonKey(name: 'is_active') String? isActive,
      @JsonKey(name: 'country_key') String? countryKey,
      @JsonKey(name: 'is_have_exercise_plan') bool? haveExercisePlan,
      @JsonKey(name: 'is_have_meal_plan') bool? haveMealPlan});

  @override
  $CountryCopyWith<$Res>? get country;
  @override
  $CityCopyWith<$Res>? get city;
  @override
  $BodyShapeCopyWith<$Res>? get bodyShape;
  @override
  $DietCopyWith<$Res>? get diet;
  @override
  $MealVarietyCopyWith<$Res>? get mealVariety;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? hasValidSubscription = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? gender = freezed,
    Object? packageId = freezed,
    Object? age = freezed,
    Object? currentWeight = freezed,
    Object? height = freezed,
    Object? otpCode = freezed,
    Object? goals = freezed,
    Object? targetWeight = freezed,
    Object? bodyShape = freezed,
    Object? bodyParts = freezed,
    Object? exerciseDays = freezed,
    Object? workoutTypes = freezed,
    Object? equipments = freezed,
    Object? diet = freezed,
    Object? recipeTypes = freezed,
    Object? foodsNotLiked = freezed,
    Object? mealVariety = freezed,
    Object? emailVerifiedAt = freezed,
    Object? isChecked = freezed,
    Object? isCompleted = freezed,
    Object? isActive = freezed,
    Object? countryKey = freezed,
    Object? haveExercisePlan = freezed,
    Object? haveMealPlan = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hasValidSubscription: freezed == hasValidSubscription
          ? _value.hasValidSubscription
          : hasValidSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWeight: freezed == currentWeight
          ? _value.currentWeight
          : currentWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      goals: freezed == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
      targetWeight: freezed == targetWeight
          ? _value.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyShape: freezed == bodyShape
          ? _value.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      bodyParts: freezed == bodyParts
          ? _value._bodyParts
          : bodyParts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      exerciseDays: freezed == exerciseDays
          ? _value._exerciseDays
          : exerciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workoutTypes: freezed == workoutTypes
          ? _value._workoutTypes
          : workoutTypes // ignore: cast_nullable_to_non_nullable
              as List<WorkoutType>?,
      equipments: freezed == equipments
          ? _value._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      diet: freezed == diet
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as Diet?,
      recipeTypes: freezed == recipeTypes
          ? _value._recipeTypes
          : recipeTypes // ignore: cast_nullable_to_non_nullable
              as List<RecipeType>?,
      foodsNotLiked: freezed == foodsNotLiked
          ? _value._foodsNotLiked
          : foodsNotLiked // ignore: cast_nullable_to_non_nullable
              as List<FoodNotLiked>?,
      mealVariety: freezed == mealVariety
          ? _value.mealVariety
          : mealVariety // ignore: cast_nullable_to_non_nullable
              as MealVariety?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as String?,
      countryKey: freezed == countryKey
          ? _value.countryKey
          : countryKey // ignore: cast_nullable_to_non_nullable
              as String?,
      haveExercisePlan: freezed == haveExercisePlan
          ? _value.haveExercisePlan
          : haveExercisePlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveMealPlan: freezed == haveMealPlan
          ? _value.haveMealPlan
          : haveMealPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.hasValidSubscription,
      required this.country,
      @JsonKey(name: 'city_id') required this.city,
      @GenderEnumConverter() this.gender,
      @JsonKey(name: 'package_id') required this.packageId,
      required this.age,
      @JsonKey(name: 'current_weight') required this.currentWeight,
      required this.height,
      required this.otpCode,
      required final List<Goal>? goals,
      @JsonKey(name: 'target_weight') required this.targetWeight,
      @BodyShapeConverter()
      @JsonKey(name: 'body_shape')
      required this.bodyShape,
      @JsonKey(name: 'body_parts') required final List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') required final List<String>? exerciseDays,
      @JsonKey(name: 'workoutTypes')
      required final List<WorkoutType>? workoutTypes,
      required final List<Equipment>? equipments,
      @DietConverter() required this.diet,
      @JsonKey(name: 'recipe_types')
      required final List<RecipeType>? recipeTypes,
      @JsonKey(name: 'foods_not_liked')
      required final List<FoodNotLiked>? foodsNotLiked,
      @MealVarietyConverter()
      @JsonKey(name: 'meal_variety')
      required this.mealVariety,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'is_checked') required this.isChecked,
      @JsonKey(name: 'is_completed') required this.isCompleted,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'country_key') required this.countryKey,
      @JsonKey(name: 'is_have_exercise_plan') required this.haveExercisePlan,
      @JsonKey(name: 'is_have_meal_plan') required this.haveMealPlan})
      : _goals = goals,
        _bodyParts = bodyParts,
        _exerciseDays = exerciseDays,
        _workoutTypes = workoutTypes,
        _equipments = equipments,
        _recipeTypes = recipeTypes,
        _foodsNotLiked = foodsNotLiked;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final bool? hasValidSubscription;
  @override
  final Country? country;
  @override
  @JsonKey(name: 'city_id')
  final City? city;
  @override
  @GenderEnumConverter()
  final GenderEnum? gender;
  @override
  @JsonKey(name: 'package_id')
  final int? packageId;
  @override
  final int? age;
  @override
  @JsonKey(name: 'current_weight')
  final int? currentWeight;
  @override
  final int? height;
  @override
  final int? otpCode;
  final List<Goal>? _goals;
  @override
  List<Goal>? get goals {
    final value = _goals;
    if (value == null) return null;
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'target_weight')
  final int? targetWeight;
  @override
  @BodyShapeConverter()
  @JsonKey(name: 'body_shape')
  final BodyShape? bodyShape;
// @JsonKey(name: 'muscleFocuses') required List<MuscleFocus>? muscleFocuses,
// @JsonKey(name: 'training_days_per_week') required int? trainingDaysPerWeek,
  final List<String>? _bodyParts;
// @JsonKey(name: 'muscleFocuses') required List<MuscleFocus>? muscleFocuses,
// @JsonKey(name: 'training_days_per_week') required int? trainingDaysPerWeek,
  @override
  @JsonKey(name: 'body_parts')
  List<String>? get bodyParts {
    final value = _bodyParts;
    if (value == null) return null;
    if (_bodyParts is EqualUnmodifiableListView) return _bodyParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _exerciseDays;
  @override
  @JsonKey(name: 'exercise_days')
  List<String>? get exerciseDays {
    final value = _exerciseDays;
    if (value == null) return null;
    if (_exerciseDays is EqualUnmodifiableListView) return _exerciseDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkoutType>? _workoutTypes;
  @override
  @JsonKey(name: 'workoutTypes')
  List<WorkoutType>? get workoutTypes {
    final value = _workoutTypes;
    if (value == null) return null;
    if (_workoutTypes is EqualUnmodifiableListView) return _workoutTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Equipment>? _equipments;
  @override
  List<Equipment>? get equipments {
    final value = _equipments;
    if (value == null) return null;
    if (_equipments is EqualUnmodifiableListView) return _equipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @DietConverter()
  final Diet? diet;
  final List<RecipeType>? _recipeTypes;
  @override
  @JsonKey(name: 'recipe_types')
  List<RecipeType>? get recipeTypes {
    final value = _recipeTypes;
    if (value == null) return null;
    if (_recipeTypes is EqualUnmodifiableListView) return _recipeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FoodNotLiked>? _foodsNotLiked;
  @override
  @JsonKey(name: 'foods_not_liked')
  List<FoodNotLiked>? get foodsNotLiked {
    final value = _foodsNotLiked;
    if (value == null) return null;
    if (_foodsNotLiked is EqualUnmodifiableListView) return _foodsNotLiked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @MealVarietyConverter()
  @JsonKey(name: 'meal_variety')
  final MealVariety? mealVariety;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'is_checked')
  final String? isChecked;
  @override
  @JsonKey(name: 'is_completed')
  final String? isCompleted;
  @override
  @JsonKey(name: 'is_active')
  final String? isActive;
  @override
  @JsonKey(name: 'country_key')
  final String? countryKey;
  @override
  @JsonKey(name: 'is_have_exercise_plan')
  final bool? haveExercisePlan;
  @override
  @JsonKey(name: 'is_have_meal_plan')
  final bool? haveMealPlan;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, hasValidSubscription: $hasValidSubscription, country: $country, city: $city, gender: $gender, packageId: $packageId, age: $age, currentWeight: $currentWeight, height: $height, otpCode: $otpCode, goals: $goals, targetWeight: $targetWeight, bodyShape: $bodyShape, bodyParts: $bodyParts, exerciseDays: $exerciseDays, workoutTypes: $workoutTypes, equipments: $equipments, diet: $diet, recipeTypes: $recipeTypes, foodsNotLiked: $foodsNotLiked, mealVariety: $mealVariety, emailVerifiedAt: $emailVerifiedAt, isChecked: $isChecked, isCompleted: $isCompleted, isActive: $isActive, countryKey: $countryKey, haveExercisePlan: $haveExercisePlan, haveMealPlan: $haveMealPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hasValidSubscription, hasValidSubscription) ||
                other.hasValidSubscription == hasValidSubscription) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.currentWeight, currentWeight) ||
                other.currentWeight == currentWeight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.targetWeight, targetWeight) ||
                other.targetWeight == targetWeight) &&
            (identical(other.bodyShape, bodyShape) ||
                other.bodyShape == bodyShape) &&
            const DeepCollectionEquality()
                .equals(other._bodyParts, _bodyParts) &&
            const DeepCollectionEquality()
                .equals(other._exerciseDays, _exerciseDays) &&
            const DeepCollectionEquality()
                .equals(other._workoutTypes, _workoutTypes) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments) &&
            (identical(other.diet, diet) || other.diet == diet) &&
            const DeepCollectionEquality()
                .equals(other._recipeTypes, _recipeTypes) &&
            const DeepCollectionEquality()
                .equals(other._foodsNotLiked, _foodsNotLiked) &&
            (identical(other.mealVariety, mealVariety) ||
                other.mealVariety == mealVariety) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.countryKey, countryKey) ||
                other.countryKey == countryKey) &&
            (identical(other.haveExercisePlan, haveExercisePlan) ||
                other.haveExercisePlan == haveExercisePlan) &&
            (identical(other.haveMealPlan, haveMealPlan) ||
                other.haveMealPlan == haveMealPlan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        hasValidSubscription,
        country,
        city,
        gender,
        packageId,
        age,
        currentWeight,
        height,
        otpCode,
        const DeepCollectionEquality().hash(_goals),
        targetWeight,
        bodyShape,
        const DeepCollectionEquality().hash(_bodyParts),
        const DeepCollectionEquality().hash(_exerciseDays),
        const DeepCollectionEquality().hash(_workoutTypes),
        const DeepCollectionEquality().hash(_equipments),
        diet,
        const DeepCollectionEquality().hash(_recipeTypes),
        const DeepCollectionEquality().hash(_foodsNotLiked),
        mealVariety,
        emailVerifiedAt,
        isChecked,
        isCompleted,
        isActive,
        countryKey,
        haveExercisePlan,
        haveMealPlan
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements UserModel {
  const factory _User(
      {required final int id,
      required final String name,
      required final String email,
      required final bool? hasValidSubscription,
      required final Country? country,
      @JsonKey(name: 'city_id') required final City? city,
      @GenderEnumConverter() final GenderEnum? gender,
      @JsonKey(name: 'package_id') required final int? packageId,
      required final int? age,
      @JsonKey(name: 'current_weight') required final int? currentWeight,
      required final int? height,
      required final int? otpCode,
      required final List<Goal>? goals,
      @JsonKey(name: 'target_weight') required final int? targetWeight,
      @BodyShapeConverter()
      @JsonKey(name: 'body_shape')
      required final BodyShape? bodyShape,
      @JsonKey(name: 'body_parts') required final List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') required final List<String>? exerciseDays,
      @JsonKey(name: 'workoutTypes')
      required final List<WorkoutType>? workoutTypes,
      required final List<Equipment>? equipments,
      @DietConverter() required final Diet? diet,
      @JsonKey(name: 'recipe_types')
      required final List<RecipeType>? recipeTypes,
      @JsonKey(name: 'foods_not_liked')
      required final List<FoodNotLiked>? foodsNotLiked,
      @MealVarietyConverter()
      @JsonKey(name: 'meal_variety')
      required final MealVariety? mealVariety,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'is_checked') required final String? isChecked,
      @JsonKey(name: 'is_completed') required final String? isCompleted,
      @JsonKey(name: 'is_active') required final String? isActive,
      @JsonKey(name: 'country_key') required final String? countryKey,
      @JsonKey(name: 'is_have_exercise_plan')
      required final bool? haveExercisePlan,
      @JsonKey(name: 'is_have_meal_plan')
      required final bool? haveMealPlan}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  bool? get hasValidSubscription;
  @override
  Country? get country;
  @override
  @JsonKey(name: 'city_id')
  City? get city;
  @override
  @GenderEnumConverter()
  GenderEnum? get gender;
  @override
  @JsonKey(name: 'package_id')
  int? get packageId;
  @override
  int? get age;
  @override
  @JsonKey(name: 'current_weight')
  int? get currentWeight;
  @override
  int? get height;
  @override
  int? get otpCode;
  @override
  List<Goal>? get goals;
  @override
  @JsonKey(name: 'target_weight')
  int? get targetWeight;
  @override
  @BodyShapeConverter()
  @JsonKey(name: 'body_shape')
  BodyShape?
      get bodyShape; // @JsonKey(name: 'muscleFocuses') required List<MuscleFocus>? muscleFocuses,
// @JsonKey(name: 'training_days_per_week') required int? trainingDaysPerWeek,
  @override
  @JsonKey(name: 'body_parts')
  List<String>? get bodyParts;
  @override
  @JsonKey(name: 'exercise_days')
  List<String>? get exerciseDays;
  @override
  @JsonKey(name: 'workoutTypes')
  List<WorkoutType>? get workoutTypes;
  @override
  List<Equipment>? get equipments;
  @override
  @DietConverter()
  Diet? get diet;
  @override
  @JsonKey(name: 'recipe_types')
  List<RecipeType>? get recipeTypes;
  @override
  @JsonKey(name: 'foods_not_liked')
  List<FoodNotLiked>? get foodsNotLiked;
  @override
  @MealVarietyConverter()
  @JsonKey(name: 'meal_variety')
  MealVariety? get mealVariety;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'is_checked')
  String? get isChecked;
  @override
  @JsonKey(name: 'is_completed')
  String? get isCompleted;
  @override
  @JsonKey(name: 'is_active')
  String? get isActive;
  @override
  @JsonKey(name: 'country_key')
  String? get countryKey;
  @override
  @JsonKey(name: 'is_have_exercise_plan')
  bool? get haveExercisePlan;
  @override
  @JsonKey(name: 'is_have_meal_plan')
  bool? get haveMealPlan;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  _$CountryImpl({required this.id, required this.name});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Country(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  factory _Country({required final int id, required final String name}) =
      _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  _$CityImpl({required this.id, required this.name});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'City(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  factory _City({required final int id, required final String name}) =
      _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return _Goal.fromJson(json);
}

/// @nodoc
mixin _$Goal {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Goal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoalCopyWith<Goal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res, Goal>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res, $Val extends Goal>
    implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalImplCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$GoalImplCopyWith(
          _$GoalImpl value, $Res Function(_$GoalImpl) then) =
      __$$GoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GoalImplCopyWithImpl<$Res>
    extends _$GoalCopyWithImpl<$Res, _$GoalImpl>
    implements _$$GoalImplCopyWith<$Res> {
  __$$GoalImplCopyWithImpl(_$GoalImpl _value, $Res Function(_$GoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GoalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalImpl implements _Goal {
  _$GoalImpl({required this.id, required this.name});

  factory _$GoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Goal(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      __$$GoalImplCopyWithImpl<_$GoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalImplToJson(
      this,
    );
  }
}

abstract class _Goal implements Goal {
  factory _Goal({required final int id, required final String name}) =
      _$GoalImpl;

  factory _Goal.fromJson(Map<String, dynamic> json) = _$GoalImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalImplCopyWith<_$GoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyShape _$BodyShapeFromJson(Map<String, dynamic> json) {
  return _BodyShape.fromJson(json);
}

/// @nodoc
mixin _$BodyShape {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BodyShape to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyShapeCopyWith<BodyShape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyShapeCopyWith<$Res> {
  factory $BodyShapeCopyWith(BodyShape value, $Res Function(BodyShape) then) =
      _$BodyShapeCopyWithImpl<$Res, BodyShape>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BodyShapeCopyWithImpl<$Res, $Val extends BodyShape>
    implements $BodyShapeCopyWith<$Res> {
  _$BodyShapeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyShapeImplCopyWith<$Res>
    implements $BodyShapeCopyWith<$Res> {
  factory _$$BodyShapeImplCopyWith(
          _$BodyShapeImpl value, $Res Function(_$BodyShapeImpl) then) =
      __$$BodyShapeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BodyShapeImplCopyWithImpl<$Res>
    extends _$BodyShapeCopyWithImpl<$Res, _$BodyShapeImpl>
    implements _$$BodyShapeImplCopyWith<$Res> {
  __$$BodyShapeImplCopyWithImpl(
      _$BodyShapeImpl _value, $Res Function(_$BodyShapeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$BodyShapeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyShapeImpl implements _BodyShape {
  _$BodyShapeImpl({required this.id, required this.name});

  factory _$BodyShapeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyShapeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BodyShape(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyShapeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyShapeImplCopyWith<_$BodyShapeImpl> get copyWith =>
      __$$BodyShapeImplCopyWithImpl<_$BodyShapeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyShapeImplToJson(
      this,
    );
  }
}

abstract class _BodyShape implements BodyShape {
  factory _BodyShape({required final int id, required final String name}) =
      _$BodyShapeImpl;

  factory _BodyShape.fromJson(Map<String, dynamic> json) =
      _$BodyShapeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyShapeImplCopyWith<_$BodyShapeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MuscleFocus _$MuscleFocusFromJson(Map<String, dynamic> json) {
  return _MuscleFocus.fromJson(json);
}

/// @nodoc
mixin _$MuscleFocus {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this MuscleFocus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MuscleFocusCopyWith<MuscleFocus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleFocusCopyWith<$Res> {
  factory $MuscleFocusCopyWith(
          MuscleFocus value, $Res Function(MuscleFocus) then) =
      _$MuscleFocusCopyWithImpl<$Res, MuscleFocus>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MuscleFocusCopyWithImpl<$Res, $Val extends MuscleFocus>
    implements $MuscleFocusCopyWith<$Res> {
  _$MuscleFocusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MuscleFocusImplCopyWith<$Res>
    implements $MuscleFocusCopyWith<$Res> {
  factory _$$MuscleFocusImplCopyWith(
          _$MuscleFocusImpl value, $Res Function(_$MuscleFocusImpl) then) =
      __$$MuscleFocusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$MuscleFocusImplCopyWithImpl<$Res>
    extends _$MuscleFocusCopyWithImpl<$Res, _$MuscleFocusImpl>
    implements _$$MuscleFocusImplCopyWith<$Res> {
  __$$MuscleFocusImplCopyWithImpl(
      _$MuscleFocusImpl _value, $Res Function(_$MuscleFocusImpl) _then)
      : super(_value, _then);

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MuscleFocusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleFocusImpl implements _MuscleFocus {
  _$MuscleFocusImpl({required this.id, required this.name});

  factory _$MuscleFocusImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleFocusImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MuscleFocus(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleFocusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleFocusImplCopyWith<_$MuscleFocusImpl> get copyWith =>
      __$$MuscleFocusImplCopyWithImpl<_$MuscleFocusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleFocusImplToJson(
      this,
    );
  }
}

abstract class _MuscleFocus implements MuscleFocus {
  factory _MuscleFocus({required final int id, required final String name}) =
      _$MuscleFocusImpl;

  factory _MuscleFocus.fromJson(Map<String, dynamic> json) =
      _$MuscleFocusImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuscleFocusImplCopyWith<_$MuscleFocusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutType _$WorkoutTypeFromJson(Map<String, dynamic> json) {
  return _WorkoutType.fromJson(json);
}

/// @nodoc
mixin _$WorkoutType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this WorkoutType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutTypeCopyWith<WorkoutType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutTypeCopyWith<$Res> {
  factory $WorkoutTypeCopyWith(
          WorkoutType value, $Res Function(WorkoutType) then) =
      _$WorkoutTypeCopyWithImpl<$Res, WorkoutType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$WorkoutTypeCopyWithImpl<$Res, $Val extends WorkoutType>
    implements $WorkoutTypeCopyWith<$Res> {
  _$WorkoutTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutTypeImplCopyWith<$Res>
    implements $WorkoutTypeCopyWith<$Res> {
  factory _$$WorkoutTypeImplCopyWith(
          _$WorkoutTypeImpl value, $Res Function(_$WorkoutTypeImpl) then) =
      __$$WorkoutTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$WorkoutTypeImplCopyWithImpl<$Res>
    extends _$WorkoutTypeCopyWithImpl<$Res, _$WorkoutTypeImpl>
    implements _$$WorkoutTypeImplCopyWith<$Res> {
  __$$WorkoutTypeImplCopyWithImpl(
      _$WorkoutTypeImpl _value, $Res Function(_$WorkoutTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$WorkoutTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutTypeImpl implements _WorkoutType {
  _$WorkoutTypeImpl({required this.id, required this.name});

  factory _$WorkoutTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'WorkoutType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutTypeImplCopyWith<_$WorkoutTypeImpl> get copyWith =>
      __$$WorkoutTypeImplCopyWithImpl<_$WorkoutTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutTypeImplToJson(
      this,
    );
  }
}

abstract class _WorkoutType implements WorkoutType {
  factory _WorkoutType({required final int id, required final String name}) =
      _$WorkoutTypeImpl;

  factory _WorkoutType.fromJson(Map<String, dynamic> json) =
      _$WorkoutTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutTypeImplCopyWith<_$WorkoutTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$Equipment {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res, Equipment>;
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res, $Val extends Equipment>
    implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentImplCopyWith<$Res>
    implements $EquipmentCopyWith<$Res> {
  factory _$$EquipmentImplCopyWith(
          _$EquipmentImpl value, $Res Function(_$EquipmentImpl) then) =
      __$$EquipmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$$EquipmentImplCopyWithImpl<$Res>
    extends _$EquipmentCopyWithImpl<$Res, _$EquipmentImpl>
    implements _$$EquipmentImplCopyWith<$Res> {
  __$$EquipmentImplCopyWithImpl(
      _$EquipmentImpl _value, $Res Function(_$EquipmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$EquipmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EquipmentImpl implements _Equipment {
  _$EquipmentImpl({required this.id, required this.name, required this.image});

  factory _$EquipmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      __$$EquipmentImplCopyWithImpl<_$EquipmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentImplToJson(
      this,
    );
  }
}

abstract class _Equipment implements Equipment {
  factory _Equipment(
      {required final int id,
      required final String name,
      required final String image}) = _$EquipmentImpl;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$EquipmentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EquipmentImplCopyWith<_$EquipmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Diet _$DietFromJson(Map<String, dynamic> json) {
  return _Diet.fromJson(json);
}

/// @nodoc
mixin _$Diet {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Diet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DietCopyWith<Diet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietCopyWith<$Res> {
  factory $DietCopyWith(Diet value, $Res Function(Diet) then) =
      _$DietCopyWithImpl<$Res, Diet>;
  @useResult
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$DietCopyWithImpl<$Res, $Val extends Diet>
    implements $DietCopyWith<$Res> {
  _$DietCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DietImplCopyWith<$Res> implements $DietCopyWith<$Res> {
  factory _$$DietImplCopyWith(
          _$DietImpl value, $Res Function(_$DietImpl) then) =
      __$$DietImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$$DietImplCopyWithImpl<$Res>
    extends _$DietCopyWithImpl<$Res, _$DietImpl>
    implements _$$DietImplCopyWith<$Res> {
  __$$DietImplCopyWithImpl(_$DietImpl _value, $Res Function(_$DietImpl) _then)
      : super(_value, _then);

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$DietImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DietImpl implements _Diet {
  _$DietImpl({required this.id, required this.key, required this.name});

  factory _$DietImpl.fromJson(Map<String, dynamic> json) =>
      _$$DietImplFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'Diet(id: $id, key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name);

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DietImplCopyWith<_$DietImpl> get copyWith =>
      __$$DietImplCopyWithImpl<_$DietImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DietImplToJson(
      this,
    );
  }
}

abstract class _Diet implements Diet {
  factory _Diet(
      {required final int id,
      required final String key,
      required final String name}) = _$DietImpl;

  factory _Diet.fromJson(Map<String, dynamic> json) = _$DietImpl.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get name;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DietImplCopyWith<_$DietImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipeType _$RecipeTypeFromJson(Map<String, dynamic> json) {
  return _RecipeType.fromJson(json);
}

/// @nodoc
mixin _$RecipeType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RecipeType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeTypeCopyWith<RecipeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeTypeCopyWith<$Res> {
  factory $RecipeTypeCopyWith(
          RecipeType value, $Res Function(RecipeType) then) =
      _$RecipeTypeCopyWithImpl<$Res, RecipeType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$RecipeTypeCopyWithImpl<$Res, $Val extends RecipeType>
    implements $RecipeTypeCopyWith<$Res> {
  _$RecipeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeTypeImplCopyWith<$Res>
    implements $RecipeTypeCopyWith<$Res> {
  factory _$$RecipeTypeImplCopyWith(
          _$RecipeTypeImpl value, $Res Function(_$RecipeTypeImpl) then) =
      __$$RecipeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$RecipeTypeImplCopyWithImpl<$Res>
    extends _$RecipeTypeCopyWithImpl<$Res, _$RecipeTypeImpl>
    implements _$$RecipeTypeImplCopyWith<$Res> {
  __$$RecipeTypeImplCopyWithImpl(
      _$RecipeTypeImpl _value, $Res Function(_$RecipeTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$RecipeTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeTypeImpl implements _RecipeType {
  _$RecipeTypeImpl({required this.id, required this.name});

  factory _$RecipeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'RecipeType(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeTypeImplCopyWith<_$RecipeTypeImpl> get copyWith =>
      __$$RecipeTypeImplCopyWithImpl<_$RecipeTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeTypeImplToJson(
      this,
    );
  }
}

abstract class _RecipeType implements RecipeType {
  factory _RecipeType({required final int id, required final String name}) =
      _$RecipeTypeImpl;

  factory _RecipeType.fromJson(Map<String, dynamic> json) =
      _$RecipeTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeTypeImplCopyWith<_$RecipeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FoodNotLiked _$FoodNotLikedFromJson(Map<String, dynamic> json) {
  return _FoodNotLiked.fromJson(json);
}

/// @nodoc
mixin _$FoodNotLiked {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FoodNotLiked to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodNotLikedCopyWith<FoodNotLiked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodNotLikedCopyWith<$Res> {
  factory $FoodNotLikedCopyWith(
          FoodNotLiked value, $Res Function(FoodNotLiked) then) =
      _$FoodNotLikedCopyWithImpl<$Res, FoodNotLiked>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$FoodNotLikedCopyWithImpl<$Res, $Val extends FoodNotLiked>
    implements $FoodNotLikedCopyWith<$Res> {
  _$FoodNotLikedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodNotLikedImplCopyWith<$Res>
    implements $FoodNotLikedCopyWith<$Res> {
  factory _$$FoodNotLikedImplCopyWith(
          _$FoodNotLikedImpl value, $Res Function(_$FoodNotLikedImpl) then) =
      __$$FoodNotLikedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$FoodNotLikedImplCopyWithImpl<$Res>
    extends _$FoodNotLikedCopyWithImpl<$Res, _$FoodNotLikedImpl>
    implements _$$FoodNotLikedImplCopyWith<$Res> {
  __$$FoodNotLikedImplCopyWithImpl(
      _$FoodNotLikedImpl _value, $Res Function(_$FoodNotLikedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FoodNotLikedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodNotLikedImpl implements _FoodNotLiked {
  _$FoodNotLikedImpl({required this.id, required this.name});

  factory _$FoodNotLikedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodNotLikedImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'FoodNotLiked(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodNotLikedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodNotLikedImplCopyWith<_$FoodNotLikedImpl> get copyWith =>
      __$$FoodNotLikedImplCopyWithImpl<_$FoodNotLikedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodNotLikedImplToJson(
      this,
    );
  }
}

abstract class _FoodNotLiked implements FoodNotLiked {
  factory _FoodNotLiked({required final int id, required final String name}) =
      _$FoodNotLikedImpl;

  factory _FoodNotLiked.fromJson(Map<String, dynamic> json) =
      _$FoodNotLikedImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodNotLikedImplCopyWith<_$FoodNotLikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealVariety _$MealVarietyFromJson(Map<String, dynamic> json) {
  return _MealVariety.fromJson(json);
}

/// @nodoc
mixin _$MealVariety {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this MealVariety to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealVarietyCopyWith<MealVariety> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealVarietyCopyWith<$Res> {
  factory $MealVarietyCopyWith(
          MealVariety value, $Res Function(MealVariety) then) =
      _$MealVarietyCopyWithImpl<$Res, MealVariety>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MealVarietyCopyWithImpl<$Res, $Val extends MealVariety>
    implements $MealVarietyCopyWith<$Res> {
  _$MealVarietyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealVarietyImplCopyWith<$Res>
    implements $MealVarietyCopyWith<$Res> {
  factory _$$MealVarietyImplCopyWith(
          _$MealVarietyImpl value, $Res Function(_$MealVarietyImpl) then) =
      __$$MealVarietyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$MealVarietyImplCopyWithImpl<$Res>
    extends _$MealVarietyCopyWithImpl<$Res, _$MealVarietyImpl>
    implements _$$MealVarietyImplCopyWith<$Res> {
  __$$MealVarietyImplCopyWithImpl(
      _$MealVarietyImpl _value, $Res Function(_$MealVarietyImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MealVarietyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealVarietyImpl implements _MealVariety {
  _$MealVarietyImpl({required this.id, required this.name});

  factory _$MealVarietyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealVarietyImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MealVariety(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealVarietyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealVarietyImplCopyWith<_$MealVarietyImpl> get copyWith =>
      __$$MealVarietyImplCopyWithImpl<_$MealVarietyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealVarietyImplToJson(
      this,
    );
  }
}

abstract class _MealVariety implements MealVariety {
  factory _MealVariety({required final int id, required final String name}) =
      _$MealVarietyImpl;

  factory _MealVariety.fromJson(Map<String, dynamic> json) =
      _$MealVarietyImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealVarietyImplCopyWith<_$MealVarietyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
