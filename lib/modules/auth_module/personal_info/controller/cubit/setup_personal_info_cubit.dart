import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/const.dart';
import 'package:urfit/core/utils/enums.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/auth_module/personal_info/data/repos/personal_info_repo.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';

import '../../../../../core/shared/appCubit/app_cubit.dart';
import '../../../../../core/utils/service_locator.dart';
import '../../data/models/no_of_daily_meals.dart';

part 'setup_personal_info_state.dart';

part 'setup_personal_info_cubit.freezed.dart';

class SetupPersonalInfoCubit extends Cubit<SetupPersonalInfoState> {
  final PersonalInfoRepo _repo;

  SetupPersonalInfoCubit(this._repo)
      : super(
          SetupPersonalInfoState(
            userInfo: UserPersonalInfoModel(selectedGaols: <UserGoalsModel>[]),
          ),
        ) {
    init();
  }

  init() {
    final user = sl<AuthenticationBloc>().currentUser;

    log("init user: ${user?.toJson()}");
    final userInfoModel = UserPersonalInfoModel(
      selectedGaols: user!.goals?.map((goal) => UserGoalsModel(id: goal.id, name: goal.name, imageUrl: "",sectionOneType: goal.id == 1 || goal.id == 2 ? GoalsSectionOneEnum.nutrition:null,sectionTwoType:goal.id == 3 || goal.id == 4 ? GoalsSectionTwoEnum.buildMuscles:null )).toList() ?? [],
      gender: user.gender,
      height: user.height?.toDouble(),
      age: user.age,
      current_weight: user.currentWeight?.toDouble(),
      diet_id: user.diet?.id,
      equipmentsIds: user.equipments?.map((equipment) => equipment.id).toList() ?? [],
      targetWeight: user.targetWeight?.toDouble(),
      likedMealsIds: user.recipeTypes?.map((recipe) => recipe.id).toList() ?? [],
      exciseDays: user.exerciseDays ?? [],
      mealsVariantsId: user.mealVariety?.id,
      notLikedMealsIds: user.foodsNotLiked?.map((notLiked) => notLiked.id).toList() ?? [],
      muscleFocusIds: user.bodyParts ?? [],
      workoutTypesIds: user.workoutTypes?.map((workout) => workout.id).toList() ?? [],



    );
    emit(state.copyWith(userInfo: userInfoModel));
    // state.copyWith(userInfo: );
  }

  PageController pageController = PageController();
  PageController personalInfoController = PageController();
  PageController stepOneController = PageController();
  PageController finalStepController = PageController();

  onChangeCurrentPassword(String value) {
    emit(state.copyWith(oldPassword: value));
  }

  onChangeNewPassword(String value) {
    emit(state.copyWith(newPassword: value));
  }

  onChangeConfirmPassword(String value) {
    emit(state.copyWith(confirmPassword: value));
  }

  Future<void> goToNextInfoStep() async {
    await personalInfoController.nextPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );

