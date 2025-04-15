part of 'workout_cubit.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    @Default([]) List<WorkoutPlan> allPlans,
    @Default(1) int progressValue,
    @Default(0) int selectedDay,
    @Default('') String errMessage,
    @Default(false) bool isPlaying,
    @Default({}) Map<int,int> remainingSets,
    @Default(RequestState.initial) RequestState getWorkOutPlanState,

  }) = _WorkoutState;
}
