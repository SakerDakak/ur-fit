// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanHistoryModelImpl _$$PlanHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanHistoryModelImpl(
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

Map<String, dynamic> _$$PlanHistoryModelImplToJson(
        _$PlanHistoryModelImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'subscription_data': instance.subscription_data,
      'user_target_weight': instance.user_target_weight,
      'mealPlans': instance.mealPlans,
      'exercisePlans': instance.exercisePlans,
      'expectedResultOfExercisePlans': instance.expectedResultOfExercisePlans,
      'expectedResultOfMealPlans': instance.expectedResultOfMealPlans,
    };

_$PackageImpl _$$PackageImplFromJson(Map<String, dynamic> json) =>
    _$PackageImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toInt(),
      price: json['price'] as String,
      type: json['type'] as String,
      is_active: (json['is_active'] as num?)?.toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$PackageImplToJson(_$PackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'duration': instance.duration,
      'price': instance.price,
      'type': instance.type,
      'is_active': instance.is_active,
      'image': instance.image,
    };

_$SubscriptionDataImpl _$$SubscriptionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionDataImpl(
      id: (json['id'] as num).toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      package_id: (json['package_id'] as num).toInt(),
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$$SubscriptionDataImplToJson(
        _$SubscriptionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'package_id': instance.package_id,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_$MealPlansImpl _$$MealPlansImplFromJson(Map<String, dynamic> json) =>
    _$MealPlansImpl(
      calories: json['calories'] as num,
      protein: json['protein'] as num,
      carbs: json['carbs'] as num,
    );

Map<String, dynamic> _$$MealPlansImplToJson(_$MealPlansImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'carbs': instance.carbs,
    };

_$ExercisePlansImpl _$$ExercisePlansImplFromJson(Map<String, dynamic> json) =>
    _$ExercisePlansImpl(
      calories: json['calories'] as num,
      sets: json['sets'] as num,
      times: json['times'] as num,
    );

Map<String, dynamic> _$$ExercisePlansImplToJson(_$ExercisePlansImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'sets': instance.sets,
      'times': instance.times,
    };

_$ExpectedResultOfExercisePlansImpl
    _$$ExpectedResultOfExercisePlansImplFromJson(Map<String, dynamic> json) =>
        _$ExpectedResultOfExercisePlansImpl(
          calories: json['calories'] as num,
          sets: json['sets'] as num,
          times: json['times'] as num,
        );

Map<String, dynamic> _$$ExpectedResultOfExercisePlansImplToJson(
        _$ExpectedResultOfExercisePlansImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'sets': instance.sets,
      'times': instance.times,
    };

_$ExpectedResultOfMealPlansImpl _$$ExpectedResultOfMealPlansImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpectedResultOfMealPlansImpl(
      calories: json['calories'] as num,
      protein: json['protein'] as num,
      fat: json['fat'] as num,
    );

Map<String, dynamic> _$$ExpectedResultOfMealPlansImplToJson(
        _$ExpectedResultOfMealPlansImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
    };
