import 'package:bloc/bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/home_module/data/models/meal_plan_model.dart';
import 'package:urfit/modules/meals_module/data/models/cached_nutrition.dart';
import 'package:urfit/modules/meals_module/data/models/search_recipe_model.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/service_locator.dart';
import '../data/models/meal_details_model.dart';
import '../data/models/meal_model.dart';
import '../repo/meals_repo.dart';

part 'meals_state.dart';

part 'meals_cubit.freezed.dart';

class MealsCubit extends Cubit<MealsState> {
  final BaseMealsRepo _repo;

  MealsCubit(this._repo)
      : super(const MealsState(
            searchRecipeModel: SearchRecipeModel(
                type: "breakfast",
                minCalories: 50,
                maxCalories: 200,
                maxReadyTime: 20)));


  Future<Nutrients> getMealPlanByDate(String date) async {
    await getMealPlans();
    final plan = state.allPlans.firstWhere((plan) {
      return plan.startDate == date;
    });
    num totalCaloriesForAllWeek = 0;
    num totalCarbsForAllWeek = 0;
    num totalProteinForAllWeek = 0;
    totalCaloriesForAllWeek += plan.week.Friday.nutrients.calories;
    totalCaloriesForAllWeek += plan.week.Monday.nutrients.calories;
    totalCaloriesForAllWeek += plan.week.Saturday.nutrients.calories;
    totalCaloriesForAllWeek += plan.week.Sunday.nutrients.calories;
    totalCaloriesForAllWeek += plan.week.Thursday.nutrients.calories;
    totalCaloriesForAllWeek += plan.week.Wednesday.nutrients.calories;
    totalCaloriesForAllWeek += plan.week.Tuesday.nutrients.calories;

    totalCarbsForAllWeek += plan.week.Friday.nutrients.carbohydrates;
    totalCarbsForAllWeek += plan.week.Monday.nutrients.carbohydrates;
    totalCarbsForAllWeek += plan.week.Saturday.nutrients.carbohydrates;
    totalCarbsForAllWeek += plan.week.Sunday.nutrients.carbohydrates;
    totalCarbsForAllWeek += plan.week.Thursday.nutrients.carbohydrates;
    totalCarbsForAllWeek += plan.week.Wednesday.nutrients.carbohydrates;
    totalCarbsForAllWeek += plan.week.Tuesday.nutrients.carbohydrates;

    totalProteinForAllWeek += plan.week.Friday.nutrients.protein;
    totalProteinForAllWeek += plan.week.Monday.nutrients.protein;
    totalProteinForAllWeek += plan.week.Saturday.nutrients.protein;
    totalProteinForAllWeek += plan.week.Sunday.nutrients.protein;
    totalProteinForAllWeek += plan.week.Thursday.nutrients.protein;
    totalProteinForAllWeek += plan.week.Wednesday.nutrients.protein;
    totalProteinForAllWeek += plan.week.Tuesday.nutrients.protein;

    Nutrients nutrients = Nutrients(
        calories: totalCaloriesForAllWeek.toDouble(),
        carbohydrates: totalCarbsForAllWeek.toDouble(),
        protein: totalProteinForAllWeek.toDouble(), fat: 0);


    return nutrients;

  }
  searchMeals() async {
    emit(state.copyWith(getAllMealsState: RequestState.loading));

    var result =
        await _repo.searchRecipes(searchRecipeModel: state.searchRecipeModel);

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          getAllMealsState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          getAllMealsState: RequestState.success,
          allMeals: successData,
        ));
        // sl<AuthenticationBloc>().currentUser = ;
      },
    );
  }

  generateMealPlan() async {
    final user = sl<AuthenticationBloc>().currentUser;
    double targetCalories = calculateTargetCalories(
      currentWeight: user!.currentWeight!.toDouble(),
      targetWeight: user.targetWeight!.toDouble(),
      height: user.height!.toDouble(),
      age: user.age!.toInt(),
      gender: user.gender!.name,
      activityLevel: 'moderate',
    );
    var result = await _repo.generateMealPlan(targetCalories: targetCalories);

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          getMealPlansState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          getMealPlansState: RequestState.success,
          // allMeals: successData,
        ));
        // sl<AuthenticationBloc>().add(UpdateSubscriptionEvent());
        sl<AuthenticationBloc>().add(UpdateSubscriptionEvent());
        // sl<AuthenticationBloc>().currentUser = ;
      },
    );
  }



  double calculateTargetCalories({
    required double currentWeight, // in kg
    required double targetWeight, // in kg
    required double height, // in cm
    required int age, // in years
    required String gender, // "male" or "female"
    required String
        activityLevel, // "sedentary", "light", "moderate", "active", "very_active"
  }) {
    // Calculate BMR using Mifflin-St Jeor Equation
    double bmr;
    if (gender.toLowerCase() == 'male') {
      bmr = 10 * currentWeight + 6.25 * height - 5 * age + 5;
    } else if (gender.toLowerCase() == 'female') {
      bmr = 10 * currentWeight + 6.25 * height - 5 * age - 161;
    } else {
      throw ArgumentError('Invalid gender. Use "male" or "female".');
    }

    // Adjust BMR for activity level
    double activityFactor;
    switch (activityLevel.toLowerCase()) {
      case 'sedentary':
        activityFactor = 1.2;
        break;
      case 'light':
        activityFactor = 1.375;
        break;
      case 'moderate':
        activityFactor = 1.55;
        break;
      case 'active':
        activityFactor = 1.725;
        break;
      case 'very_active':
        activityFactor = 1.9;
        break;
      default:
        throw ArgumentError(
            'Invalid activity level. Use "sedentary", "light", "moderate", "active", or "very_active".');
    }

    double maintenanceCalories = bmr * activityFactor;

    // Determine daily calorie adjustment for target weight
    double calorieAdjustment = (targetWeight - currentWeight) * 7700 / 30;

    // Calculate target calories
    double targetCalories = maintenanceCalories + calorieAdjustment;

    return targetCalories;
  }

  clearMealDetails() {
    emit(state.copyWith(mealDetails: null));
    print("mealDetails : ${state.mealDetails}");
  }

  getMealDetails(int id) {
    emit(state.copyWith(getMealDetailsState: RequestState.loading));
    _repo.getRecipeDetails(id: id).then((result) {
      result.fold(
        (failure) {
          print("failure $failure");

          emit(state.copyWith(
            getMealDetailsState: RequestState.failure,
            errMessage: failure.message,
          ));
        },
        (successData) {
          print("success $successData");
          emit(state.copyWith(
            getMealDetailsState: RequestState.success,
            mealDetails: successData,
          ));
          // sl<AuthenticationBloc>().currentUser = ;
        },
      );
    });
  }

  updateSearchType(int type) {
    if (type == 0) {
      emit(state.copyWith(
          searchRecipeModel:
              state.searchRecipeModel.copyWith(type: "breakfast"),
          currentTypeIndex: type));
    } else {
      emit(state.copyWith(
          searchRecipeModel:
              state.searchRecipeModel.copyWith(type: "main course"),
          currentTypeIndex: type));
    }
    searchMeals();
  }

  updateMaxReadyTime(double min) {
    emit(state.copyWith(
        searchRecipeModel:
            state.searchRecipeModel.copyWith(maxReadyTime: min.toInt())));
    searchMeals();
  }

  updateMinMaxCalories(double min, double max) {
    emit(state.copyWith(
        searchRecipeModel: state.searchRecipeModel
            .copyWith(minCalories: min.toInt(), maxCalories: max.toInt())));
    searchMeals();
  }

  updateIncludedIngredients(List<String>? ingredients) {
    emit(state.copyWith(
        searchRecipeModel:
            state.searchRecipeModel.copyWith(includeIngredients: ingredients)));
    searchMeals();
  }

  getMealPlans({bool fromHistory = false}) async {
    emit(state.copyWith(getMealPlansState: RequestState.loading));

    var result = await _repo.getMealPlans();

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          getMealPlansState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) async {
        print("success $successData");

        if(DateTime.parse(successData.first.endDate).isBefore(DateTime.now()) && !fromHistory ){
          await generateMealPlan();
          await getMealPlans();
        }else {
          emit(state.copyWith(
            getMealPlansState: RequestState.success,
            allPlans: successData,
          ));
        }
        // sl<AuthenticationBloc>().currentUser = ;
      },
    );
  }

  MealPlanModel? getCurrentMealPlan() {
    if (state.allPlans.isNotEmpty) {
      return state.allPlans.firstWhere((plan) {
        final endDate = DateTime.parse(plan.endDate);
        return endDate.isAfter(DateTime.now());
      });
    } else {
      return null;
    }
  }

 Day? getPlanForToday() {
    final plan = getCurrentMealPlan();
    final int day = DateTime.now().weekday;

     switch (day) {
      case 1:
        return plan?.week.Monday;
      case 2:
        return plan?.week.Tuesday;
      case 3:
        return plan?.week.Wednesday;
      case 4:
        return plan?.week.Thursday;
      case 5:
        return plan?.week.Friday;
      case 6:
        return plan?.week.Saturday;
      case 7:
        return plan?.week.Sunday;
    }
     return null;
  }


