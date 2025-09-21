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

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getLikedMealsOptions() async {
    final res = await dioServices.get(
      EndPoints.recipeTypes,
    );

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getMealsVariantsOptions() async {
    final res = await dioServices.get(
      EndPoints.mealsVariants,
    );

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getNotLikedMealsOptions() async {
    final res = await dioServices.get(
      EndPoints.foodsNotLiked,
    );

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<UserGoalsModel>> getGoals() async {
    final List<String> defaultImages = [
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

    final List<BodyPartsModel> data = [];

    for (var element in res.data['data']) {
      data.add(BodyPartsModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getWorkoutTypes() async {
    final res = await dioServices.get(
      EndPoints.workoutTypes,
    );

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getExercisePlaces() async {
    final res = await dioServices.get(
      EndPoints.exercisePlaces,
    );

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<List<SelectionItemModel>> getEquipments() async {
    final res = await dioServices.get(
      EndPoints.equipments,
    );

    final List<SelectionItemModel> data = [];

    for (var element in res.data['data']) {
      data.add(SelectionItemModel.fromJson(element));
    }

    return data;
  }

  Future<UserModel> updatePersonalInfo(
      {required UserInfoRequest personalInfoModel}) async {
    final res = await dioServices.post(
      EndPoints.updateProfile,
      data: personalInfoModel.toJson(),
    );
    print("result : ${res.data}");
    return UserModel.fromJson(res.data['data']);
  }

  Future<List<NoOfDailyMealsModel>> getNoOfDailyMealsOptions() async {
    final res = await dioServices.get(
      EndPoints.noOfDailyMeals,
    );

    return (res.data['data'] as List)
        .map((e) => NoOfDailyMealsModel.fromJson(e))
        .toList();
  }

  Future<void> changePassword(
      {required String oldPassword,
      required String newPassword,
      required String confirmPassword}) async {
    await dioServices.post(EndPoints.changePassword, data: {
      "old_password : $oldPassword",
      "new_password : $newPassword",
      "new_password_confirmation : $confirmPassword"
    });
  }
}
