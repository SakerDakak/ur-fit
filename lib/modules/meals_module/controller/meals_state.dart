part of 'meals_cubit.dart';

@freezed
abstract class MealsState with _$MealsState {
  const factory MealsState({
    required SearchRecipeModel searchRecipeModel,
    @Default(0) int currentTypeIndex,
    @Default([]) List<MealModel> allMeals,
    @Default([]) List<NutritionData> nutritionData,
    @Default(null) Recipe? mealDetails,
    @Default(0) num gainedCalories,
    @Default(0) num gainedCarb,
    @Default(0) num gainedProtein,
    @Default([]) List<MealPlanModel> allPlans,
    @Default('') String errMessage,
    @Default(RequestState.initial) RequestState getAllMealsState,
    @Default(RequestState.initial) RequestState getMealDetailsState,
    @Default(RequestState.initial) RequestState getMealPlansState,

  }) = _MealsState;
}
