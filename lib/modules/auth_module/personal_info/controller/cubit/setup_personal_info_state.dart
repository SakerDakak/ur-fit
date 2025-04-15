part of 'setup_personal_info_cubit.dart';

@freezed
class SetupPersonalInfoState with _$SetupPersonalInfoState {
  const factory SetupPersonalInfoState({
    required UserPersonalInfoModel userInfo,
    @Default("") String oldPassword,
    @Default("") String newPassword,
    @Default("") String confirmPassword,
    @Default(1) int currentInfoStep,
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


  }) = _SetupPersonalInfoState;
}
