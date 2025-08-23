// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      hasValidSubscription: json['hasValidSubscription'] as bool?,
      country: const CountryConverter().fromJson(json['country']),
      city: const CityConverter().fromJson(json['city_id']),
      gender: const GenderEnumConverter()
          .fromJson((json['gender'] as num?)?.toInt()),
      packageId: (json['package_id'] as num?)?.toInt(),
      age: (json['age'] as num?)?.toInt(),
      currentWeight: (json['current_weight'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      otpCode: (json['otpCode'] as num?)?.toInt(),
      goals: (json['goals'] as List<dynamic>?)
          ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetWeight: (json['target_weight'] as num?)?.toInt(),
      bodyShape: const BodyShapeConverter().fromJson(json['body_shape']),
      trainingDaysPerWeek: (json['training_days_per_week'] as num?)?.toInt(),
      bodyParts: (json['body_parts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      exerciseDays: (json['exercise_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workoutTypes: (json['workoutTypes'] as List<dynamic>?)
          ?.map((e) => WorkoutType.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipments: (json['equipments'] as List<dynamic>?)
          ?.map((e) => Equipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      diet: const DietConverter().fromJson(json['diet']),
      recipeTypes: (json['recipe_types'] as List<dynamic>?)
          ?.map((e) => RecipeType.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodsNotLiked: (json['foods_not_liked'] as List<dynamic>?)
          ?.map((e) => FoodNotLiked.fromJson(e as Map<String, dynamic>))
          .toList(),
      mealVariety: const MealVarietyConverter().fromJson(json['meal_variety']),
      emailVerifiedAt: json['email_verified_at'] as String?,
      isChecked: json['is_checked'] as bool?,
      isCompleted: json['is_completed'] as bool?,
      isActive: json['is_active'] as bool?,
      countryKey: json['country_key'] as String?,
      haveExercisePlan: json['is_have_exercise_plan'] as bool?,
      haveMealPlan: json['is_have_meal_plan'] as bool?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'hasValidSubscription': instance.hasValidSubscription,
      'country': const CountryConverter().toJson(instance.country),
      'city_id': const CityConverter().toJson(instance.city),
      'gender': const GenderEnumConverter().toJson(instance.gender),
      'package_id': instance.packageId,
      'age': instance.age,
      'current_weight': instance.currentWeight,
      'height': instance.height,
      'otpCode': instance.otpCode,
      'goals': instance.goals,
      'target_weight': instance.targetWeight,
      'body_shape': const BodyShapeConverter().toJson(instance.bodyShape),
      'training_days_per_week': instance.trainingDaysPerWeek,
      'body_parts': instance.bodyParts,
      'exercise_days': instance.exerciseDays,
      'workoutTypes': instance.workoutTypes,
      'equipments': instance.equipments,
      'diet': const DietConverter().toJson(instance.diet),
      'recipe_types': instance.recipeTypes,
      'foods_not_liked': instance.foodsNotLiked,
      'meal_variety': const MealVarietyConverter().toJson(instance.mealVariety),
      'email_verified_at': instance.emailVerifiedAt,
      'is_checked': instance.isChecked,
      'is_completed': instance.isCompleted,
      'is_active': instance.isActive,
      'country_key': instance.countryKey,
      'is_have_exercise_plan': instance.haveExercisePlan,
      'is_have_meal_plan': instance.haveMealPlan,
    };

_Country _$CountryFromJson(Map<String, dynamic> json) => _Country(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_City _$CityFromJson(Map<String, dynamic> json) => _City(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_Goal _$GoalFromJson(Map<String, dynamic> json) => _Goal(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$GoalToJson(_Goal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_BodyShape _$BodyShapeFromJson(Map<String, dynamic> json) => _BodyShape(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$BodyShapeToJson(_BodyShape instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_MuscleFocus _$MuscleFocusFromJson(Map<String, dynamic> json) => _MuscleFocus(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$MuscleFocusToJson(_MuscleFocus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_WorkoutType _$WorkoutTypeFromJson(Map<String, dynamic> json) => _WorkoutType(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$WorkoutTypeToJson(_WorkoutType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_Equipment _$EquipmentFromJson(Map<String, dynamic> json) => _Equipment(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$EquipmentToJson(_Equipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_Diet _$DietFromJson(Map<String, dynamic> json) => _Diet(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$DietToJson(_Diet instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
    };

_RecipeType _$RecipeTypeFromJson(Map<String, dynamic> json) => _RecipeType(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$RecipeTypeToJson(_RecipeType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_FoodNotLiked _$FoodNotLikedFromJson(Map<String, dynamic> json) =>
    _FoodNotLiked(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$FoodNotLikedToJson(_FoodNotLiked instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_MealVariety _$MealVarietyFromJson(Map<String, dynamic> json) => _MealVariety(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$MealVarietyToJson(_MealVariety instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
