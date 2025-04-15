// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      hasValidSubscription: json['hasValidSubscription'] as bool?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      city: json['city_id'] == null
          ? null
          : City.fromJson(json['city_id'] as Map<String, dynamic>),
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
      isChecked: json['is_checked'] as String?,
      isCompleted: json['is_completed'] as String?,
      isActive: json['is_active'] as String?,
      countryKey: json['country_key'] as String?,
      haveExercisePlan: json['is_have_exercise_plan'] as bool?,
      haveMealPlan: json['is_have_meal_plan'] as bool?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'hasValidSubscription': instance.hasValidSubscription,
      'country': instance.country,
      'city_id': instance.city,
      'gender': const GenderEnumConverter().toJson(instance.gender),
      'package_id': instance.packageId,
      'age': instance.age,
      'current_weight': instance.currentWeight,
      'height': instance.height,
      'otpCode': instance.otpCode,
      'goals': instance.goals,
      'target_weight': instance.targetWeight,
      'body_shape': const BodyShapeConverter().toJson(instance.bodyShape),
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

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$GoalImpl _$$GoalImplFromJson(Map<String, dynamic> json) => _$GoalImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GoalImplToJson(_$GoalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$BodyShapeImpl _$$BodyShapeImplFromJson(Map<String, dynamic> json) =>
    _$BodyShapeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BodyShapeImplToJson(_$BodyShapeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$MuscleFocusImpl _$$MuscleFocusImplFromJson(Map<String, dynamic> json) =>
    _$MuscleFocusImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MuscleFocusImplToJson(_$MuscleFocusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$WorkoutTypeImpl _$$WorkoutTypeImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WorkoutTypeImplToJson(_$WorkoutTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$EquipmentImpl _$$EquipmentImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$EquipmentImplToJson(_$EquipmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$DietImpl _$$DietImplFromJson(Map<String, dynamic> json) => _$DietImpl(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$DietImplToJson(_$DietImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
    };

_$RecipeTypeImpl _$$RecipeTypeImplFromJson(Map<String, dynamic> json) =>
    _$RecipeTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RecipeTypeImplToJson(_$RecipeTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$FoodNotLikedImpl _$$FoodNotLikedImplFromJson(Map<String, dynamic> json) =>
    _$FoodNotLikedImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FoodNotLikedImplToJson(_$FoodNotLikedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$MealVarietyImpl _$$MealVarietyImplFromJson(Map<String, dynamic> json) =>
    _$MealVarietyImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MealVarietyImplToJson(_$MealVarietyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
