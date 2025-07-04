import 'package:urfit/core/data/api/api_client.dart';

import '../../../../core/data/api/endpoints.dart';
import '../../../home_module/data/models/meal_plan_model.dart';
import '../models/meal_details_model.dart';
import '../models/meal_model.dart';
import '../models/search_recipe_model.dart';

class MealsRemoteDataSource {
  final ApiClient dioServices;

  MealsRemoteDataSource(this.dioServices);
  Future<Recipe> getRecipeDetails({required int id}) async {
    final response = await dioServices.get(EndPoints.getRecipeDetails(id));

    return Recipe.fromJson(response.data);
  }

  Future<List<MealModel>> searchRecipes({required SearchRecipeModel searchRecipeModel}) async {
    final response = await dioServices.get(EndPoints.searchRecipe, parameter: searchRecipeModel.toJson());
    return (response.data as List).map((e) => MealModel.fromJson(e)).toList();
  }

  Future<MealPlanModel> generateMealPlan({required double targetCalories}) async {
    final response = await dioServices.post(EndPoints.generateMealPlan, data: {"targetCalories": targetCalories});
    return MealPlanModel.fromJson(response.data['meal_plan']);
  }

  Future<List<MealPlanModel>> getMealPlans() async {
    final response = await dioServices.get(EndPoints.getMealPlan);
    return (response.data['data'] as List).map((plan) => MealPlanModel.fromJson(plan)).toList();
  }

  Future<void> calculateNutrients(
      {required int mealPlanId, required num calories, required num protein, required num carbs}) async {
    final response = await dioServices.post(EndPoints.calculateNutrients,
        data: {'meal_plan_id': mealPlanId, "calories": calories, "protein": protein, "carbs": carbs});
  }
}
