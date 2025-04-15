// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealPlanImpl _$$MealPlanImplFromJson(Map<String, dynamic> json) =>
    _$MealPlanImpl(
      id: (json['id'] as num).toInt(),
      timeFrame: json['timeFrame'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      week: Week.fromJson(json['week'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MealPlanImplToJson(_$MealPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeFrame': instance.timeFrame,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'week': instance.week,
    };

_$WeekImpl _$$WeekImplFromJson(Map<String, dynamic> json) => _$WeekImpl(
      Monday: Day.fromJson(json['Monday'] as Map<String, dynamic>),
      Tuesday: Day.fromJson(json['Tuesday'] as Map<String, dynamic>),
      Wednesday: Day.fromJson(json['Wednesday'] as Map<String, dynamic>),
      Thursday: Day.fromJson(json['Thursday'] as Map<String, dynamic>),
      Friday: Day.fromJson(json['Friday'] as Map<String, dynamic>),
      Saturday: Day.fromJson(json['Saturday'] as Map<String, dynamic>),
      Sunday: Day.fromJson(json['Sunday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekImplToJson(_$WeekImpl instance) =>
    <String, dynamic>{
      'Monday': instance.Monday,
      'Tuesday': instance.Tuesday,
      'Wednesday': instance.Wednesday,
      'Thursday': instance.Thursday,
      'Friday': instance.Friday,
      'Saturday': instance.Saturday,
      'Sunday': instance.Sunday,
    };

_$DayImpl _$$DayImplFromJson(Map<String, dynamic> json) => _$DayImpl(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutrients: Nutrients.fromJson(json['nutrients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DayImplToJson(_$DayImpl instance) => <String, dynamic>{
      'meals': instance.meals,
      'nutrients': instance.nutrients,
    };

_$MealImpl _$$MealImplFromJson(Map<String, dynamic> json) => _$MealImpl(
      id: (json['id'] as num).toInt(),
      recipe_id: json['recipe_id'] as String,
      imageType: json['imageType'] as String,
      title: json['title'] as String,
      readyInMinutes: (json['readyInMinutes'] as num).toInt(),
      servings: (json['servings'] as num).toInt(),
      sourceUrl: json['sourceUrl'] as String,
    );

Map<String, dynamic> _$$MealImplToJson(_$MealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipe_id,
      'imageType': instance.imageType,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
    };

_$NutrientsImpl _$$NutrientsImplFromJson(Map<String, dynamic> json) =>
    _$NutrientsImpl(
      calories: (json['calories'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
    );

Map<String, dynamic> _$$NutrientsImplToJson(_$NutrientsImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbohydrates': instance.carbohydrates,
    };
