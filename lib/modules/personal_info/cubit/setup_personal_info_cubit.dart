import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_state.dart';
import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/no_of_daily_meals.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';

export './setup_personal_info_state.dart';

class SetupPersonalInfoCubit extends Cubit<SetupPersonalInfoState> {
  final pageController = PageController();
  final PersonalInfoRepoImpl _repo;
  late final UserInfoRequest userInfoRequest;
  List<UserGoalsModel> _goals = [];
  List<SelectionItemModel> _mealsNotLiked = [];
  List<SelectionItemModel> _mealsLiked = [];
  List<SelectionItemModel> _diet = [];
  List<SelectionItemModel> _mealVariants = [];
  List<NoOfDailyMealsModel> _noOfDailyMeals = [];
  List<BodyPartsModel> _bodyPartsData = [];
  List<SelectionItemModel> _workoutTypes = [];
  List<SelectionItemModel> _equipments = [];

  SetupPersonalInfoCubit(this._repo) : super(PersonalInfoInit(UserInfoRequest.fromUserModel(Session().currentUser!))) {
    userInfoRequest = state.userInfo;
  }

  setInitPage() async {
    int index = 0;
    if ((state.userInfo.age ?? 0) < 1) {
      index = 0;
    } else if ((state.userInfo.height ?? 0) < 1) {
      index = 0;
    } else if ((state.userInfo.currentWeight ?? 0) < 1) {
      index = 0;
    } else if (state.userInfo.selectedGaols.isEmpty) {
      index = 4;
    } else if (state.userInfo.bodyPartsIds.isEmpty) {
      index = 5;
    } else if ((state.userInfo.mealsVariantsId ?? 0) < 1) {
      index = 6;
    } else if (state.userInfo.likedMealsIds.isEmpty) {
      index = 7;
    } else if (state.userInfo.notLikedMealsIds.isEmpty) {
      index = 8;
    } else if ((state.userInfo.dietId ?? 0) < 1) {
      index = 9;
    } else if ((state.userInfo.targetWeight ?? 0) < 1) {
      index = 10;
    } else if ((state.userInfo.weaklyTrainingCount ?? 0) < 1) {
      index = 11;
    } else if (state.userInfo.workoutTypesIds.isEmpty) {
      index = 12;
    } else if (state.userInfo.equipmentsIds.isEmpty) {
      index = 13;
    }
    await pageController.animateToPage(index, duration: Durations.medium1, curve: Curves.fastOutSlowIn);
  }

  nextPage([bool sendToBack = true]) {
    if (sendToBack) sendUpdateData();
    pageController.nextPage(duration: Durations.medium1, curve: Curves.fastOutSlowIn);
  }

  previousPage() {
    pageController.previousPage(duration: Durations.medium1, curve: Curves.fastOutSlowIn);
  }

  /// update user info

  void updateUserGender(GenderEnum gender) => state.userInfo.gender = gender;
  void updateUserAge(int age) => state.userInfo.age = age;
  void updateUserHeight(int height) => state.userInfo.height = height;
  void updateUserWeight(double weight) => state.userInfo.currentWeight = weight;
  void toggleGoal(int id) {
    if (state.userInfo.selectedGaols.contains(id)) {
      state.userInfo.selectedGaols.remove(id);
    } else {
      state.userInfo.selectedGaols.add(id);
    }
    emit(GoalsLoaded(state.userInfo, _goals));
  }

  void toggleBodyParts(String id, {Set<String>? addSet}) {
    if (addSet != null) {
      state.userInfo.bodyPartsIds.clear();
      state.userInfo.bodyPartsIds.addAll(addSet);
    } else {
      if (state.userInfo.bodyPartsIds.contains(id)) {
        state.userInfo.bodyPartsIds.remove(id);
      } else {
        state.userInfo.bodyPartsIds.add(id);
      }
    }
    emit(MuscleFocusLoaded(state.userInfo, _bodyPartsData));
  }

  void updateMealVariant(int id) {
    if (state.userInfo.mealsVariantsId != id) {
      state.userInfo.mealsVariantsId = id;
      emit(MealVariantsLoaded(state.userInfo, _mealVariants));
    }
  }

  void toggleNotLikedMeal(int id, {Set<int>? addSet}) {
    if (addSet != null) {
      state.userInfo.notLikedMealsIds.clear();
      state.userInfo.notLikedMealsIds.addAll(addSet);
    } else {
      if (state.userInfo.notLikedMealsIds.contains(id)) {
        state.userInfo.notLikedMealsIds.remove(id);
      } else {
        state.userInfo.notLikedMealsIds.add(id);
      }
    }
    emit(MealsNotLikedLoaded(state.userInfo, _mealsNotLiked));
  }

  void toggleLikedMeal(int id, {Set<int>? addSet}) {
    if (addSet != null) {
      state.userInfo.likedMealsIds.clear();
      state.userInfo.likedMealsIds.addAll(addSet);
    } else {
      if (state.userInfo.likedMealsIds.contains(id)) {
        state.userInfo.likedMealsIds.remove(id);
      } else {
        state.userInfo.likedMealsIds.add(id);
      }
    }
    emit(MealsLikedLoaded(state.userInfo, _mealsLiked));
  }

  void updateDietType(int id) {
    if (state.userInfo.dietId != id) {
      state.userInfo.dietId = id;
      emit(DietLoaded(state.userInfo, _diet));
    }
  }

  void updateTargetWeight(double weight) => state.userInfo.targetWeight = weight;
  void updateWeeklyTrainingCount(int count) => state.userInfo.weaklyTrainingCount = count;

