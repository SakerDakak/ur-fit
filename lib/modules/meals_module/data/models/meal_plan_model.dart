import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_plan_model.freezed.dart';
part 'meal_plan_model.g.dart';



@freezed
class MealPlan with _$MealPlan {
  const factory MealPlan({
    required int id,
    required String timeFrame,
    required String startDate,
    required String endDate,
    required Week week,
  }) = _MealPlan;

  factory MealPlan.fromJson(Map<String, Object?> json) =>
      _$MealPlanFromJson(json);
}

@freezed
class Week with _$Week {
  const factory Week({
    required Day monday,
    required Day tuesday,
    required Day wednesday,
    required Day thursday,
    required Day friday,
    required Day saturday,
    required Day sunday,
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
    @JsonKey(name: 'recipe_id') required String recipeId,
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
