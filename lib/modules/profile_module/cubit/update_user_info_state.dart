import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/modules/personal_info/data/models/body_parts_model.dart';
import 'package:urfit/modules/personal_info/data/models/no_of_daily_meals.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';

part 'update_user_info_state.freezed.dart';

@freezed
abstract class UpdateUserInfoState with _$UpdateUserInfoState {
  const factory UpdateUserInfoState({
    required UserPersonalInfoModel userInfo,
    @Default("") String oldPassword,
    @Default("") String newPassword,
    @Default("") String confirmPassword,
    @Default(1) int currentInfoStep,
    @Default(1) int currentStepOneIndex,
    @Default(1) int currentStepTwoIndex,
    @Default(1) int currentStepThreeIndex,
    @Default(0) int currentPageIndex,
    @Default([]) List<UserGoalsModel> goals,
    @Default([]) List<SelectionItemModel> mealsNotLiked,
    @Default([]) List<SelectionItemModel> mealsLiked,
    @Default([]) List<SelectionItemModel> diet,
    @Default([]) List<SelectionItemModel> mealVariants,
    @Default([]) List<NoOfDailyMealsModel> noOfDailyMeals,
    @Default([]) List<BodyPartsModel> muscleFocusData,
    @Default([]) List<SelectionItemModel> workoutTypes,
    @Default([]) List<SelectionItemModel> equipments,
    @Default('') String errMessage,
    @Default(RequestState.initial) RequestState getGoalsState,
    @Default(RequestState.initial) RequestState changePasswordState,
    @Default(RequestState.initial) RequestState getNotLikedMealsState,
    @Default(RequestState.initial) RequestState getLikedMealsState,
    @Default(RequestState.initial) RequestState getDietOptionsState,
    @Default(RequestState.initial) RequestState getMealVariantsState,
    @Default(RequestState.initial) RequestState getNoOfDailyMealsState,
    @Default(RequestState.initial) RequestState getMuscleFocusState,
    @Default(RequestState.initial) RequestState getWorkoutTypesState,
    @Default(RequestState.initial) RequestState getEquipmentsState,
    @Default(RequestState.initial) RequestState updatePersonalInfo,
  }) = _UpdateUserInfoState;
}