  void toggleWorkoutType(int id, {Set<int>? addSet}) {
    if (addSet != null) {
      state.userInfo.workoutTypesIds.clear();
      state.userInfo.workoutTypesIds.addAll(addSet);
    } else {
      if (state.userInfo.workoutTypesIds.contains(id)) {
        state.userInfo.workoutTypesIds.remove(id);
      } else {
        state.userInfo.workoutTypesIds.add(id);
      }
    }
    emit(WorkoutTypesLoaded(state.userInfo, _workoutTypes));
  }

  void toggleEquipment(int id) {
    if (state.userInfo.equipmentsIds.contains(id)) {
      state.userInfo.equipmentsIds.remove(id);
    } else {
      state.userInfo.equipmentsIds.add(id);
    }
    emit(EquipmentsLoaded(state.userInfo, _equipments));
  }

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///

  Future<void> getMealsOptions() async {
    await getNotLikedMealsOptions();
    await getLikedMealsOptions();
    await getDietOptions();
    await getMealVariantsOptions();
    await getNoOfDailyMeals();
  }

  Future<void> getGoals() async {
    if (_goals.isNotEmpty) return emit(GoalsLoaded(userInfoRequest, _goals));
    emit(GoalsLoading(userInfoRequest));
    final result = await _repo.getGoals();
    result.fold(
      (failure) => emit(GoalsError(userInfoRequest, failure.message)),
      (successData) {
        _goals = successData;
        emit(GoalsLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getBodyPartsData() async {
    if (_bodyPartsData.isNotEmpty) return emit(MuscleFocusLoaded(userInfoRequest, _bodyPartsData));
    emit(MuscleFocusLoading(userInfoRequest));
    final result = await _repo.getMuscleFocus();
    result.fold(
      (failure) => emit(MuscleFocusError(userInfoRequest, failure.message)),
      (successData) {
        _bodyPartsData = successData;
        emit(MuscleFocusLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getNotLikedMealsOptions() async {
    if (_mealsNotLiked.isNotEmpty) return emit(MealsNotLikedLoaded(userInfoRequest, _mealsNotLiked));
    emit(MealsNotLikedLoading(userInfoRequest));
    final result = await _repo.getNotLikedMealsOptions();
    result.fold(
      (failure) => emit(MealsNotLikedError(userInfoRequest, failure.message)),
      (successData) {
        _mealsNotLiked = successData;
        emit(MealsNotLikedLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getLikedMealsOptions() async {
    if (_mealsLiked.isNotEmpty) return emit(MealsLikedLoaded(userInfoRequest, _mealsLiked));
    emit(MealsLikedLoading(userInfoRequest));
    final result = await _repo.getLikedMealsOptions();
    result.fold(
      (failure) => emit(MealsLikedError(userInfoRequest, failure.message)),
      (successData) {
        _mealsLiked = successData;
        emit(MealsLikedLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getDietOptions() async {
    if (_diet.isNotEmpty) return emit(DietLoaded(userInfoRequest, _diet));
    emit(DietLoading(userInfoRequest));
    final result = await _repo.getDietOptions();
    result.fold(
      (failure) => emit(DietError(userInfoRequest, failure.message)),
      (successData) {
        _diet = successData;
        emit(DietLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getMealVariantsOptions() async {
    if (_mealVariants.isNotEmpty) return emit(MealVariantsLoaded(userInfoRequest, _mealVariants));
    emit(MealVariantsLoading(userInfoRequest));
    final result = await _repo.getMealsVariantsOptions();
    result.fold(
      (failure) => emit(MealVariantsError(userInfoRequest, failure.message)),
      (successData) {
        _mealVariants = successData;
        emit(MealVariantsLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getWorkoutTypes() async {
    if (_workoutTypes.isNotEmpty) return emit(WorkoutTypesLoaded(userInfoRequest, _workoutTypes));
    emit(WorkoutTypesLoading(userInfoRequest));
    final result = await _repo.getWorkoutTypes();
    result.fold(
      (failure) => emit(WorkoutTypesError(userInfoRequest, failure.message)),
      (successData) {
        _workoutTypes = successData;
        emit(WorkoutTypesLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getNoOfDailyMeals() async {
    if (_noOfDailyMeals.isNotEmpty) return emit(NoOfDailyMealsLoaded(userInfoRequest, _noOfDailyMeals));
    emit(NoOfDailyMealsLoading(userInfoRequest));
    final result = await _repo.getNoOfDailyMealsOptions();
    result.fold(
      (failure) {
        emit(NoOfDailyMealsError(userInfoRequest, failure.message));
      },
      (successData) {
        _noOfDailyMeals = successData;
        emit(NoOfDailyMealsLoaded(userInfoRequest, successData));
      },
    );
  }

  Future<void> getEquipments() async {
    if (_equipments.isNotEmpty) return emit(EquipmentsLoaded(userInfoRequest, _equipments));
    emit(EquipmentsLoading(userInfoRequest));
    final result = await _repo.getEquipments();
    result.fold(
      (failure) => emit(EquipmentsError(userInfoRequest, failure.message)),
      (successData) {
        _equipments = successData;
        emit(EquipmentsLoaded(userInfoRequest, successData));
      },
    );
  }

  sendUpdateData() async {
    emit(UpdateInfoLoading(userInfoRequest));
    final result = await _repo.updatePersonalInfo(personalInfoModel: userInfoRequest);
    result.fold(
      (failure) {
        emit(UpdateInfoError(userInfoRequest, failure.message));
      },
      (successData) async {
        Session().currentUser = successData;
        emit(UpdateInfoLoaded(UserInfoRequest.fromUserModel(successData)));
      },
    );
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
