import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/no_of_daily_meals.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';

sealed class SetupPersonalInfoState {
  UserInfoRequest userInfo;
  SetupPersonalInfoState(this.userInfo);
}

class PersonalInfoInit extends SetupPersonalInfoState {
  PersonalInfoInit(super.userInfo);
}

/// Goals States
sealed class GoalsStates extends SetupPersonalInfoState {
  final List<UserGoalsModel> goals;
  GoalsStates(super.userInfo, [this.goals = const []]);
}

class GoalsLoading extends GoalsStates {
  GoalsLoading(super.userInfo);
}

class GoalsLoaded extends GoalsStates {
  GoalsLoaded(super.userInfo, super.goals);
}

class GoalsError extends GoalsStates {
  final String error;
  GoalsError(super.userInfo, this.error);
}

/// Meals not Liked States
sealed class MealsNotLikedStates extends SetupPersonalInfoState {
  final List<SelectionItemModel> meals;
  MealsNotLikedStates(super.userInfo, [this.meals = const []]);
}

class MealsNotLikedLoading extends MealsNotLikedStates {
  MealsNotLikedLoading(super.userInfo);
}

class MealsNotLikedLoaded extends MealsNotLikedStates {
  MealsNotLikedLoaded(super.userInfo, super.meals);
}

class MealsNotLikedError extends MealsNotLikedStates {
  final String error;
  MealsNotLikedError(super.userInfo, this.error);
}

/// Meals Liked States
sealed class MealsLikedStates extends SetupPersonalInfoState {
  final List<SelectionItemModel> meals;
  MealsLikedStates(super.userInfo, [this.meals = const []]);
}

class MealsLikedLoading extends MealsLikedStates {
  MealsLikedLoading(super.userInfo);
}

class MealsLikedLoaded extends MealsLikedStates {
  MealsLikedLoaded(super.userInfo, super.meals);
}

class MealsLikedError extends MealsLikedStates {
  final String error;
  MealsLikedError(super.userInfo, this.error);
}

/// Diet States
sealed class DietStates extends SetupPersonalInfoState {
  final List<SelectionItemModel> diet;
  DietStates(super.userInfo, [this.diet = const []]);
}

class DietLoading extends DietStates {
  DietLoading(super.userInfo);
}

class DietLoaded extends DietStates {
  DietLoaded(super.userInfo, super.diet);
}

class DietError extends DietStates {
  final String error;
  DietError(super.userInfo, this.error);
}

/// Meal Variants States
sealed class MealVariantsStates extends SetupPersonalInfoState {
  final List<SelectionItemModel> mealVariants;
  MealVariantsStates(super.userInfo, [this.mealVariants = const []]);
}

class MealVariantsLoading extends MealVariantsStates {
  MealVariantsLoading(super.userInfo);
}

class MealVariantsLoaded extends MealVariantsStates {
  MealVariantsLoaded(super.userInfo, super.mealVariants);
}

class MealVariantsError extends MealVariantsStates {
  final String error;
  MealVariantsError(super.userInfo, this.error);
}

/// No of Daily Meals States
sealed class NoOfDailyMealsStates extends SetupPersonalInfoState {
  final List<NoOfDailyMealsModel> noOfDailyMeals;
  NoOfDailyMealsStates(super.userInfo, [this.noOfDailyMeals = const []]);
}

class NoOfDailyMealsLoading extends NoOfDailyMealsStates {
  NoOfDailyMealsLoading(super.userInfo);
}

class NoOfDailyMealsLoaded extends NoOfDailyMealsStates {
  NoOfDailyMealsLoaded(super.userInfo, super.noOfDailyMeals);
}

class NoOfDailyMealsError extends NoOfDailyMealsStates {
  final String error;
  NoOfDailyMealsError(super.userInfo, this.error);
}

/// Muscle Focus States
sealed class MuscleFocusStates extends SetupPersonalInfoState {
  final List<BodyPartsModel> muscleFocusData;
  MuscleFocusStates(super.userInfo, [this.muscleFocusData = const []]);
}

class MuscleFocusLoading extends MuscleFocusStates {
  MuscleFocusLoading(super.userInfo);
}

class MuscleFocusLoaded extends MuscleFocusStates {
  MuscleFocusLoaded(super.userInfo, super.muscleFocusData);
}

class MuscleFocusError extends MuscleFocusStates {
  final String error;
  MuscleFocusError(super.userInfo, this.error);
}

/// Workout Types States
sealed class WorkoutTypesStates extends SetupPersonalInfoState {
  final List<SelectionItemModel> workoutTypes;
  WorkoutTypesStates(super.userInfo, [this.workoutTypes = const []]);
}

class WorkoutTypesLoading extends WorkoutTypesStates {
  WorkoutTypesLoading(super.userInfo);
}

class WorkoutTypesLoaded extends WorkoutTypesStates {
  WorkoutTypesLoaded(super.userInfo, super.workoutTypes);
}

class WorkoutTypesError extends WorkoutTypesStates {
  final String error;
  WorkoutTypesError(super.userInfo, this.error);
}

/// Equipments States
sealed class EquipmentsStates extends SetupPersonalInfoState {
  final List<SelectionItemModel> equipments;
  EquipmentsStates(super.userInfo, [this.equipments = const []]);
}

class EquipmentsLoading extends EquipmentsStates {
  EquipmentsLoading(super.userInfo);
}

class EquipmentsLoaded extends EquipmentsStates {
  EquipmentsLoaded(super.userInfo, super.equipments);
}

class EquipmentsError extends EquipmentsStates {
  final String error;
  EquipmentsError(super.userInfo, this.error);
}
