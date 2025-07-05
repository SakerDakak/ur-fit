import 'package:hive/hive.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';

import '../../../../../core/presentation/utils/enums.dart';

part 'cached_user.g.dart';

@HiveType(typeId: 0)
class CacheUser extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String email;

  @HiveField(3)
  bool? hasValidSubscription;

  @HiveField(4)
  CountryCached? country;

  @HiveField(5)
  CityCached? city;

  @HiveField(6)
  int? gender;

  @HiveField(7)
  int? age;

  @HiveField(8)
  int? currentWeight;

  @HiveField(9)
  int? height;

  @HiveField(10)
  int? otpCode;

  @HiveField(11)
  List<GoalCached>? goals;

  @HiveField(12)
  int? targetWeight;

  @HiveField(13)
  BodyShapeCached? bodyShape;

  @HiveField(14)
  List<String>? bodyParts;

  @HiveField(15)
  List<String>? exerciseDays;

  @HiveField(16)
  List<WorkoutTypeCached>? workoutTypes;

  @HiveField(17)
  List<EquipmentCached>? equipments;

  @HiveField(18)
  DietCached? diet;

  @HiveField(19)
  List<RecipeTypeCached>? recipeTypes;

  @HiveField(20)
  List<FoodNotLikedCached>? foodsNotLiked;

  @HiveField(21)
  MealVarietyCached? mealVariety;

  @HiveField(22)
  String? emailVerifiedAt;

  @HiveField(23)
  String? isChecked;

  @HiveField(24)
  String? isCompleted;

  @HiveField(25)
  String? isActive;

  @HiveField(26)
  String? countryKey;

  @HiveField(27)
  bool? haveExercisePlan;

  @HiveField(28)
  bool? haveMealPlan;

  @HiveField(29)
  int? packageId;

  CacheUser(
      {required this.id,
      required this.name,
      required this.email,
      required this.hasValidSubscription,
      required this.country,
      required this.city,
      required this.gender,
      required this.age,
      required this.currentWeight,
      required this.height,
      required this.otpCode,
      required this.goals,
      required this.targetWeight,
      required this.bodyShape,
      required this.bodyParts,
      required this.exerciseDays,
      required this.workoutTypes,
      required this.equipments,
      required this.diet,
      required this.recipeTypes,
      required this.foodsNotLiked,
      required this.mealVariety,
      this.emailVerifiedAt,
      required this.isChecked,
      required this.isCompleted,
      required this.isActive,
      required this.countryKey,
      required this.haveExercisePlan,
      required this.haveMealPlan,
      required this.packageId});

  factory CacheUser.fromUserModel(UserModel userModel) => CacheUser(
        id: userModel.id,
        name: userModel.name,
        email: userModel.email,
        hasValidSubscription: userModel.hasValidSubscription,
        country: userModel.country == null ? null : CountryCached.fromCountryModel(userModel.country!),
        city: userModel.city == null ? null : CityCached.fromCityModel(userModel.city!),
        gender: userModel.gender?.index,
        age: userModel.age,
        currentWeight: userModel.currentWeight,
        height: userModel.height,
        otpCode: userModel.otpCode,
        goals: userModel.goals?.map((goal) => GoalCached.fromGoalModel(goal)).toList(),
        targetWeight: userModel.targetWeight,
        bodyShape: userModel.bodyShape == null ? null : BodyShapeCached.fromBodyShapeModel(userModel.bodyShape!),
        bodyParts: userModel.bodyParts?.map((muscle) => muscle).toList(),
        exerciseDays: userModel.exerciseDays?.map((days) => days).toList(),
        workoutTypes:
            userModel.workoutTypes?.map((workout) => WorkoutTypeCached.fromWorkoutTypeModel(workout)).toList(),
        equipments: userModel.equipments?.map((equipment) => EquipmentCached.fromEquipmentModel(equipment)).toList(),
        diet: userModel.diet == null ? null : DietCached.fromDietModel(userModel.diet!),
        recipeTypes: userModel.recipeTypes?.map((recipe) => RecipeTypeCached.fromRecipeTypeModel(recipe)).toList(),
        foodsNotLiked: userModel.foodsNotLiked?.map((food) => FoodNotLikedCached.fromFoodNotLikedModel(food)).toList(),
        mealVariety:
            userModel.mealVariety == null ? null : MealVarietyCached.fromMealVarietyModel(userModel.mealVariety!),
        isChecked: userModel.isChecked,
        isCompleted: userModel.isCompleted,
        isActive: userModel.isActive,
        countryKey: userModel.countryKey,
        haveExercisePlan: userModel.haveExercisePlan,
        haveMealPlan: userModel.haveMealPlan,
        packageId: userModel.packageId,
      );

  UserModel toUserModel() => UserModel(
      id: id,
      name: name,
      email: email,
      hasValidSubscription: hasValidSubscription,
      country: country?.toCountryModel(),
      city: city?.toCity(),
      gender: gender == null ? null : GenderEnum.values[gender!],
      age: age,
      currentWeight: currentWeight,
      height: height,
      otpCode: otpCode,
      goals: goals?.map((goal) => goal.toGoalModel()).toList(),
      targetWeight: targetWeight,
      bodyShape: bodyShape?.toBodyShapeModel(),
      bodyParts: bodyParts?.map((muscle) => muscle).toList(),
      exerciseDays: exerciseDays?.map((days) => days).toList(),
      workoutTypes: workoutTypes?.map((workout) => workout.toWorkoutTypeModel()).toList(),
      equipments: equipments?.map((equipment) => equipment.toEquipmentModel()).toList(),
      diet: diet?.toDietModel(),
      recipeTypes: recipeTypes?.map((recipe) => recipe.toRecipeTypeModel()).toList(),
      foodsNotLiked: foodsNotLiked?.map((food) => food.toFoodNotLikedModel()).toList(),
      mealVariety: mealVariety?.toMealVarietyModel(),
      emailVerifiedAt: emailVerifiedAt,
      isChecked: isChecked,
      isCompleted: isCompleted,
      isActive: isActive,
      countryKey: countryKey,
      haveExercisePlan: haveExercisePlan,
      haveMealPlan: haveMealPlan,
      packageId: packageId);
}

