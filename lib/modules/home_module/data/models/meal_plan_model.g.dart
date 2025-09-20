// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MealPlan _$MealPlanFromJson(Map<String, dynamic> json) => _MealPlan(
      id: (json['id'] as num).toInt(),
      timeFrame: json['timeFrame'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      week: Week.fromJson(json['week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MealPlanToJson(_MealPlan instance) => <String, dynamic>{
      'id': instance.id,
      'timeFrame': instance.timeFrame,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'week': instance.week,
    };

_Week _$WeekFromJson(Map<String, dynamic> json) => _Week(
      Monday: Day.fromJson(json['Monday'] as Map<String, dynamic>),
      Tuesday: Day.fromJson(json['Tuesday'] as Map<String, dynamic>),
      Wednesday: Day.fromJson(json['Wednesday'] as Map<String, dynamic>),
      Thursday: Day.fromJson(json['Thursday'] as Map<String, dynamic>),
      Friday: Day.fromJson(json['Friday'] as Map<String, dynamic>),
      Saturday: Day.fromJson(json['Saturday'] as Map<String, dynamic>),
      Sunday: Day.fromJson(json['Sunday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeekToJson(_Week instance) => <String, dynamic>{
      'Monday': instance.Monday,
      'Tuesday': instance.Tuesday,
      'Wednesday': instance.Wednesday,
      'Thursday': instance.Thursday,
      'Friday': instance.Friday,
      'Saturday': instance.Saturday,
      'Sunday': instance.Sunday,
    };

_Day _$DayFromJson(Map<String, dynamic> json) => _Day(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutrients: Nutrients.fromJson(json['nutrients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayToJson(_Day instance) => <String, dynamic>{
      'meals': instance.meals,
      'nutrients': instance.nutrients,
    };

_Meal _$MealFromJson(Map<String, dynamic> json) => _Meal(
      id: (json['id'] as num).toInt(),
      recipe_id: json['recipe_id'] as String,
      imageType: json['imageType'] as String,
      title: json['title'] as String,
      readyInMinutes: (json['readyInMinutes'] as num).toInt(),
      servings: (json['servings'] as num).toInt(),
      sourceUrl: json['sourceUrl'] as String,
    );

Map<String, dynamic> _$MealToJson(_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipe_id,
      'imageType': instance.imageType,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
    };

_Nutrients _$NutrientsFromJson(Map<String, dynamic> json) => _Nutrients(
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
    );

Map<String, dynamic> _$NutrientsToJson(_Nutrients instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbohydrates': instance.carbohydrates,
    };
