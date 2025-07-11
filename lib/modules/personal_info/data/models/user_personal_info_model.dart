import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';

part 'user_personal_info_model.freezed.dart';
part 'user_personal_info_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserPersonalInfoModel with _$UserPersonalInfoModel {
  factory UserPersonalInfoModel({
    GenderEnum? gender,
    int? age,
    double? height,
    double? current_weight,
    required List<UserGoalsModel> selectedGaols,
    double? targetWeight,
    int? diet_id,
    @Default([]) List<int> likedMealsIds,
    @Default([]) List<int> notLikedMealsIds,
    int? mealsVariantsId,
    @Default([]) List<int> workoutTypesIds,
    @Default([]) List<String> muscleFocusIds,
    @Default([]) List<String> exciseDays,
    @Default([]) List<int> equipmentsIds,
    String? numOfDailyMeals,
    int? mealVarietyLevel,
    int? weaklyTrainingCount,
  }) = _UserPersonalInfoModel;

  factory UserPersonalInfoModel.fromJson(Map<String, dynamic> json) => _$UserPersonalInfoModelFromJson(json);
}

class UserInfoRequest {
  GenderEnum? gender;
  int? age;
  double? height;
  double? currentWeight;
  List<UserGoalsModel> selectedGaols;
  double? targetWeight;
  int? dietId;
  Set<int> likedMealsIds;
  Set<int> notLikedMealsIds;
  int? mealsVariantsId;
  Set<int> workoutTypesIds;
  Set<String> muscleFocusIds;
  Set<String> exciseDays;
  Set<int> equipmentsIds;
  String? numOfDailyMeals;
  int? mealVarietyLevel;
  int? weaklyTrainingCount;

  UserInfoRequest(
      {this.gender,
      this.age,
      this.height,
      this.currentWeight,
      this.selectedGaols = const [],
      this.targetWeight,
      this.dietId,
      this.likedMealsIds = const {},
      this.notLikedMealsIds = const {},
      this.mealsVariantsId,
      this.workoutTypesIds = const {},
      this.muscleFocusIds = const {},
      this.exciseDays = const {},
      this.equipmentsIds = const {},
      this.numOfDailyMeals,
      this.mealVarietyLevel,
      this.weaklyTrainingCount});

  Map<String, dynamic> toJson() {
    final body = <String, dynamic>{
      "gender": gender?.name,
      "age": age,
      "height": height,
      "current_weight": currentWeight,
      "target_weight": targetWeight,
      "training_days_per_week": weaklyTrainingCount,
      "diet_id": dietId,
      "meal_variety_id": mealsVariantsId
    };
    for (var i = 0; i < selectedGaols.length; i++) {
      body.addAll({"goal_id[$i]": selectedGaols[i].id});
    }

    for (var i = 0; i < likedMealsIds.length; i++) {
      body.addAll({"recipe_types[$i]": likedMealsIds.elementAt(i)});
    }

    for (var i = 0; i < notLikedMealsIds.length; i++) {
      body.addAll({"foods_not_liked[$i]": notLikedMealsIds.elementAt(i)});
    }
    for (var i = 0; i < workoutTypesIds.length; i++) {
      body.addAll({"workout_type_id[$i]": workoutTypesIds.elementAt(i)});
    }
    for (var i = 0; i < muscleFocusIds.length; i++) {
      body.addAll({"body_parts[$i]": muscleFocusIds.elementAt(i)});
    }
    for (var i = 0; i < exciseDays.length; i++) {
      body.addAll({"exercise_days[$i]": exciseDays.elementAt(i)});
    }
    for (var i = 0; i < equipmentsIds.length; i++) {
      body.addAll({"equipments[$i]": equipmentsIds.elementAt(i)});
    }

    return body;
  }
}