@HiveType(typeId: 1)
class CountryCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  CountryCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory CountryCached.fromCountryModel(Country countryModel) {
    return CountryCached(
      id: countryModel.id,
      name: countryModel.name,
    );
  }

  Country toCountryModel() => Country(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 2)
class CityCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  CityCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory CityCached.fromCityModel(City cityModel) {
    return CityCached(
      id: cityModel.id,
      name: cityModel.name,
    );
  }

  City toCity() => City(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 3)
class GoalCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  GoalCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory GoalCached.fromGoalModel(Goal goalModel) {
    return GoalCached(
      id: goalModel.id,
      name: goalModel.name,
    );
  }

  Goal toGoalModel() => Goal(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 4)
class BodyShapeCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  BodyShapeCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory BodyShapeCached.fromBodyShapeModel(BodyShape bodyShapeModel) {
    return BodyShapeCached(
      id: bodyShapeModel.id,
      name: bodyShapeModel.name,
    );
  }

  BodyShape toBodyShapeModel() => BodyShape(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 5)
class MuscleFocusCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  MuscleFocusCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory MuscleFocusCached.fromMuscleFocusModel(MuscleFocus muscleFocusModel) {
    return MuscleFocusCached(
      id: muscleFocusModel.id,
      name: muscleFocusModel.name,
    );
  }

  MuscleFocus toMuscleFocusModel() => MuscleFocus(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 6)
class WorkoutTypeCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  WorkoutTypeCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory WorkoutTypeCached.fromWorkoutTypeModel(WorkoutType workoutTypeModel) {
    return WorkoutTypeCached(
      id: workoutTypeModel.id,
      name: workoutTypeModel.name,
    );
  }

  WorkoutType toWorkoutTypeModel() => WorkoutType(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 7)
class EquipmentCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String image;

  EquipmentCached({required this.id, required this.name, required this.image});

  // Convert from Freezed model to Hive model
  factory EquipmentCached.fromEquipmentModel(Equipment equipmentModel) {
    return EquipmentCached(
      id: equipmentModel.id,
      name: equipmentModel.name,
      image: equipmentModel.image,
    );
  }

  Equipment toEquipmentModel() => Equipment(
        id: id,
        name: name,
        image: image,
      );
}

@HiveType(typeId: 8)
class DietCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String key;

  @HiveField(2)
  String name;

  DietCached({required this.id, required this.key, required this.name});

  // Convert from Freezed model to Hive model
  factory DietCached.fromDietModel(Diet dietModel) {
    return DietCached(
      id: dietModel.id,
      key: dietModel.key,
      name: dietModel.name,
    );
  }

  Diet toDietModel() => Diet(
        id: id,
        key: key,
        name: name,
      );
}

@HiveType(typeId: 9)
class RecipeTypeCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  RecipeTypeCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory RecipeTypeCached.fromRecipeTypeModel(RecipeType recipeTypeModel) {
    return RecipeTypeCached(
      id: recipeTypeModel.id,
      name: recipeTypeModel.name,
    );
  }

  RecipeType toRecipeTypeModel() => RecipeType(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 10)
class FoodNotLikedCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  FoodNotLikedCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory FoodNotLikedCached.fromFoodNotLikedModel(FoodNotLiked foodNotLikedModel) {
    return FoodNotLikedCached(
      id: foodNotLikedModel.id,
      name: foodNotLikedModel.name,
    );
  }

  FoodNotLiked toFoodNotLikedModel() => FoodNotLiked(
        id: id,
        name: name,
      );
}

@HiveType(typeId: 11)
class MealVarietyCached extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  MealVarietyCached({required this.id, required this.name});

  // Convert from Freezed model to Hive model
  factory MealVarietyCached.fromMealVarietyModel(MealVariety mealVarietyModel) {
    return MealVarietyCached(
      id: mealVarietyModel.id,
      name: mealVarietyModel.name,
    );
  }

  MealVariety toMealVarietyModel() => MealVariety(
        id: id,
        name: name,
      );
}
