import 'package:dartz/dartz.dart';
import 'package:urfit/core/error/failures.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_local_datasource.dart';

import '../../home_module/data/models/meal_plan_model.dart';
import '../data/data_source/meals_remote_datasource.dart';
import '../data/models/cached_nutrition.dart';
import '../data/models/meal_details_model.dart';
import '../data/models/meal_model.dart';
import '../data/models/search_recipe_model.dart';

abstract class BaseMealsRepo {
  Future<Either<Failure , List<MealModel>>> searchRecipes({required SearchRecipeModel searchRecipeModel});
  Future<Either<Failure ,Recipe>> getRecipeDetails({required int id});
  Future<Either<Failure ,MealPlanModel>> generateMealPlan({required double targetCalories});
  Future<Either<Failure ,List<MealPlanModel>>> getMealPlans();
  Either<Failure ,List<NutritionData>> getLocalNutritionData() ;
  Future<Either<Failure ,void>> addLocalNutritionData(NutritionData data);
  Future<Either<Failure ,void>> calculateNutrients({required int mealPlanId,required num calories , required num protein , required num carbs});
}

class MealsRepo extends BaseMealsRepo {
  final BaseMealsRemoteDataSource mealsRemoteDataSource;
  final MealsLocalDatasource mealsLocalDatasource;
  MealsRepo(this.mealsRemoteDataSource, this.mealsLocalDatasource);
  @override
  Future<Either<Failure, Recipe>> getRecipeDetails({required int id}) async {
    try {

      final result = await mealsRemoteDataSource.getRecipeDetails(id: id);
      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MealModel>>> searchRecipes({required SearchRecipeModel searchRecipeModel}) async {
    try {
      final result = await mealsRemoteDataSource.searchRecipes(searchRecipeModel: searchRecipeModel);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MealPlanModel>> generateMealPlan({required double targetCalories}) async {
    try {
      final result = await mealsRemoteDataSource.generateMealPlan(targetCalories: targetCalories);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MealPlanModel>>> getMealPlans() async {
    try {
      final result = await mealsRemoteDataSource.getMealPlans();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Either<Failure, List<NutritionData>> getLocalNutritionData() {
    try {
      final result =  mealsLocalDatasource.getAllData();

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> addLocalNutritionData(NutritionData data) async {
    try {
      final result = await mealsLocalDatasource.addData(data);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> calculateNutrients({required int mealPlanId,required num calories, required num protein, required num carbs}) async {
    try {
      final result = await mealsRemoteDataSource.calculateNutrients(mealPlanId : mealPlanId ,calories: calories, protein: protein, carbs: carbs);

      return Right(result);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

}