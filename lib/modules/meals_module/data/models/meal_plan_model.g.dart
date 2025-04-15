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
      monday: Day.fromJson(json['monday'] as Map<String, dynamic>),
      tuesday: Day.fromJson(json['tuesday'] as Map<String, dynamic>),
      wednesday: Day.fromJson(json['wednesday'] as Map<String, dynamic>),
      thursday: Day.fromJson(json['thursday'] as Map<String, dynamic>),
      friday: Day.fromJson(json['friday'] as Map<String, dynamic>),
      saturday: Day.fromJson(json['saturday'] as Map<String, dynamic>),
      sunday: Day.fromJson(json['sunday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeekImplToJson(_$WeekImpl instance) =>
    <String, dynamic>{
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
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
      recipeId: json['recipe_id'] as String,
      imageType: json['imageType'] as String,
      title: json['title'] as String,
      readyInMinutes: (json['readyInMinutes'] as num).toInt(),
      servings: (json['servings'] as num).toInt(),
      sourceUrl: json['sourceUrl'] as String,
    );

Map<String, dynamic> _$$MealImplToJson(_$MealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipe_id': instance.recipeId,
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
