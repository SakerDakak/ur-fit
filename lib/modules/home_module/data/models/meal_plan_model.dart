import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_plan_model.freezed.dart';
part 'meal_plan_model.g.dart';



@freezed
class MealPlanModel with _$MealPlanModel {
  const factory MealPlanModel({
    required int id,
    required String timeFrame,
    required String startDate,
    required String endDate,
    required Week week,
  }) = _MealPlan;

  factory MealPlanModel.fromJson(Map<String, Object?> json) =>
      _$MealPlanModelFromJson(json);
}

@freezed
class Week with _$Week {
  const factory Week({
    required Day Monday,
    required Day Tuesday,
    required Day Wednesday,
    required Day Thursday,
    required Day Friday,
    required Day Saturday,
    required Day Sunday,
  }) = _Week;

  factory Week.fromJson(Map<String, Object?> json) => _$WeekFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    required List<Meal> meals,
    required Nutrients nutrients,
  }) = _Day;

  factory Day.fromJson(Map<String, Object?> json) => _$DayFromJson(json);
}

@freezed
class Meal with _$Meal {
  const factory Meal({
    required int id,
    required String recipe_id,
    required String imageType,
    required String title,
    required int readyInMinutes,
    required int servings,
    required String sourceUrl,
  }) = _Meal;

  factory Meal.fromJson(Map<String, Object?> json) => _$MealFromJson(json);
}

@freezed
class Nutrients with _$Nutrients {
  const factory Nutrients({
    required double calories,
    required double protein,
    required double fat,
    required double carbohydrates,
  }) = _Nutrients;

  factory Nutrients.fromJson(Map<String, Object?> json) =>
      _$NutrientsFromJson(json);
}
