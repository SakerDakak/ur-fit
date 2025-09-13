import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';

part 'user_personal_info_model.freezed.dart';
part 'user_personal_info_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class UserPersonalInfoModel with _$UserPersonalInfoModel {
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
  String? name;
  GenderEnum? gender;
  int? age;
  int? height;
  double? currentWeight;
  Set<int> selectedGaols;
  double? targetWeight;
  int? dietId;
  Set<int> likedMealsIds;
  Set<int> notLikedMealsIds;
  int? mealsVariantsId;
  Set<int> workoutTypesIds;
  Set<String> bodyPartsIds;
  Set<Day> exerciseDayes;
  Set<int> equipmentsIds;
  String? numOfDailyMeals;
  int? mealVarietyLevel;
  int? weaklyTrainingCount;

  UserInfoRequest({
    this.name,
    this.gender,
    this.age,
    this.height,
    this.currentWeight,
    this.selectedGaols = const {},
    this.targetWeight,
    this.dietId,
    this.likedMealsIds = const {},
    this.notLikedMealsIds = const {},
    this.mealsVariantsId,
    this.workoutTypesIds = const {},
    this.bodyPartsIds = const {},
    this.exerciseDayes = const {},
    this.equipmentsIds = const {},
    this.numOfDailyMeals,
    this.mealVarietyLevel,
    this.weaklyTrainingCount,
  });

  Map<String, dynamic> toJson() {
    return {
      if (name != null) "name": name,
      "gender": gender?.name,
      "age": age?.toDouble(),
      "height": height,
      "current_weight": currentWeight,
      "target_weight": targetWeight,
      "training_days_per_week": weaklyTrainingCount,
      "diet_id": dietId,
      "meal_variety_id": mealsVariantsId,
      "goal_id": selectedGaols.toList(),
      "exercise_days": exerciseDayes.map((e) => e.name).toList(),
      "recipe_types": likedMealsIds.toList(),
      "foods_not_liked": notLikedMealsIds.toList(),
      "workout_type_id": workoutTypesIds.toList(),
      "body_parts": bodyPartsIds.toList(),
      "equipments": equipmentsIds.toList(),
    };
  }

  UserInfoRequest.fromUserModel(UserModel user)
      : selectedGaols = user.goals?.map((goal) => goal.id).toSet() ?? {},
        name = user.name,
        gender = user.gender,
        height = user.height,
        age = user.age,
        currentWeight = user.currentWeight?.toDouble(),
        dietId = user.diet?.id,
        equipmentsIds = user.equipments?.map((equipment) => equipment.id).toSet() ?? {},
        targetWeight = user.targetWeight?.toDouble(),
        likedMealsIds = user.recipeTypes?.map((recipe) => recipe.id).toSet() ?? {},
        exerciseDayes = user.exerciseDays?.map((e) => Day.values.firstWhere((d) => e == d.name)).toSet() ?? {},
        mealsVariantsId = user.mealVariety?.id,
        weaklyTrainingCount = user.trainingDaysPerWeek,
        notLikedMealsIds = user.foodsNotLiked?.map((notLiked) => notLiked.id).toSet() ?? {},
        bodyPartsIds = user.bodyParts?.toSet() ?? {},
        workoutTypesIds = user.workoutTypes?.map((workout) => workout.id).toSet() ?? {};

  bool get isValid {
    return gender != null &&
        age != null &&
        height != null &&
        currentWeight != null &&
        selectedGaols.isNotEmpty &&
        bodyPartsIds.isNotEmpty &&
        mealsVariantsId != null &&
        likedMealsIds.isNotEmpty &&
        // notLikedMealsIds.isNotEmpty &&
        dietId != null &&
        targetWeight != null &&
        workoutTypesIds.isNotEmpty &&
        // exerciseDayes.isNotEmpty &&
        equipmentsIds.isNotEmpty;
  }

  @override
  String toString() {
    return 'UserInfoRequest{'
        'gender: $gender, '
        'age: $age, '
        'height: $height, '
        'currentWeight: $currentWeight, '
        'selectedGaols: $selectedGaols, '
        'targetWeight: $targetWeight, '
        'dietId: $dietId, '
        'likedMealsIds: $likedMealsIds, '
        'notLikedMealsIds: $notLikedMealsIds, '
        'mealsVariantsId: $mealsVariantsId, '
        'workoutTypesIds: $workoutTypesIds, '
        'bodyPartsIds: $bodyPartsIds, '
        'exerciseDayes: $exerciseDayes, '
        'equipmentsIds: $equipmentsIds, '
        'numOfDailyMeals: $numOfDailyMeals, '
        'mealVarietyLevel: $mealVarietyLevel, '
        'weaklyTrainingCount: $weaklyTrainingCount'
        '}';
  }
}

enum Day {
  /// Sunday.
  sunday(1),

  /// Monday.
  monday(2),

  /// Tuesday.
  tuesday(3),

  /// Wednesday.
  wednesday(4),

  /// Thursday.
  thursday(5),

  /// Friday.
  friday(6),

  /// Saturday.
  saturday(7);

  /// Constructs an instance of [Day].
  const Day(this.value);

  static Day ofInt(int value) {
    return Day.values.firstWhere((day) => day.value == value, orElse: () => Day.sunday);
  }

  /// The integer representation of [Day].
  final int value;

  @override
  String get name {
    switch (this) {
      case Day.sunday:
        return 'Sunday';
      case Day.monday:
        return 'Monday';
      case Day.tuesday:
        return 'Tuesday';
      case Day.wednesday:
        return 'Wednesday';
      case Day.thursday:
        return 'Thursday';
      case Day.friday:
        return 'Friday';
      case Day.saturday:
        return 'Saturday';
    }
  }
}
