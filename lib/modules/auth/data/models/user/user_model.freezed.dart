// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id;
  String get name;
  String get email;
  bool? get hasValidSubscription;
  @CountryConverter()
  Country? get country;
  @CityConverter()
  City? get city;
  @GenderEnumConverter()
  GenderEnum? get gender;
  @JsonKey(name: 'package_id')
  int? get packageId;
  int? get age;
  @JsonKey(name: 'current_weight')
  int? get currentWeight;
  int? get height;
  int? get otpCode;
  List<Goal>? get goals;
  @JsonKey(name: 'target_weight')
  int? get targetWeight;
  @BodyShapeConverter()
  BodyShape? get bodyShape; // required List<MuscleFocus>? muscleFocuses,
  int? get trainingDaysPerWeek;
  @JsonKey(name: 'body_parts')
  List<String>? get bodyParts;
  @JsonKey(name: 'exercise_days')
  List<String>? get exerciseDays;
  List<WorkoutType>? get workoutTypes;
  List<Equipment>? get equipments;
  @DietConverter()
  Diet? get diet;
  @JsonKey(name: 'recipe_types')
  List<RecipeType>? get recipeTypes;
  @JsonKey(name: 'foods_not_liked')
  List<FoodNotLiked>? get foodsNotLiked;
  @MealVarietyConverter()
  @JsonKey(name: 'meal_variety')
  MealVariety? get mealVariety;
  String? get emailVerifiedAt;
  bool? get isChecked;
  bool? get isCompleted;
  bool? get isActive;
  String? get countryKey;
  @JsonKey(name: 'is_have_exercise_plan')
  bool? get haveExercisePlan;
  @JsonKey(name: 'is_have_meal_plan')
  bool? get haveMealPlan;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModel &&
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
            const DeepCollectionEquality().equals(other.goals, goals) &&
            (identical(other.targetWeight, targetWeight) ||
                other.targetWeight == targetWeight) &&
            (identical(other.bodyShape, bodyShape) ||
                other.bodyShape == bodyShape) &&
            (identical(other.trainingDaysPerWeek, trainingDaysPerWeek) ||
                other.trainingDaysPerWeek == trainingDaysPerWeek) &&
            const DeepCollectionEquality().equals(other.bodyParts, bodyParts) &&
            const DeepCollectionEquality()
                .equals(other.exerciseDays, exerciseDays) &&
            const DeepCollectionEquality()
                .equals(other.workoutTypes, workoutTypes) &&
            const DeepCollectionEquality()
                .equals(other.equipments, equipments) &&
            (identical(other.diet, diet) || other.diet == diet) &&
            const DeepCollectionEquality()
                .equals(other.recipeTypes, recipeTypes) &&
            const DeepCollectionEquality()
                .equals(other.foodsNotLiked, foodsNotLiked) &&
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
        const DeepCollectionEquality().hash(goals),
        targetWeight,
        bodyShape,
        trainingDaysPerWeek,
        const DeepCollectionEquality().hash(bodyParts),
        const DeepCollectionEquality().hash(exerciseDays),
        const DeepCollectionEquality().hash(workoutTypes),
        const DeepCollectionEquality().hash(equipments),
        diet,
        const DeepCollectionEquality().hash(recipeTypes),
        const DeepCollectionEquality().hash(foodsNotLiked),
        mealVariety,
        emailVerifiedAt,
        isChecked,
        isCompleted,
        isActive,
        countryKey,
        haveExercisePlan,
        haveMealPlan
      ]);

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, hasValidSubscription: $hasValidSubscription, country: $country, city: $city, gender: $gender, packageId: $packageId, age: $age, currentWeight: $currentWeight, height: $height, otpCode: $otpCode, goals: $goals, targetWeight: $targetWeight, bodyShape: $bodyShape, trainingDaysPerWeek: $trainingDaysPerWeek, bodyParts: $bodyParts, exerciseDays: $exerciseDays, workoutTypes: $workoutTypes, equipments: $equipments, diet: $diet, recipeTypes: $recipeTypes, foodsNotLiked: $foodsNotLiked, mealVariety: $mealVariety, emailVerifiedAt: $emailVerifiedAt, isChecked: $isChecked, isCompleted: $isCompleted, isActive: $isActive, countryKey: $countryKey, haveExercisePlan: $haveExercisePlan, haveMealPlan: $haveMealPlan)';
  }
}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) =
      _$UserModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      bool? hasValidSubscription,
      @CountryConverter() Country? country,
      @CityConverter() City? city,
      @GenderEnumConverter() GenderEnum? gender,
      @JsonKey(name: 'package_id') int? packageId,
      int? age,
      @JsonKey(name: 'current_weight') int? currentWeight,
      int? height,
      int? otpCode,
      List<Goal>? goals,
      @JsonKey(name: 'target_weight') int? targetWeight,
      @BodyShapeConverter() BodyShape? bodyShape,
      int? trainingDaysPerWeek,
      @JsonKey(name: 'body_parts') List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
      List<WorkoutType>? workoutTypes,
      List<Equipment>? equipments,
      @DietConverter() Diet? diet,
      @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
      @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
      @MealVarietyConverter()
      @JsonKey(name: 'meal_variety')
      MealVariety? mealVariety,
      String? emailVerifiedAt,
      bool? isChecked,
      bool? isCompleted,
      bool? isActive,
      String? countryKey,
      @JsonKey(name: 'is_have_exercise_plan') bool? haveExercisePlan,
      @JsonKey(name: 'is_have_meal_plan') bool? haveMealPlan});

  $CountryCopyWith<$Res>? get country;
  $CityCopyWith<$Res>? get city;
  $BodyShapeCopyWith<$Res>? get bodyShape;
  $DietCopyWith<$Res>? get diet;
  $MealVarietyCopyWith<$Res>? get mealVariety;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

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
    Object? trainingDaysPerWeek = freezed,
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hasValidSubscription: freezed == hasValidSubscription
          ? _self.hasValidSubscription
          : hasValidSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      packageId: freezed == packageId
          ? _self.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWeight: freezed == currentWeight
          ? _self.currentWeight
          : currentWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      otpCode: freezed == otpCode
          ? _self.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      goals: freezed == goals
          ? _self.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
      targetWeight: freezed == targetWeight
          ? _self.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyShape: freezed == bodyShape
          ? _self.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      trainingDaysPerWeek: freezed == trainingDaysPerWeek
          ? _self.trainingDaysPerWeek
          : trainingDaysPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyParts: freezed == bodyParts
          ? _self.bodyParts
          : bodyParts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      exerciseDays: freezed == exerciseDays
          ? _self.exerciseDays
          : exerciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workoutTypes: freezed == workoutTypes
          ? _self.workoutTypes
          : workoutTypes // ignore: cast_nullable_to_non_nullable
              as List<WorkoutType>?,
      equipments: freezed == equipments
          ? _self.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      diet: freezed == diet
          ? _self.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as Diet?,
      recipeTypes: freezed == recipeTypes
          ? _self.recipeTypes
          : recipeTypes // ignore: cast_nullable_to_non_nullable
              as List<RecipeType>?,
      foodsNotLiked: freezed == foodsNotLiked
          ? _self.foodsNotLiked
          : foodsNotLiked // ignore: cast_nullable_to_non_nullable
              as List<FoodNotLiked>?,
      mealVariety: freezed == mealVariety
          ? _self.mealVariety
          : mealVariety // ignore: cast_nullable_to_non_nullable
              as MealVariety?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _self.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _self.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      countryKey: freezed == countryKey
          ? _self.countryKey
          : countryKey // ignore: cast_nullable_to_non_nullable
              as String?,
      haveExercisePlan: freezed == haveExercisePlan
          ? _self.haveExercisePlan
          : haveExercisePlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveMealPlan: freezed == haveMealPlan
          ? _self.haveMealPlan
          : haveMealPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_self.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_self.country!, (value) {
      return _then(_self.copyWith(country: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_self.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.city!, (value) {
      return _then(_self.copyWith(city: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyShapeCopyWith<$Res>? get bodyShape {
    if (_self.bodyShape == null) {
      return null;
    }

    return $BodyShapeCopyWith<$Res>(_self.bodyShape!, (value) {
      return _then(_self.copyWith(bodyShape: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DietCopyWith<$Res>? get diet {
    if (_self.diet == null) {
      return null;
    }

    return $DietCopyWith<$Res>(_self.diet!, (value) {
      return _then(_self.copyWith(diet: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MealVarietyCopyWith<$Res>? get mealVariety {
    if (_self.mealVariety == null) {
      return null;
    }

    return $MealVarietyCopyWith<$Res>(_self.mealVariety!, (value) {
      return _then(_self.copyWith(mealVariety: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
    TResult Function(_User value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
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
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
            int id,
            String name,
            String email,
            bool? hasValidSubscription,
            @CountryConverter() Country? country,
            @CityConverter() City? city,
            @GenderEnumConverter() GenderEnum? gender,
            @JsonKey(name: 'package_id') int? packageId,
            int? age,
            @JsonKey(name: 'current_weight') int? currentWeight,
            int? height,
            int? otpCode,
            List<Goal>? goals,
            @JsonKey(name: 'target_weight') int? targetWeight,
            @BodyShapeConverter() BodyShape? bodyShape,
            int? trainingDaysPerWeek,
            @JsonKey(name: 'body_parts') List<String>? bodyParts,
            @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
            List<WorkoutType>? workoutTypes,
            List<Equipment>? equipments,
            @DietConverter() Diet? diet,
            @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
            @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
            @MealVarietyConverter()
            @JsonKey(name: 'meal_variety')
            MealVariety? mealVariety,
            String? emailVerifiedAt,
            bool? isChecked,
            bool? isCompleted,
            bool? isActive,
            String? countryKey,
            @JsonKey(name: 'is_have_exercise_plan') bool? haveExercisePlan,
            @JsonKey(name: 'is_have_meal_plan') bool? haveMealPlan)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.email,
            _that.hasValidSubscription,
            _that.country,
            _that.city,
            _that.gender,
            _that.packageId,
            _that.age,
            _that.currentWeight,
            _that.height,
            _that.otpCode,
            _that.goals,
            _that.targetWeight,
            _that.bodyShape,
            _that.trainingDaysPerWeek,
            _that.bodyParts,
            _that.exerciseDays,
            _that.workoutTypes,
            _that.equipments,
            _that.diet,
            _that.recipeTypes,
            _that.foodsNotLiked,
            _that.mealVariety,
            _that.emailVerifiedAt,
            _that.isChecked,
            _that.isCompleted,
            _that.isActive,
            _that.countryKey,
            _that.haveExercisePlan,
            _that.haveMealPlan);
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
            int id,
            String name,
            String email,
            bool? hasValidSubscription,
            @CountryConverter() Country? country,
            @CityConverter() City? city,
            @GenderEnumConverter() GenderEnum? gender,
            @JsonKey(name: 'package_id') int? packageId,
            int? age,
            @JsonKey(name: 'current_weight') int? currentWeight,
            int? height,
            int? otpCode,
            List<Goal>? goals,
            @JsonKey(name: 'target_weight') int? targetWeight,
            @BodyShapeConverter() BodyShape? bodyShape,
            int? trainingDaysPerWeek,
            @JsonKey(name: 'body_parts') List<String>? bodyParts,
            @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
            List<WorkoutType>? workoutTypes,
            List<Equipment>? equipments,
            @DietConverter() Diet? diet,
            @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
            @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
            @MealVarietyConverter()
            @JsonKey(name: 'meal_variety')
            MealVariety? mealVariety,
            String? emailVerifiedAt,
            bool? isChecked,
            bool? isCompleted,
            bool? isActive,
            String? countryKey,
            @JsonKey(name: 'is_have_exercise_plan') bool? haveExercisePlan,
            @JsonKey(name: 'is_have_meal_plan') bool? haveMealPlan)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(
            _that.id,
            _that.name,
            _that.email,
            _that.hasValidSubscription,
            _that.country,
            _that.city,
            _that.gender,
            _that.packageId,
            _that.age,
            _that.currentWeight,
            _that.height,
            _that.otpCode,
            _that.goals,
            _that.targetWeight,
            _that.bodyShape,
            _that.trainingDaysPerWeek,
            _that.bodyParts,
            _that.exerciseDays,
            _that.workoutTypes,
            _that.equipments,
            _that.diet,
            _that.recipeTypes,
            _that.foodsNotLiked,
            _that.mealVariety,
            _that.emailVerifiedAt,
            _that.isChecked,
            _that.isCompleted,
            _that.isActive,
            _that.countryKey,
            _that.haveExercisePlan,
            _that.haveMealPlan);
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
            int id,
            String name,
            String email,
            bool? hasValidSubscription,
            @CountryConverter() Country? country,
            @CityConverter() City? city,
            @GenderEnumConverter() GenderEnum? gender,
            @JsonKey(name: 'package_id') int? packageId,
            int? age,
            @JsonKey(name: 'current_weight') int? currentWeight,
            int? height,
            int? otpCode,
            List<Goal>? goals,
            @JsonKey(name: 'target_weight') int? targetWeight,
            @BodyShapeConverter() BodyShape? bodyShape,
            int? trainingDaysPerWeek,
            @JsonKey(name: 'body_parts') List<String>? bodyParts,
            @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
            List<WorkoutType>? workoutTypes,
            List<Equipment>? equipments,
            @DietConverter() Diet? diet,
            @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
            @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
            @MealVarietyConverter()
            @JsonKey(name: 'meal_variety')
            MealVariety? mealVariety,
            String? emailVerifiedAt,
            bool? isChecked,
            bool? isCompleted,
            bool? isActive,
            String? countryKey,
            @JsonKey(name: 'is_have_exercise_plan') bool? haveExercisePlan,
            @JsonKey(name: 'is_have_meal_plan') bool? haveMealPlan)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.email,
            _that.hasValidSubscription,
            _that.country,
            _that.city,
            _that.gender,
            _that.packageId,
            _that.age,
            _that.currentWeight,
            _that.height,
            _that.otpCode,
            _that.goals,
            _that.targetWeight,
            _that.bodyShape,
            _that.trainingDaysPerWeek,
            _that.bodyParts,
            _that.exerciseDays,
            _that.workoutTypes,
            _that.equipments,
            _that.diet,
            _that.recipeTypes,
            _that.foodsNotLiked,
            _that.mealVariety,
            _that.emailVerifiedAt,
            _that.isChecked,
            _that.isCompleted,
            _that.isActive,
            _that.countryKey,
            _that.haveExercisePlan,
            _that.haveMealPlan);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _User implements UserModel {
  const _User(
      {required this.id,
      required this.name,
      required this.email,
      required this.hasValidSubscription,
      @CountryConverter() required this.country,
      @CityConverter() required this.city,
      @GenderEnumConverter() this.gender,
      @JsonKey(name: 'package_id') required this.packageId,
      required this.age,
      @JsonKey(name: 'current_weight') required this.currentWeight,
      required this.height,
      required this.otpCode,
      required final List<Goal>? goals,
      @JsonKey(name: 'target_weight') required this.targetWeight,
      @BodyShapeConverter() required this.bodyShape,
      required this.trainingDaysPerWeek,
      @JsonKey(name: 'body_parts') required final List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') required final List<String>? exerciseDays,
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
      this.emailVerifiedAt,
      required this.isChecked,
      required this.isCompleted,
      required this.isActive,
      required this.countryKey,
      @JsonKey(name: 'is_have_exercise_plan') required this.haveExercisePlan,
      @JsonKey(name: 'is_have_meal_plan') required this.haveMealPlan})
      : _goals = goals,
        _bodyParts = bodyParts,
        _exerciseDays = exerciseDays,
        _workoutTypes = workoutTypes,
        _equipments = equipments,
        _recipeTypes = recipeTypes,
        _foodsNotLiked = foodsNotLiked;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final bool? hasValidSubscription;
  @override
  @CountryConverter()
  final Country? country;
  @override
  @CityConverter()
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
  final BodyShape? bodyShape;
// required List<MuscleFocus>? muscleFocuses,
  @override
  final int? trainingDaysPerWeek;
  final List<String>? _bodyParts;
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
  final String? emailVerifiedAt;
  @override
  final bool? isChecked;
  @override
  final bool? isCompleted;
  @override
  final bool? isActive;
  @override
  final String? countryKey;
  @override
  @JsonKey(name: 'is_have_exercise_plan')
  final bool? haveExercisePlan;
  @override
  @JsonKey(name: 'is_have_meal_plan')
  final bool? haveMealPlan;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
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
            (identical(other.trainingDaysPerWeek, trainingDaysPerWeek) ||
                other.trainingDaysPerWeek == trainingDaysPerWeek) &&
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
        trainingDaysPerWeek,
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

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, hasValidSubscription: $hasValidSubscription, country: $country, city: $city, gender: $gender, packageId: $packageId, age: $age, currentWeight: $currentWeight, height: $height, otpCode: $otpCode, goals: $goals, targetWeight: $targetWeight, bodyShape: $bodyShape, trainingDaysPerWeek: $trainingDaysPerWeek, bodyParts: $bodyParts, exerciseDays: $exerciseDays, workoutTypes: $workoutTypes, equipments: $equipments, diet: $diet, recipeTypes: $recipeTypes, foodsNotLiked: $foodsNotLiked, mealVariety: $mealVariety, emailVerifiedAt: $emailVerifiedAt, isChecked: $isChecked, isCompleted: $isCompleted, isActive: $isActive, countryKey: $countryKey, haveExercisePlan: $haveExercisePlan, haveMealPlan: $haveMealPlan)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      bool? hasValidSubscription,
      @CountryConverter() Country? country,
      @CityConverter() City? city,
      @GenderEnumConverter() GenderEnum? gender,
      @JsonKey(name: 'package_id') int? packageId,
      int? age,
      @JsonKey(name: 'current_weight') int? currentWeight,
      int? height,
      int? otpCode,
      List<Goal>? goals,
      @JsonKey(name: 'target_weight') int? targetWeight,
      @BodyShapeConverter() BodyShape? bodyShape,
      int? trainingDaysPerWeek,
      @JsonKey(name: 'body_parts') List<String>? bodyParts,
      @JsonKey(name: 'exercise_days') List<String>? exerciseDays,
      List<WorkoutType>? workoutTypes,
      List<Equipment>? equipments,
      @DietConverter() Diet? diet,
      @JsonKey(name: 'recipe_types') List<RecipeType>? recipeTypes,
      @JsonKey(name: 'foods_not_liked') List<FoodNotLiked>? foodsNotLiked,
      @MealVarietyConverter()
      @JsonKey(name: 'meal_variety')
      MealVariety? mealVariety,
      String? emailVerifiedAt,
      bool? isChecked,
      bool? isCompleted,
      bool? isActive,
      String? countryKey,
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
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? trainingDaysPerWeek = freezed,
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
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hasValidSubscription: freezed == hasValidSubscription
          ? _self.hasValidSubscription
          : hasValidSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderEnum?,
      packageId: freezed == packageId
          ? _self.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      currentWeight: freezed == currentWeight
          ? _self.currentWeight
          : currentWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      otpCode: freezed == otpCode
          ? _self.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      goals: freezed == goals
          ? _self._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>?,
      targetWeight: freezed == targetWeight
          ? _self.targetWeight
          : targetWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyShape: freezed == bodyShape
          ? _self.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      trainingDaysPerWeek: freezed == trainingDaysPerWeek
          ? _self.trainingDaysPerWeek
          : trainingDaysPerWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      bodyParts: freezed == bodyParts
          ? _self._bodyParts
          : bodyParts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      exerciseDays: freezed == exerciseDays
          ? _self._exerciseDays
          : exerciseDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      workoutTypes: freezed == workoutTypes
          ? _self._workoutTypes
          : workoutTypes // ignore: cast_nullable_to_non_nullable
              as List<WorkoutType>?,
      equipments: freezed == equipments
          ? _self._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>?,
      diet: freezed == diet
          ? _self.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as Diet?,
      recipeTypes: freezed == recipeTypes
          ? _self._recipeTypes
          : recipeTypes // ignore: cast_nullable_to_non_nullable
              as List<RecipeType>?,
      foodsNotLiked: freezed == foodsNotLiked
          ? _self._foodsNotLiked
          : foodsNotLiked // ignore: cast_nullable_to_non_nullable
              as List<FoodNotLiked>?,
      mealVariety: freezed == mealVariety
          ? _self.mealVariety
          : mealVariety // ignore: cast_nullable_to_non_nullable
              as MealVariety?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _self.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: freezed == isChecked
          ? _self.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCompleted: freezed == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      countryKey: freezed == countryKey
          ? _self.countryKey
          : countryKey // ignore: cast_nullable_to_non_nullable
              as String?,
      haveExercisePlan: freezed == haveExercisePlan
          ? _self.haveExercisePlan
          : haveExercisePlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveMealPlan: freezed == haveMealPlan
          ? _self.haveMealPlan
          : haveMealPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_self.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_self.country!, (value) {
      return _then(_self.copyWith(country: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_self.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_self.city!, (value) {
      return _then(_self.copyWith(city: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyShapeCopyWith<$Res>? get bodyShape {
    if (_self.bodyShape == null) {
      return null;
    }

    return $BodyShapeCopyWith<$Res>(_self.bodyShape!, (value) {
      return _then(_self.copyWith(bodyShape: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DietCopyWith<$Res>? get diet {
    if (_self.diet == null) {
      return null;
    }

    return $DietCopyWith<$Res>(_self.diet!, (value) {
      return _then(_self.copyWith(diet: value));
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MealVarietyCopyWith<$Res>? get mealVariety {
    if (_self.mealVariety == null) {
      return null;
    }

    return $MealVarietyCopyWith<$Res>(_self.mealVariety!, (value) {
      return _then(_self.copyWith(mealVariety: value));
    });
  }
}

/// @nodoc
mixin _$Country {
  int get id;
  String get name;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CountryCopyWith<Country> get copyWith =>
      _$CountryCopyWithImpl<Country>(this as Country, _$identity);

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Country &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Country(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) =
      _$CountryCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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
    TResult Function(_Country value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
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
    TResult Function(_Country value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country():
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
    TResult? Function(_Country value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Country() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Country implements Country {
  _Country({required this.id, required this.name});
  factory _Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CountryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Country(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) =
      __$CountryCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_Country(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$City {
  int get id;
  String get name;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CityCopyWith<City> get copyWith =>
      _$CityCopyWithImpl<City>(this as City, _$identity);

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is City &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'City(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) _then) =
      _$CityCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._self, this._then);

  final City _self;
  final $Res Function(City) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [City].
extension CityPatterns on City {
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
    TResult Function(_City value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _City() when $default != null:
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
    TResult Function(_City value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _City():
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
    TResult? Function(_City value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _City() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _City() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _City():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _City() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _City implements City {
  _City({required this.id, required this.name});
  factory _City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CityCopyWith<_City> get copyWith =>
      __$CityCopyWithImpl<_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _City &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'City(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) _then) =
      __$CityCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$CityCopyWithImpl<$Res> implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(this._self, this._then);

  final _City _self;
  final $Res Function(_City) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_City(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Goal {
  int get id;
  String get name;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoalCopyWith<Goal> get copyWith =>
      _$GoalCopyWithImpl<Goal>(this as Goal, _$identity);

  /// Serializes this Goal to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Goal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Goal(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) _then) =
      _$GoalCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res> implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._self, this._then);

  final Goal _self;
  final $Res Function(Goal) _then;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Goal].
extension GoalPatterns on Goal {
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
    TResult Function(_Goal value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
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
    TResult Function(_Goal value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal():
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
    TResult? Function(_Goal value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Goal implements Goal {
  _Goal({required this.id, required this.name});
  factory _Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoalCopyWith<_Goal> get copyWith =>
      __$GoalCopyWithImpl<_Goal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoalToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Goal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Goal(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$GoalCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$GoalCopyWith(_Goal value, $Res Function(_Goal) _then) =
      __$GoalCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$GoalCopyWithImpl<$Res> implements _$GoalCopyWith<$Res> {
  __$GoalCopyWithImpl(this._self, this._then);

  final _Goal _self;
  final $Res Function(_Goal) _then;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_Goal(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$BodyShape {
  int get id;
  String get name;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyShapeCopyWith<BodyShape> get copyWith =>
      _$BodyShapeCopyWithImpl<BodyShape>(this as BodyShape, _$identity);

  /// Serializes this BodyShape to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyShape &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'BodyShape(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $BodyShapeCopyWith<$Res> {
  factory $BodyShapeCopyWith(BodyShape value, $Res Function(BodyShape) _then) =
      _$BodyShapeCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BodyShapeCopyWithImpl<$Res> implements $BodyShapeCopyWith<$Res> {
  _$BodyShapeCopyWithImpl(this._self, this._then);

  final BodyShape _self;
  final $Res Function(BodyShape) _then;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodyShape].
extension BodyShapePatterns on BodyShape {
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
    TResult Function(_BodyShape value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyShape() when $default != null:
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
    TResult Function(_BodyShape value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyShape():
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
    TResult? Function(_BodyShape value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyShape() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyShape() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyShape():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyShape() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BodyShape implements BodyShape {
  _BodyShape({required this.id, required this.name});
  factory _BodyShape.fromJson(Map<String, dynamic> json) =>
      _$BodyShapeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyShapeCopyWith<_BodyShape> get copyWith =>
      __$BodyShapeCopyWithImpl<_BodyShape>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyShapeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyShape &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'BodyShape(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$BodyShapeCopyWith<$Res>
    implements $BodyShapeCopyWith<$Res> {
  factory _$BodyShapeCopyWith(
          _BodyShape value, $Res Function(_BodyShape) _then) =
      __$BodyShapeCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$BodyShapeCopyWithImpl<$Res> implements _$BodyShapeCopyWith<$Res> {
  __$BodyShapeCopyWithImpl(this._self, this._then);

  final _BodyShape _self;
  final $Res Function(_BodyShape) _then;

  /// Create a copy of BodyShape
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_BodyShape(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MuscleFocus {
  int get id;
  String get name;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MuscleFocusCopyWith<MuscleFocus> get copyWith =>
      _$MuscleFocusCopyWithImpl<MuscleFocus>(this as MuscleFocus, _$identity);

  /// Serializes this MuscleFocus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MuscleFocus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MuscleFocus(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $MuscleFocusCopyWith<$Res> {
  factory $MuscleFocusCopyWith(
          MuscleFocus value, $Res Function(MuscleFocus) _then) =
      _$MuscleFocusCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MuscleFocusCopyWithImpl<$Res> implements $MuscleFocusCopyWith<$Res> {
  _$MuscleFocusCopyWithImpl(this._self, this._then);

  final MuscleFocus _self;
  final $Res Function(MuscleFocus) _then;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MuscleFocus].
extension MuscleFocusPatterns on MuscleFocus {
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
    TResult Function(_MuscleFocus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MuscleFocus() when $default != null:
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
    TResult Function(_MuscleFocus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MuscleFocus():
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
    TResult? Function(_MuscleFocus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MuscleFocus() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MuscleFocus() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MuscleFocus():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MuscleFocus() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MuscleFocus implements MuscleFocus {
  _MuscleFocus({required this.id, required this.name});
  factory _MuscleFocus.fromJson(Map<String, dynamic> json) =>
      _$MuscleFocusFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MuscleFocusCopyWith<_MuscleFocus> get copyWith =>
      __$MuscleFocusCopyWithImpl<_MuscleFocus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MuscleFocusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MuscleFocus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MuscleFocus(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$MuscleFocusCopyWith<$Res>
    implements $MuscleFocusCopyWith<$Res> {
  factory _$MuscleFocusCopyWith(
          _MuscleFocus value, $Res Function(_MuscleFocus) _then) =
      __$MuscleFocusCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$MuscleFocusCopyWithImpl<$Res> implements _$MuscleFocusCopyWith<$Res> {
  __$MuscleFocusCopyWithImpl(this._self, this._then);

  final _MuscleFocus _self;
  final $Res Function(_MuscleFocus) _then;

  /// Create a copy of MuscleFocus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_MuscleFocus(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$WorkoutType {
  int get id;
  String get name;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutTypeCopyWith<WorkoutType> get copyWith =>
      _$WorkoutTypeCopyWithImpl<WorkoutType>(this as WorkoutType, _$identity);

  /// Serializes this WorkoutType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'WorkoutType(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $WorkoutTypeCopyWith<$Res> {
  factory $WorkoutTypeCopyWith(
          WorkoutType value, $Res Function(WorkoutType) _then) =
      _$WorkoutTypeCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$WorkoutTypeCopyWithImpl<$Res> implements $WorkoutTypeCopyWith<$Res> {
  _$WorkoutTypeCopyWithImpl(this._self, this._then);

  final WorkoutType _self;
  final $Res Function(WorkoutType) _then;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WorkoutType].
extension WorkoutTypePatterns on WorkoutType {
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
    TResult Function(_WorkoutType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutType() when $default != null:
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
    TResult Function(_WorkoutType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutType():
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
    TResult? Function(_WorkoutType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutType() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkoutType() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutType():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkoutType() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WorkoutType implements WorkoutType {
  _WorkoutType({required this.id, required this.name});
  factory _WorkoutType.fromJson(Map<String, dynamic> json) =>
      _$WorkoutTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutTypeCopyWith<_WorkoutType> get copyWith =>
      __$WorkoutTypeCopyWithImpl<_WorkoutType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'WorkoutType(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutTypeCopyWith<$Res>
    implements $WorkoutTypeCopyWith<$Res> {
  factory _$WorkoutTypeCopyWith(
          _WorkoutType value, $Res Function(_WorkoutType) _then) =
      __$WorkoutTypeCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$WorkoutTypeCopyWithImpl<$Res> implements _$WorkoutTypeCopyWith<$Res> {
  __$WorkoutTypeCopyWithImpl(this._self, this._then);

  final _WorkoutType _self;
  final $Res Function(_WorkoutType) _then;

  /// Create a copy of WorkoutType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_WorkoutType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Equipment {
  int get id;
  String get name;
  String get image;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EquipmentCopyWith<Equipment> get copyWith =>
      _$EquipmentCopyWithImpl<Equipment>(this as Equipment, _$identity);

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Equipment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, image: $image)';
  }
}

/// @nodoc
abstract mixin class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) _then) =
      _$EquipmentCopyWithImpl;
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res> implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._self, this._then);

  final Equipment _self;
  final $Res Function(Equipment) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Equipment].
extension EquipmentPatterns on Equipment {
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
    TResult Function(_Equipment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
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
    TResult Function(_Equipment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment():
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
    TResult? Function(_Equipment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
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
    TResult Function(int id, String name, String image)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
        return $default(_that.id, _that.name, _that.image);
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
    TResult Function(int id, String name, String image) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment():
        return $default(_that.id, _that.name, _that.image);
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
    TResult? Function(int id, String name, String image)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
        return $default(_that.id, _that.name, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Equipment implements Equipment {
  _Equipment({required this.id, required this.name, required this.image});
  factory _Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      __$EquipmentCopyWithImpl<_Equipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EquipmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Equipment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$EquipmentCopyWith<$Res>
    implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(
          _Equipment value, $Res Function(_Equipment) _then) =
      __$EquipmentCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$EquipmentCopyWithImpl<$Res> implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(this._self, this._then);

  final _Equipment _self;
  final $Res Function(_Equipment) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_Equipment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Diet {
  int get id;
  String get key;
  String get name;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DietCopyWith<Diet> get copyWith =>
      _$DietCopyWithImpl<Diet>(this as Diet, _$identity);

  /// Serializes this Diet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Diet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name);

  @override
  String toString() {
    return 'Diet(id: $id, key: $key, name: $name)';
  }
}

/// @nodoc
abstract mixin class $DietCopyWith<$Res> {
  factory $DietCopyWith(Diet value, $Res Function(Diet) _then) =
      _$DietCopyWithImpl;
  @useResult
  $Res call({int id, String key, String name});
}

/// @nodoc
class _$DietCopyWithImpl<$Res> implements $DietCopyWith<$Res> {
  _$DietCopyWithImpl(this._self, this._then);

  final Diet _self;
  final $Res Function(Diet) _then;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Diet].
extension DietPatterns on Diet {
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
    TResult Function(_Diet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Diet() when $default != null:
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
    TResult Function(_Diet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diet():
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
    TResult? Function(_Diet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diet() when $default != null:
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
    TResult Function(int id, String key, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Diet() when $default != null:
        return $default(_that.id, _that.key, _that.name);
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
    TResult Function(int id, String key, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diet():
        return $default(_that.id, _that.key, _that.name);
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
    TResult? Function(int id, String key, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Diet() when $default != null:
        return $default(_that.id, _that.key, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Diet implements Diet {
  _Diet({required this.id, required this.key, required this.name});
  factory _Diet.fromJson(Map<String, dynamic> json) => _$DietFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String name;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DietCopyWith<_Diet> get copyWith =>
      __$DietCopyWithImpl<_Diet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DietToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Diet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, name);

  @override
  String toString() {
    return 'Diet(id: $id, key: $key, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$DietCopyWith<$Res> implements $DietCopyWith<$Res> {
  factory _$DietCopyWith(_Diet value, $Res Function(_Diet) _then) =
      __$DietCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String key, String name});
}

/// @nodoc
class __$DietCopyWithImpl<$Res> implements _$DietCopyWith<$Res> {
  __$DietCopyWithImpl(this._self, this._then);

  final _Diet _self;
  final $Res Function(_Diet) _then;

  /// Create a copy of Diet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_Diet(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$RecipeType {
  int get id;
  String get name;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecipeTypeCopyWith<RecipeType> get copyWith =>
      _$RecipeTypeCopyWithImpl<RecipeType>(this as RecipeType, _$identity);

  /// Serializes this RecipeType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'RecipeType(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $RecipeTypeCopyWith<$Res> {
  factory $RecipeTypeCopyWith(
          RecipeType value, $Res Function(RecipeType) _then) =
      _$RecipeTypeCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$RecipeTypeCopyWithImpl<$Res> implements $RecipeTypeCopyWith<$Res> {
  _$RecipeTypeCopyWithImpl(this._self, this._then);

  final RecipeType _self;
  final $Res Function(RecipeType) _then;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [RecipeType].
extension RecipeTypePatterns on RecipeType {
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
    TResult Function(_RecipeType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RecipeType() when $default != null:
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
    TResult Function(_RecipeType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecipeType():
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
    TResult? Function(_RecipeType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecipeType() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RecipeType() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecipeType():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RecipeType() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RecipeType implements RecipeType {
  _RecipeType({required this.id, required this.name});
  factory _RecipeType.fromJson(Map<String, dynamic> json) =>
      _$RecipeTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecipeTypeCopyWith<_RecipeType> get copyWith =>
      __$RecipeTypeCopyWithImpl<_RecipeType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecipeTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'RecipeType(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$RecipeTypeCopyWith<$Res>
    implements $RecipeTypeCopyWith<$Res> {
  factory _$RecipeTypeCopyWith(
          _RecipeType value, $Res Function(_RecipeType) _then) =
      __$RecipeTypeCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$RecipeTypeCopyWithImpl<$Res> implements _$RecipeTypeCopyWith<$Res> {
  __$RecipeTypeCopyWithImpl(this._self, this._then);

  final _RecipeType _self;
  final $Res Function(_RecipeType) _then;

  /// Create a copy of RecipeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_RecipeType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$FoodNotLiked {
  int get id;
  String get name;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FoodNotLikedCopyWith<FoodNotLiked> get copyWith =>
      _$FoodNotLikedCopyWithImpl<FoodNotLiked>(
          this as FoodNotLiked, _$identity);

  /// Serializes this FoodNotLiked to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FoodNotLiked &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'FoodNotLiked(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $FoodNotLikedCopyWith<$Res> {
  factory $FoodNotLikedCopyWith(
          FoodNotLiked value, $Res Function(FoodNotLiked) _then) =
      _$FoodNotLikedCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$FoodNotLikedCopyWithImpl<$Res> implements $FoodNotLikedCopyWith<$Res> {
  _$FoodNotLikedCopyWithImpl(this._self, this._then);

  final FoodNotLiked _self;
  final $Res Function(FoodNotLiked) _then;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [FoodNotLiked].
extension FoodNotLikedPatterns on FoodNotLiked {
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
    TResult Function(_FoodNotLiked value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FoodNotLiked() when $default != null:
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
    TResult Function(_FoodNotLiked value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FoodNotLiked():
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
    TResult? Function(_FoodNotLiked value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FoodNotLiked() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FoodNotLiked() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FoodNotLiked():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FoodNotLiked() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FoodNotLiked implements FoodNotLiked {
  _FoodNotLiked({required this.id, required this.name});
  factory _FoodNotLiked.fromJson(Map<String, dynamic> json) =>
      _$FoodNotLikedFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FoodNotLikedCopyWith<_FoodNotLiked> get copyWith =>
      __$FoodNotLikedCopyWithImpl<_FoodNotLiked>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FoodNotLikedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FoodNotLiked &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'FoodNotLiked(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$FoodNotLikedCopyWith<$Res>
    implements $FoodNotLikedCopyWith<$Res> {
  factory _$FoodNotLikedCopyWith(
          _FoodNotLiked value, $Res Function(_FoodNotLiked) _then) =
      __$FoodNotLikedCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$FoodNotLikedCopyWithImpl<$Res>
    implements _$FoodNotLikedCopyWith<$Res> {
  __$FoodNotLikedCopyWithImpl(this._self, this._then);

  final _FoodNotLiked _self;
  final $Res Function(_FoodNotLiked) _then;

  /// Create a copy of FoodNotLiked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_FoodNotLiked(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MealVariety {
  int get id;
  String get name;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealVarietyCopyWith<MealVariety> get copyWith =>
      _$MealVarietyCopyWithImpl<MealVariety>(this as MealVariety, _$identity);

  /// Serializes this MealVariety to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealVariety &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MealVariety(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $MealVarietyCopyWith<$Res> {
  factory $MealVarietyCopyWith(
          MealVariety value, $Res Function(MealVariety) _then) =
      _$MealVarietyCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MealVarietyCopyWithImpl<$Res> implements $MealVarietyCopyWith<$Res> {
  _$MealVarietyCopyWithImpl(this._self, this._then);

  final MealVariety _self;
  final $Res Function(MealVariety) _then;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealVariety].
extension MealVarietyPatterns on MealVariety {
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
    TResult Function(_MealVariety value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealVariety() when $default != null:
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
    TResult Function(_MealVariety value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealVariety():
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
    TResult? Function(_MealVariety value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealVariety() when $default != null:
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
    TResult Function(int id, String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealVariety() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(int id, String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealVariety():
        return $default(_that.id, _that.name);
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
    TResult? Function(int id, String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealVariety() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealVariety implements MealVariety {
  _MealVariety({required this.id, required this.name});
  factory _MealVariety.fromJson(Map<String, dynamic> json) =>
      _$MealVarietyFromJson(json);

  @override
  final int id;
  @override
  final String name;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealVarietyCopyWith<_MealVariety> get copyWith =>
      __$MealVarietyCopyWithImpl<_MealVariety>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealVarietyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealVariety &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MealVariety(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$MealVarietyCopyWith<$Res>
    implements $MealVarietyCopyWith<$Res> {
  factory _$MealVarietyCopyWith(
          _MealVariety value, $Res Function(_MealVariety) _then) =
      __$MealVarietyCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$MealVarietyCopyWithImpl<$Res> implements _$MealVarietyCopyWith<$Res> {
  __$MealVarietyCopyWithImpl(this._self, this._then);

  final _MealVariety _self;
  final $Res Function(_MealVariety) _then;

  /// Create a copy of MealVariety
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_MealVariety(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