getNutrientsData(){
   final result =   _repo.getLocalNutritionData();
   result.fold(
         (failure) {
       print("failure $failure");

       emit(state.copyWith(
         // getMealPlansState: RequestState.failure,
         errMessage: failure.message,
       ));
     },
         (successData) {
       print("success $successData");
       emit(state.copyWith(
         // getMealPlansState: RequestState.success,
         nutritionData: successData,
         gainedCarb: getSumCarbStored(successData),
         gainedProtein: getSumProteinStored(successData),
         gainedCalories: getSumCaloriesStored(successData),
       ));
       // sl<AuthenticationBloc>().currentUser = ;
     },
   );
}
addMealNutrients({required String mealId,required num calories ,required num  carb ,required num  protein}) async {

final nutritionData = NutritionData() ..id = mealId
  ..calories = calories.toDouble()
  ..carbs = carb.toDouble()
  ..protein = protein.toDouble();
   await _repo.addLocalNutritionData(nutritionData);
   getNutrientsData();
   await calculateNutritionData(calories: calories, carb: carb, protein: protein);
}

calculateNutritionData({required num calories ,required num  carb ,required num  protein}) async {
    state.allPlans.first.id;
    final result =await  _repo.calculateNutrients(mealPlanId : state.allPlans.first.id,calories: state.gainedCalories, protein: state.gainedProtein, carbs: state.gainedCarb);
    result.fold(
          (failure) {
        print("failure $failure");

        emit(state.copyWith(
          // getMealPlansState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
          (successData) {
        emit(state.copyWith(
          // getMealPlansState: RequestState.success,
          // nutritionData: [],
          // gainedCarb: 0,
          // gainedProtein: 0,
          // gainedCalories: 0,
        ));
        // sl<AuthenticationBloc>().currentUser = ;
      },
    );
}

getSumCaloriesStored(nutritionData){
     num calories = 0;
    nutritionData.forEach((data) {
     calories += data.calories;
    });
    return calories;
}
  getSumProteinStored(nutritionData){
    num protein = 0;
    nutritionData.forEach((data) {
      protein += data.protein;
    });
    return protein;
  }
  getSumCarbStored(nutritionData){
    num carbs = 0;
    nutritionData.forEach((data) {
      carbs += data.carbs;
    });
    return carbs;
  }
}
