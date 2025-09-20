// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlanHistoryModel _$PlanHistoryModelFromJson(Map<String, dynamic> json) =>
    _PlanHistoryModel(
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      subscription_data: json['subscription_data'] == null
          ? null
          : SubscriptionData.fromJson(
              json['subscription_data'] as Map<String, dynamic>),
      user_target_weight: json['user_target_weight'] as num?,
      mealPlans: MealPlans.fromJson(json['mealPlans'] as Map<String, dynamic>),
      exercisePlans:
          ExercisePlans.fromJson(json['exercisePlans'] as Map<String, dynamic>),
      expectedResultOfExercisePlans: json['expectedResultOfExercisePlans'] ==
              null
          ? null
          : ExpectedResultOfExercisePlans.fromJson(
              json['expectedResultOfExercisePlans'] as Map<String, dynamic>),
      expectedResultOfMealPlans: json['expectedResultOfMealPlans'] == null
          ? null
          : ExpectedResultOfMealPlans.fromJson(
              json['expectedResultOfMealPlans'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlanHistoryModelToJson(_PlanHistoryModel instance) =>
    <String, dynamic>{
      'package': instance.package,
      'subscription_data': instance.subscription_data,
      'user_target_weight': instance.user_target_weight,
      'mealPlans': instance.mealPlans,
      'exercisePlans': instance.exercisePlans,
      'expectedResultOfExercisePlans': instance.expectedResultOfExercisePlans,
      'expectedResultOfMealPlans': instance.expectedResultOfMealPlans,
    };

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toInt(),
      price: json['price'] as String,
      type: json['type'] as String,
      is_active: (json['is_active'] as num?)?.toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'price': instance.price,
      'type': instance.type,
      'is_active': instance.is_active,
      'image': instance.image,
    };

_SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    _SubscriptionData(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      package_id: (json['package_id'] as num).toInt(),
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$SubscriptionDataToJson(_SubscriptionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'package_id': instance.package_id,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_MealPlans _$MealPlansFromJson(Map<String, dynamic> json) => _MealPlans(
      calories: json['calories'] as num,
      protein: json['protein'] as num,
      carbs: json['carbs'] as num,
    );

Map<String, dynamic> _$MealPlansToJson(_MealPlans instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'carbs': instance.carbs,
    };

_ExercisePlans _$ExercisePlansFromJson(Map<String, dynamic> json) =>
    _ExercisePlans(
      calories: json['calories'] as num,
      sets: json['sets'] as num,
      times: json['times'] as num,
    );

Map<String, dynamic> _$ExercisePlansToJson(_ExercisePlans instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'sets': instance.sets,
      'times': instance.times,
    };

_ExpectedResultOfExercisePlans _$ExpectedResultOfExercisePlansFromJson(
        Map<String, dynamic> json) =>
    _ExpectedResultOfExercisePlans(
      calories: json['calories'] as num,
      sets: json['sets'] as num,
      times: json['times'] as num,
    );

Map<String, dynamic> _$ExpectedResultOfExercisePlansToJson(
        _ExpectedResultOfExercisePlans instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'sets': instance.sets,
      'times': instance.times,
    };

_ExpectedResultOfMealPlans _$ExpectedResultOfMealPlansFromJson(
        Map<String, dynamic> json) =>
    _ExpectedResultOfMealPlans(
      calories: json['calories'] as num,
      protein: json['protein'] as num,
      fat: json['fat'] as num?,
    );

Map<String, dynamic> _$ExpectedResultOfMealPlansToJson(
        _ExpectedResultOfMealPlans instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
    };
