import 'package:dio/dio.dart';
import 'package:urfit/core/data/api/api_client.dart';
import 'package:urfit/core/data/api/endpoints.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';

import '../../../../core/presentation/assets/assets_manager.dart';
import '../models/no_of_daily_meals.dart';
import '../models/user_personal_info_model.dart';

class PersonalInfoDataSourceImpl {
  final ApiClient dioServices;

  const PersonalInfoDataSourceImpl(this.dioServices);

  Future<List<SelectionItemModel>> getDietOptions() async {
    final res = await dioServices.get(
      EndPoints.diets,
    );

    List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getLikedMealsOptions() async {
    final res = await dioServices.get(
      EndPoints.recipeTypes,
    );

    List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getMealsVariantsOptions() async {
    final res = await dioServices.get(
      EndPoints.mealsVariants,
    );

    List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getNotLikedMealsOptions() async {
    final res = await dioServices.get(
      EndPoints.foodsNotLiked,
    );

    List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<UserGoalsModel>> getGoals() async {
    List<String> defaultImages = [
      AssetsManager.goalsNutrition,
      AssetsManager.goalsGoodLook,
      AssetsManager.goalsBuildMuscles,
      AssetsManager.goalsFitness,
    ];
    final res = await dioServices.get(
      EndPoints.goals,
    );

    return res.data['data'].map<UserGoalsModel>((e) {
      e['imageUrl'] = defaultImages[e['id'] - 1];
      if (e['id'] == 1) {
        e['sectionOneType'] = 'nutrition';
      } else if (e['id'] == 2) {
        e['sectionOneType'] = 'newLook';
      } else if (e['id'] == 3) {
        e['sectionTwoType'] = 'buildMuscles';
      } else if (e['id'] == 4) {
        e['sectionTwoType'] = 'improveFitness';
      }
      return UserGoalsModel.fromJson(e);
    }).toList();
  }

  Future<List<BodyPartsModel>> getMuscleFocus() async {
    final res = await dioServices.get(
      EndPoints.muscleFocus,
    );

    List<BodyPartsModel> data = [];

    for (var element in res.data['data']) {
      data.add(BodyPartsModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getWorkoutTypes() async {
    final res = await dioServices.get(
      EndPoints.workoutTypes,
    );

    List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getEquipments() async {
    final res = await dioServices.get(
      EndPoints.equipments,
    );

    List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<UserModel> updatePersonalInfo({required UserPersonalInfoModel personalInfoModel}) async {
    print("gender : ${personalInfoModel.gender?.index}");
    Map<String, dynamic> body = {
      "gender": personalInfoModel.gender?.name,
      "age": personalInfoModel.age,
      "height": personalInfoModel.height,
      "current_weight": personalInfoModel.current_weight,
      "target_weight": personalInfoModel.targetWeight,
      "training_days_per_week": personalInfoModel.weaklyTrainingCount,
      "diet_id": personalInfoModel.diet_id,
      "meal_variety_id": personalInfoModel.mealsVariantsId
    };
    personalInfoModel.selectedGaols.forEach((goal) {
      final index = personalInfoModel.selectedGaols.indexOf(goal);
      body.addAll({"goal_id[$index]": goal.id});
    });
    personalInfoModel.likedMealsIds.forEach((id) {
      final index = personalInfoModel.likedMealsIds.indexOf(id);

      body.addAll({"recipe_types[$index]": id});
    });
    personalInfoModel.notLikedMealsIds.forEach((id) {
      final index = personalInfoModel.notLikedMealsIds.indexOf(id);

      body.addAll({"foods_not_liked[$index]": id});
    });
    personalInfoModel.workoutTypesIds.forEach((id) {
      final index = personalInfoModel.workoutTypesIds.indexOf(id);

      body.addAll({"workout_type_id[$index]": id});
    });
    personalInfoModel.muscleFocusIds.forEach((id) {
      final index = personalInfoModel.muscleFocusIds.indexOf(id);

      body.addAll({"body_parts[$index]": id});
    });
    personalInfoModel.exciseDays.forEach((id) {
      final index = personalInfoModel.exciseDays.indexOf(id);

      body.addAll({"exercise_days[$index]": id});
    });
    personalInfoModel.equipmentsIds.forEach((id) {
      final index = personalInfoModel.equipmentsIds.indexOf(id);

      body.addAll({"equipments[$index]": id});
    });
    // print("body : $body");
    // final body = {
    //   "name": "osama habib",
    //   "country_id": 1,
    //   "city_id": 2,
    //   "gender": "male",
    //   "age": 29,
    //   "height": 171.6,
    //   "current_weight": 64.1,
    //   "target_weight": 68.0,
    //   "training_days_per_week": 4,
    //   "diet_id": 6,
    //   "meal_variety_id": 3,
    //   "goal_id": [1, 2, 3, 4],
    //   "recipe_types": [1, 2, 4, 3],
    //   "foods_not_liked": [1, 2],
    //   "workout_type_id": [1, 2],
    //   "muscle_focus_id": [1, 2, 3, 4],
    //   "equipments": [1, 2]
    // };
    final res = await dioServices.post(
      EndPoints.updateProfile,
      data: FormData.fromMap(body),
    );
    print("result : ${res.data}");
    return UserModel.fromJson(res.data['data']);
  }

  Future<List<NoOfDailyMealsModel>> getNoOfDailyMealsOptions() async {
    final res = await dioServices.get(
      EndPoints.noOfDailyMeals,
    );

    return (res.data['data'] as List).map((e) => NoOfDailyMealsModel.fromJson(e)).toList();
  }

  Future<void> changePassword(
      {required String oldPassword, required String newPassword, required String confirmPassword}) async {
    final res = await dioServices.post(EndPoints.changePassword, data: {
      "old_password : $oldPassword",
      "new_password : $newPassword",
      "new_password_confirmation : $confirmPassword"
    });
  }
}