    emit(
      state.copyWith(
        currentInfoStep: personalInfoController.page!.toInt() + 1,
      ),
    );
  }

  Future<void> goToPreviousInfoStep() async {
    await personalInfoController.previousPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );
    emit(
      state.copyWith(
        currentInfoStep: personalInfoController.page!.toInt() + 1,
      ),
    );
  }
  Future<void> goToNextIndexStepOne() async {
    await stepOneController.nextPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );

    emit(
      state.copyWith(
        // currentInfoStep: personalInfoController.page!.toInt() + 1,
          currentStepOneIndex : stepOneController.page!.toInt() + 1

      ),
    );
  }

  Future<void> goToPreviousIndexStepOne() async {
    await stepOneController.previousPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );
    emit(
      state.copyWith(
        currentStepOneIndex: stepOneController.page!.toInt() - 1,
      ),
    );
  }
  Future<void> goToNextIndexFinalStep() async {
    await finalStepController.nextPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );

    emit(
      state.copyWith(
        // currentInfoStep: personalInfoController.page!.toInt() + 1,
          currentStepThreeIndex : finalStepController.page!.toInt() + 1

      ),
    );
  }

  Future<void> goToPreviousIndexFinalStep() async {
    await finalStepController.previousPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );
    emit(
      state.copyWith(
        currentStepThreeIndex: finalStepController.page!.toInt() - 1,
      ),
    );
  }
  void goToNextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );

    emit(
      state.copyWith(
        currentPageIndex: state.currentPageIndex + 1,
      ),
    );
  }

  Future<void> goToPreviousPage() async {
    pageController.previousPage(
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );

    emit(
      state.copyWith(
        currentPageIndex: state.currentPageIndex - 1,
      ),
    );
  }

  void goToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );

    emit(
      state.copyWith(
        currentPageIndex: page,
      ),
    );
  }

  /// update user personal info
  void updateUserGender(GenderEnum gender) {
    switch (gender) {
      case GenderEnum.male:
        rootScaffoldKey.currentContext?.read<AppCubit>().setMaleTheme();
      case GenderEnum.female:
        rootScaffoldKey.currentContext?.read<AppCubit>().setFemaleTheme();
    }
    emit(state.copyWith.userInfo(gender: gender));
  }

  void updateUserAge(int age) {
    emit(state.copyWith.userInfo(age: age));
  }

  void updateUserHeight(double height) {
    emit(state.copyWith.userInfo(height: height));
  }

  void updateUserWeight(double weight) {
    emit(state.copyWith.userInfo(current_weight: weight));
  }

  // update selected goals
  void updateSelectedGoals(UserGoalsModel goal) {
    final goals = List<UserGoalsModel>.from(state.userInfo.selectedGaols);

    if (goals.contains(goal)) {
      goals.remove(goal);
    } else {
      goals.add(goal);
    }
    emit(state.copyWith.userInfo(selectedGaols: goals));
  }

  void updateUserTargetWeight(double target) {
    emit(state.copyWith.userInfo(targetWeight: target));
  }

  void updateUserWeaklyTrainingCount(int count) {
    emit(state.copyWith.userInfo(weaklyTrainingCount: count));
  }

  void updateSelectedLikedMeals(int id) {
    final selectedMeals = List<int>.from(state.userInfo.likedMealsIds);

    if (selectedMeals.contains(id)) {
      selectedMeals.remove(id);
    } else {
      selectedMeals.add(id);
    }
    emit(state.copyWith.userInfo(likedMealsIds: selectedMeals));
  }

  void updateSelectedNotLikedMeals(int id) {
    final selectedMeals = List<int>.from(state.userInfo.notLikedMealsIds);

    if (selectedMeals.contains(id)) {
      selectedMeals.remove(id);
    } else {
      selectedMeals.add(id);
    }
    emit(state.copyWith.userInfo(notLikedMealsIds: selectedMeals));
  }

  void updateSelectedMealsVariants(int id) {
    int? selected = state.userInfo.mealsVariantsId;

    if (selected == id) {
      selected = null;
    } else {
      selected = id;
    }
    emit(state.copyWith.userInfo(mealsVariantsId: selected));
  }

  void updateSelectedNoOfDailyMeals(String id) {
    String? selected = state.userInfo.numOfDailyMeals;

    if (selected == id) {
      selected = null;
    } else {
      selected = id;
    }
    emit(state.copyWith.userInfo(numOfDailyMeals: selected));
  }

  void updateDietId(int id) {
    int? selected = state.userInfo.diet_id;

    if (selected == id) {
      selected = null;
    } else {
      selected = id;
    }
    emit(state.copyWith.userInfo(diet_id: selected));
  }

  void updateSelectedMuscleFocusData(String key) {
    final selected = List<String>.from(state.userInfo.muscleFocusIds);

    if (selected.contains(key)) {
      selected.remove(key);
    } else {
      selected.add(key);
    }
    emit(state.copyWith.userInfo(muscleFocusIds: selected));
  }

  void updateSelectedExerciseDaysData(String day) {
    final selected = List<String>.from(state.userInfo.exciseDays);

    if (selected.contains(day)) {
      selected.remove(day);
    } else {
      selected.add(day);
    }
    emit(state.copyWith.userInfo(exciseDays: selected));
  }

  void updateSelectedWorkoutTypes(int id) {
    final selected = List<int>.from(state.userInfo.workoutTypesIds);

    if (selected.contains(id)) {
      selected.remove(id);
    } else {
      selected.add(id);
    }
    emit(state.copyWith.userInfo(workoutTypesIds: selected));
  }

  void updateSelectedEquipments(int id) {
    final selected = List<int>.from(state.userInfo.equipmentsIds);

    if (selected.contains(id)) {
      selected.remove(id);
    } else {
      selected.add(id);
    }
    emit(state.copyWith.userInfo(equipmentsIds: selected));
  }

  Future<void> getGoals() async {
    emit(state.copyWith(getGoalsState: RequestState.loading));

    var result = await _repo.getGoals();

    result.fold(
      (failure) => emit(state.copyWith(
        getGoalsState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getGoalsState: RequestState.success,
        goals: successData,
      )),
    );
  }

  Future<void> getMealsOptions() async {
    await getNotLikedMealsOptions();
    await getLikedMealsOptions();
    await getDietOptions();
    await getMealVariantsOptions();
    await getNoOfDailyMeals();
  }

  Future<void> getNotLikedMealsOptions() async {
    emit(state.copyWith(getNotLikedMealsState: RequestState.loading));

    var result = await _repo.getNotLikedMealsOptions();

    result.fold(
      (failure) => emit(state.copyWith(
        getNotLikedMealsState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getNotLikedMealsState: RequestState.success,
        mealsNotLiked: successData,
      )),
    );
  }

  Future<void> getLikedMealsOptions() async {
    emit(state.copyWith(getLikedMealsState: RequestState.loading));

    var result = await _repo.getLikedMealsOptions();

    result.fold(
      (failure) => emit(state.copyWith(
        getLikedMealsState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getLikedMealsState: RequestState.success,
        mealsLiked: successData,
      )),
    );
  }

  Future<void> getDietOptions() async {
    emit(state.copyWith(getDietOptionsState: RequestState.loading));

    var result = await _repo.getDietOptions();

    result.fold(
      (failure) => emit(state.copyWith(
        getDietOptionsState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getDietOptionsState: RequestState.success,
        diet: successData,
      )),
    );
  }

  Future<void> getMealVariantsOptions() async {
    emit(state.copyWith(getMealVariantsState: RequestState.loading));

    var result = await _repo.getMealsVariantsOptions();

    result.fold(
      (failure) => emit(state.copyWith(
        getMealVariantsState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getMealVariantsState: RequestState.success,
        mealVariants: successData,
      )),
    );
  }

  Future<void> getMuscleFocusData() async {
    emit(state.copyWith(getMuscleFocusState: RequestState.loading));

    var result = await _repo.getMuscleFocus();

    result.fold(
      (failure) => emit(state.copyWith(
        getMuscleFocusState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getMuscleFocusState: RequestState.success,
        muscleFocusData: successData,
      )),
    );
  }

  Future<void> getWorkoutTypes() async {
    emit(state.copyWith(getWorkoutTypesState: RequestState.loading));

    var result = await _repo.getWorkoutTypes();

    result.fold(
      (failure) => emit(state.copyWith(
        getWorkoutTypesState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getWorkoutTypesState: RequestState.success,
        workoutTypes: successData,
      )),
    );
  }

  Future<void> getEquipments() async {
    emit(state.copyWith(getEquipmentsState: RequestState.loading));

    var result = await _repo.getEquipments();

    result.fold(
      (failure) => emit(state.copyWith(
        getEquipmentsState: RequestState.failure,
        errMessage: failure.message,
      )),
      (successData) => emit(state.copyWith(
        getEquipmentsState: RequestState.success,
        equipments: successData,
      )),
    );
  }

  Future<void> getNoOfDailyMeals() async {
    emit(state.copyWith(getNoOfDailyMealsState: RequestState.loading));

    var result = await _repo.getNoOfDailyMealsOptions();

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          getNoOfDailyMealsState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          getNoOfDailyMealsState: RequestState.success,
          noOfDailyMeals: successData,
        ));
      },
    );
  }

  updatePersonalData() async {
    emit(state.copyWith(updatePersonalInfo: RequestState.loading));

    var result =
        await _repo.updatePersonalInfo(personalInfoModel: state.userInfo);

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          updatePersonalInfo: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          updatePersonalInfo: RequestState.success,
        ));
        sl<AuthenticationBloc>().add(GetUserData());
        // sl<AuthenticationBloc>().currentUser = ;
      },
    );
  }

  changePassword() {
    emit(state.copyWith(changePasswordState: RequestState.loading));

    _repo
        .changePassword(
      oldPassword: state.oldPassword,
      newPassword: state.newPassword,
      confirmPassword: state.confirmPassword,
    )
        .then((result) {
      result.fold(
        (failure) => emit(state.copyWith(
          changePasswordState: RequestState.failure,
          errMessage: failure.message,
        )),
        (successData) => emit(state.copyWith(
          changePasswordState: RequestState.success,
        )),
      );
    });
  }

  @override
  Future<void> close() {
    pageController.dispose();
    personalInfoController.dispose();
    return super.close();
  }
}
