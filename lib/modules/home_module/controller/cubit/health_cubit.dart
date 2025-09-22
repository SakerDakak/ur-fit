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
    try {
      // configure the health plugin before use.
      await Health().configure();

      // define the types to get
      final types = [
        HealthDataType.STEPS,
        HealthDataType.BASAL_ENERGY_BURNED, // السعرات الحرارية الأساسية
        HealthDataType
            .ACTIVE_ENERGY_BURNED, // السعرات الحرارية النشطة (المحروقة)
        HealthDataType.WORKOUT,
        HealthDataType.SLEEP_ASLEEP,
        HealthDataType.WATER,
        if (Platform.isIOS) HealthDataType.DISTANCE_WALKING_RUNNING,
        if (Platform.isAndroid) HealthDataType.DISTANCE_DELTA,
      ];

      // requesting access to the data types before reading them
      final bool requested =
          await Health().requestAuthorization(types, permissions: [
        HealthDataAccess.READ_WRITE, // STEPS
        HealthDataAccess.READ_WRITE, // BASAL_ENERGY_BURNED
        HealthDataAccess.READ_WRITE, // ACTIVE_ENERGY_BURNED
        HealthDataAccess.READ_WRITE, // WORKOUT
        HealthDataAccess.READ_WRITE, // SLEEP_ASLEEP
        HealthDataAccess.READ_WRITE, // WATER
        HealthDataAccess.READ_WRITE, // DISTANCE
      ]);

      if (!requested) {
        return;
      }

      final now = DateTime.now();
      final todayStart = DateTime(now.year, now.month, now.day);

      // جلب بيانات اليوم الحالي للسعرات الحرارية والنوم فقط
      final List<HealthDataPoint> todayCaloriesAndSleepData =
          await Health().getHealthDataFromTypes(
        types: [
          HealthDataType.BASAL_ENERGY_BURNED,
          HealthDataType.ACTIVE_ENERGY_BURNED,
          HealthDataType.SLEEP_ASLEEP,
        ],
        startTime: todayStart,
        endTime: now,
      );

      // جلب باقي البيانات من آخر 24 ساعة (المياه والخطوات والمسافة والتمارين)
      final List<HealthDataPoint> otherHealthData =
          await Health().getHealthDataFromTypes(
        types: [
          HealthDataType.STEPS,
          HealthDataType.WORKOUT,
          HealthDataType.WATER,
          if (Platform.isIOS) HealthDataType.DISTANCE_WALKING_RUNNING,
          if (Platform.isAndroid) HealthDataType.DISTANCE_DELTA,
        ],
        startTime: now.subtract(const Duration(days: 1)),
        endTime: now,
      );

      // دمج البيانات
      List<HealthDataPoint> finalHealthData = [
        ...todayCaloriesAndSleepData,
        ...otherHealthData,
      ];

      // إذا لم نجد بيانات أخرى، جرب البيانات من آخر 7 أيام للمياه والخطوات فقط
      if (otherHealthData.isEmpty) {
        final List<HealthDataPoint> weekData =
            await Health().getHealthDataFromTypes(
          types: [
            HealthDataType.STEPS,
            HealthDataType.WORKOUT,
            HealthDataType.WATER,
            if (Platform.isIOS) HealthDataType.DISTANCE_WALKING_RUNNING,
            if (Platform.isAndroid) HealthDataType.DISTANCE_DELTA,
          ],
          startTime: now.subtract(const Duration(days: 7)),
          endTime: now,
        );

        if (weekData.isNotEmpty) {
          finalHealthData = [
            ...todayCaloriesAndSleepData,
            ...weekData,
          ];
        }
      }

      final num totalCalories = getTotalCalories(todayCaloriesAndSleepData);
      final num totalDistance = getTotalDistance(finalHealthData);
      final num totalWaterLitre = getTotalWaterInLitre(finalHealthData);
      final num totalSleep = getTotalSleepTime(todayCaloriesAndSleepData);
      final num exerciseTime = getExerciseTimeInMin(finalHealthData);
      final int? totalSteps = await Health().getTotalStepsInInterval(
        now.subtract(const Duration(days: 1)),
        now,
      );

      emit(state.copyWith(
          healthData: finalHealthData,
          totalCalories: totalCalories,
          totalSteps: totalSteps ?? 0,
          distanceInMeters: totalDistance.toInt(),
          totalLitreOfWater: totalWaterLitre,
          totalSleep: totalSleep,
          exerciseTime: exerciseTime));
    } catch (e) {
      // في حالة الخطأ، نترك البيانات كما هي
    }
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
    // جمع البيانات من كلا النوعين
    final basalCaloriesData = healthData
        .where((element) => element.type == HealthDataType.BASAL_ENERGY_BURNED)
        .toList();

    final activeCaloriesData = healthData
        .where((element) => element.type == HealthDataType.ACTIVE_ENERGY_BURNED)
        .toList();

    // حساب إجمالي السعرات الأساسية
    num totalBasalCalories = 0;
    for (var data in basalCaloriesData) {
      final num? calories = _extractNumericValue(data.value);
      totalBasalCalories += calories ?? 0;
    }

    // حساب إجمالي السعرات النشطة
    num totalActiveCalories = 0;
    for (var data in activeCaloriesData) {
      final num? calories = _extractNumericValue(data.value);
      totalActiveCalories += calories ?? 0;
    }

    // إجمالي السعرات (نركز على السعرات النشطة المحروقة)
    final num totalCalories =
        totalActiveCalories > 0 ? totalActiveCalories : totalBasalCalories;

    return totalCalories;
  }

  // دالة مساعدة لاستخراج القيمة الرقمية
  num? _extractNumericValue(dynamic value) {
    // الطريقة الأولى: البحث عن "numericValue:"
    if (value.toString().contains("numericValue:")) {
      return num.tryParse(value.toString().split("numericValue: ").last);
    }
    // الطريقة الثانية: إذا كانت القيمة رقمية مباشرة
    else if (value is num) {
      return value;
    }
    // الطريقة الثالثة: محاولة التحويل المباشر
    else {
      return num.tryParse(value.toString());
    }
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
