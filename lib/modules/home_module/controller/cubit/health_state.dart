part of 'health_cubit.dart';

@freezed
class HealthState with _$HealthState {

  const factory HealthState({
    @Default([]) List<HealthDataPoint> healthData,
    @Default(0) num totalCalories,
    @Default(0) int totalSteps,
    @Default(0) int distanceInMeters,
    @Default(0) num totalLitreOfWater,
    @Default(0) num totalSleep,
    @Default(0) num exerciseTime,


  }) = _HealthState;
}


