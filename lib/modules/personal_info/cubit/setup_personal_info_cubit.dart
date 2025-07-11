import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';

import '../data/models/no_of_daily_meals.dart';

part 'setup_personal_info_cubit.freezed.dart';
part 'setup_personal_info_state.dart';

class SetupPersonalInfoCubit extends Cubit<SetupPersonalInfoState> {
  final PersonalInfoRepoImpl _repo;

  SetupPersonalInfoCubit(this._repo)
      : super(
          SetupPersonalInfoState(
            userInfo: UserInfoRequest(),
          ),
        ) {
    init();
  }

  init() {
    final user = Session().currentUser;

    log("init user: ${user?.toJson()}");
    final userInfoModel = UserInfoRequest(
      selectedGaols: user!.goals
              ?.map((goal) => UserGoalsModel(
                  id: goal.id,
                  name: goal.name,
                  imageUrl: "",
                  sectionOneType: goal.id == 1 || goal.id == 2 ? GoalsSectionOneEnum.nutrition : null,
                  sectionTwoType: goal.id == 3 || goal.id == 4 ? GoalsSectionTwoEnum.buildMuscles : null))
              .toList() ??
          [],
      gender: user.gender,
      height: user.height?.toDouble(),
      age: user.age,
      currentWeight: user.currentWeight?.toDouble(),
      dietId: user.diet?.id,
      equipmentsIds: user.equipments?.map((equipment) => equipment.id).toSet() ?? {},
      targetWeight: user.targetWeight?.toDouble(),
      likedMealsIds: user.recipeTypes?.map((recipe) => recipe.id).toSet() ?? {},
      exciseDays: user.exerciseDays?.toSet() ?? {},
      mealsVariantsId: user.mealVariety?.id,
      notLikedMealsIds: user.foodsNotLiked?.map((notLiked) => notLiked.id).toSet() ?? {},
      muscleFocusIds: user.bodyParts?.toSet() ?? {},
      workoutTypesIds: user.workoutTypes?.map((workout) => workout.id).toSet() ?? {},
    );
    emit(state.copyWith(userInfo: userInfoModel));
    // state.copyWith(userInfo: );
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
    // emit(state.copyWith(getGoalsState: RequestState.loading));

    var result = await _repo.getGoals();

    result.fold(
      (failure) => emit(state.copyWith(
          // getGoalsState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getGoalsState: RequestState.success,
        goals: successData,
      )),
    );
  }

  Future<void> getNotLikedMealsOptions() async {
    // emit(state.copyWith(getNotLikedMealsState: RequestState.loading));

    var result = await _repo.getNotLikedMealsOptions();

    result.fold(
      (failure) => emit(state.copyWith(
          // getNotLikedMealsState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getNotLikedMealsState: RequestState.success,
        mealsNotLiked: successData,
      )),
    );
  }

  Future<void> getLikedMealsOptions() async {
    // emit(state.copyWith(getLikedMealsState: RequestState.loading));

    var result = await _repo.getLikedMealsOptions();

    result.fold(
      (failure) => emit(state.copyWith(
          // getLikedMealsState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getLikedMealsState: RequestState.success,
        mealsLiked: successData,
      )),
    );
  }

  Future<void> getDietOptions() async {
    // emit(state.copyWith(getDietOptionsState: RequestState.loading));

    var result = await _repo.getDietOptions();

    result.fold(
      (failure) => emit(state.copyWith(
          // getDietOptionsState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getDietOptionsState: RequestState.success,
        diet: successData,
      )),
    );
  }

  Future<void> getMealVariantsOptions() async {
    // emit(state.copyWith(getMealVariantsState: RequestState.loading));

    var result = await _repo.getMealsVariantsOptions();

    result.fold(
      (failure) => emit(state.copyWith(
          // getMealVariantsState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getMealVariantsState: RequestState.success,
        mealVariants: successData,
      )),
    );
  }

  Future<void> getMuscleFocusData() async {
    // emit(state.copyWith(getMuscleFocusState: RequestState.loading));

    var result = await _repo.getMuscleFocus();

    result.fold(
      (failure) => emit(state.copyWith(
          // getMuscleFocusState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getMuscleFocusState: RequestState.success,
        muscleFocusData: successData,
      )),
    );
  }

  Future<void> getWorkoutTypes() async {
    // emit(state.copyWith(getWorkoutTypesState: RequestState.loading));

    var result = await _repo.getWorkoutTypes();

    result.fold(
      (failure) => emit(state.copyWith(
          // getWorkoutTypesState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getWorkoutTypesState: RequestState.success,
        workoutTypes: successData,
      )),
    );
  }

  Future<void> getEquipments() async {
    // emit(state.copyWith(getEquipmentsState: RequestState.loading));

    var result = await _repo.getEquipments();

    result.fold(
      (failure) => emit(state.copyWith(
          // getEquipmentsState: RequestState.failure,
          // errMessage: failure.message,
          )),
      (successData) => emit(state.copyWith(
        // getEquipmentsState: RequestState.success,
        equipments: successData,
      )),
    );
  }

  Future<void> getNoOfDailyMeals() async {
    // emit(state.copyWith(getNoOfDailyMealsState: RequestState.loading));

    var result = await _repo.getNoOfDailyMealsOptions();

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
            // getNoOfDailyMealsState: RequestState.failure,
            // errMessage: failure.message,
            ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          // getNoOfDailyMealsState: RequestState.success,
          noOfDailyMeals: successData,
        ));
      },
    );
  }

  updatePersonalData() async {
    // emit(state.copyWith(updatePersonalInfo: RequestState.loading));

    var result = await _repo.updatePersonalInfo(personalInfoModel: state.userInfo);

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
            // updatePersonalInfo: RequestState.failure,
            // errMessage: failure.message,
            ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
            // updatePersonalInfo: RequestState.success,
            ));
        Session().getUser();
        // Session().currentUser = ;
      },
    );
  }
}
