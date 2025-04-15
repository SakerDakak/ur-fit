import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';

part 'health_state.dart';

part 'health_cubit.freezed.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(const HealthState());

  List<HealthDataPoint> get steps => state.healthData
      .where((element) => element.type == HealthDataType.STEPS)
      .toList();

  List<HealthDataPoint> get workOut => state.healthData
      .where((element) => element.type == HealthDataType.STEPS)
      .toList();

  List<HealthDataPoint> get water => state.healthData
      .where((element) => element.type == HealthDataType.STEPS)
      .toList();

  List<HealthDataPoint> get sleep => state.healthData
      .where((element) => element.type == HealthDataType.STEPS)
      .toList();

  initializeHealth() async {
    // configure the health plugin before use.
    await Health().configure();

    // define the types to get
    var types = [
      HealthDataType.STEPS,
      HealthDataType.BASAL_ENERGY_BURNED,
      HealthDataType.WORKOUT,
      HealthDataType.SLEEP_ASLEEP,
      HealthDataType.WATER,
      if (Platform.isIOS) HealthDataType.DISTANCE_WALKING_RUNNING,
      if (Platform.isAndroid) HealthDataType.DISTANCE_DELTA,
    ];

    // requesting access to the data types before reading them
    bool requested = await Health().requestAuthorization(types, permissions: [
      HealthDataAccess.READ_WRITE,
      HealthDataAccess.READ_WRITE,
      HealthDataAccess.READ_WRITE,
      HealthDataAccess.READ_WRITE,
      HealthDataAccess.READ_WRITE,
      HealthDataAccess.READ_WRITE
    ]);
    // bool?  request  = await Health().hasPermissions(types,permissions: [HealthDataAccess.READ_WRITE,HealthDataAccess.READ_WRITE]);
    print("request : ${requested}");
    var now = DateTime.now();

    // fetch health data from the last 24 hours
    List<HealthDataPoint> healthData = await Health().getHealthDataFromTypes(
      types: types,
      startTime: now.subtract(Duration(days: 1)),
      endTime: now,
    );

    final num totalCalories = getTotalCalories(healthData);
    final num totalDistance = getTotalDistance(healthData);
    final num totalWaterLitre = getTotalWaterInLitre(healthData);
    final num totalSleep = getTotalSleepTime(healthData);
    final num exerciseTime = getExerciseTimeInMin(healthData);
    final int? totalSteps = await Health().getTotalStepsInInterval(
      now.subtract(Duration(days: 1)),
      now,
    );

    // Health().writeWorkoutData(activityType: HealthWorkoutActivityType.GYMNASTICS, start: start, end: end,)
    emit(state.copyWith(
        healthData: healthData,
        totalCalories: totalCalories,
        totalSteps: totalSteps ?? 0,
        distanceInMeters: totalDistance.toInt(),
        totalLitreOfWater: totalWaterLitre,
        totalSleep: totalSleep,
        exerciseTime: exerciseTime));
  }

  num getExerciseTimeInMin(List<HealthDataPoint> healthData) {
    return healthData
        .where((element) => element.type == HealthDataType.WORKOUT)
        .map((e) {
      final duration = e.dateTo.difference(e.dateFrom).inMinutes;
      return duration;
    }).fold(0, (previousValue, element) => previousValue + element);
  }

  num getTotalCalories(List<HealthDataPoint> healthData) {
    return healthData
        .where((element) => element.type == HealthDataType.BASAL_ENERGY_BURNED)
        .map((e) =>
            num.tryParse(e.value.toString().split("numericValue: ").last) ?? 0)
        .fold(0, (previousValue, element) => previousValue + element);
  }

  num getTotalDistance(List<HealthDataPoint> healthData) {
    return healthData
        .where((element) =>
            element.type == HealthDataType.DISTANCE_WALKING_RUNNING ||
            element.type == HealthDataType.DISTANCE_DELTA)
        .map((e) =>
            num.tryParse(e.value.toString().split("numericValue: ").last) ?? 0)
        .fold(0, (previousValue, element) => previousValue + element);
  }

  num getTotalWaterInLitre(List<HealthDataPoint> healthData) {
    return healthData
        .where((element) => element.type == HealthDataType.WATER)
        .map((e) =>
            num.tryParse(e.value.toString().split("numericValue: ").last) ?? 0)
        .fold(0, (previousValue, element) => previousValue + element);
  }

  num getTotalSleepTime(List<HealthDataPoint> healthData) {
    return healthData
        .where((element) => element.type == HealthDataType.SLEEP_ASLEEP)
        .map((e) =>
            num.tryParse(e.value.toString().split("numericValue: ").last) ?? 0)
        .fold(0, (previousValue, element) => previousValue + element);
  }
}
