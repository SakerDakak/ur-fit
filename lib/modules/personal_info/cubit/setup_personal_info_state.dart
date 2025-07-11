part of 'setup_personal_info_cubit.dart';

@freezed
class SetupPersonalInfoState with _$SetupPersonalInfoState {
  const factory SetupPersonalInfoState({
    required UserInfoRequest userInfo,
    ///
    @Default([]) List<UserGoalsModel> goals,
    @Default([]) List<SelectionItemModel> mealsNotLiked,
    @Default([]) List<SelectionItemModel> mealsLiked,
    @Default([]) List<SelectionItemModel> diet,
    @Default([]) List<SelectionItemModel> mealVariants,
    @Default([]) List<NoOfDailyMealsModel> noOfDailyMeals,
    @Default([]) List<BodyPartsModel> muscleFocusData,
    @Default([]) List<SelectionItemModel> workoutTypes,
    @Default([]) List<SelectionItemModel> equipments,
  }) = _SetupPersonalInfoState;
}
