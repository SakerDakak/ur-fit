part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({

    @Default(null) PlanHistoryModel? planHistoryModel,
    @Default(0) num totalCalories,
    @Default('') String errorMessage,
    @Default(null) Nutrients? nutrition,
    @Default(null) ExerciseHistoryData? exerciseHistoryData,
    @Default(null) StaticPageModel? staticPageModel,
    @Default(RequestState.initial) RequestState getPlanDataState,
    @Default(RequestState.initial) RequestState getPlanHistoryState,
    @Default(RequestState.initial) RequestState getStaticPageState,
}) = _SettingState;
}
