import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';
import 'package:urfit/core/data/services/health_local_service.dart';

part 'health_state.dart';

part 'health_cubit.freezed.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(const HealthState());

  List<HealthDataPoint> get steps => state.healthData
      .where((element) => element.type == HealthDataType.STEPS)
      .toList();

  List<HealthDataPoint> get workOut => state.healthData
      .where((element) => element.type == HealthDataType.WORKOUT)
      .toList();

  List<HealthDataPoint> get water => state.healthData
      .where((element) => element.type == HealthDataType.WATER)
      .toList();

  List<HealthDataPoint> get sleep => state.healthData
      .where((element) => [
            HealthDataType.SLEEP_ASLEEP,
            HealthDataType.SLEEP_IN_BED,
            HealthDataType.SLEEP_AWAKE,
            HealthDataType.SLEEP_DEEP,
            HealthDataType.SLEEP_LIGHT,
            HealthDataType.SLEEP_REM,
          ].contains(element.type))
      .toList();

  // دالة لإعادة تحميل البيانات الصحية
  Future<void> refreshHealthData() async {
    await initializeHealth();
  }

  /// الحصول على الخطوات الأصلية من Health Connect (بدون التعديلات المحلية)
  Future<int> getOriginalSteps() async {
    try {
      final now = DateTime.now();
      final steps = await Health().getTotalStepsInInterval(
        now.subtract(const Duration(days: 1)),
        now,
      );
      return steps ?? 0;
    } catch (e) {
      print("خطأ في الحصول على الخطوات الأصلية: $e");
      return 0;
    }
  }

  /// تحديث المياه مباشرة في الـ state
  void updateWaterValue(double newValue) {
    print("=== تحديث المياه مباشرة في state ===");
    print("القيمة الجديدة: $newValue");
    // إعادة إصدار state جديد لإجبار إعادة البناء
    emit(state.copyWith(
      totalLitreOfWater: newValue,
      // تحديث timestamp لإجبار الويدجت على إعادة البناء
    ));
  }

  /// تحديث النوم مباشرة في الـ state (بالدقائق)
  void updateSleepValue(double newValueInMinutes) {
    print("=== تحديث النوم مباشرة في state ===");
    print("القيمة الجديدة (بالدقائق): $newValueInMinutes");
    emit(state.copyWith(
      totalSleep: newValueInMinutes,
    ));
  }

  /// تحديث الخطوات مباشرة في الـ state
  void updateStepsValue(int newValue) {
    print("=== تحديث الخطوات مباشرة في state ===");
    print("القيمة الجديدة: $newValue");
    emit(state.copyWith(
      totalSteps: newValue,
    ));
  }

  initializeHealth() async {
    try {
      print("=== بداية initializeHealth ===");
      // configure the health plugin before use.
      await Health().configure();

      // define the types to get
      final types = [
        HealthDataType.STEPS,
        HealthDataType.BASAL_ENERGY_BURNED, // السعرات الحرارية الأساسية
        HealthDataType
            .ACTIVE_ENERGY_BURNED, // السعرات الحرارية النشطة (المحروقة)
        HealthDataType.WORKOUT,
        HealthDataType.SLEEP_ASLEEP, // النوم الفعلي
        HealthDataType.SLEEP_IN_BED, // الوقت في السرير
        HealthDataType.SLEEP_AWAKE, // وقت الاستيقاظ
        HealthDataType.SLEEP_DEEP, // النوم العميق
        HealthDataType.SLEEP_LIGHT, // النوم الخفيف
        HealthDataType.SLEEP_REM, // نوم حركة العين السريعة
        HealthDataType.WATER,
        if (Platform.isIOS) HealthDataType.DISTANCE_WALKING_RUNNING,
        if (Platform.isAndroid) HealthDataType.DISTANCE_DELTA,
      ];

      // define permissions
      final permissions = [
        HealthDataAccess.READ_WRITE, // STEPS
        HealthDataAccess.READ_WRITE, // BASAL_ENERGY_BURNED
        HealthDataAccess.READ_WRITE, // ACTIVE_ENERGY_BURNED
        HealthDataAccess.READ_WRITE, // WORKOUT
        HealthDataAccess.READ_WRITE, // SLEEP_ASLEEP
        HealthDataAccess.READ_WRITE, // SLEEP_IN_BED
        HealthDataAccess.READ_WRITE, // SLEEP_AWAKE
        HealthDataAccess.READ_WRITE, // SLEEP_DEEP
        HealthDataAccess.READ_WRITE, // SLEEP_LIGHT
        HealthDataAccess.READ_WRITE, // SLEEP_REM
        HealthDataAccess.READ_WRITE, // WATER
        HealthDataAccess.READ_WRITE, // DISTANCE
      ];

      // على Android، نتحقق من الصلاحيات أولاً
      if (Platform.isAndroid) {
        // التحقق من وجود الصلاحيات
        bool hasPermissions =
            await Health().hasPermissions(types, permissions: permissions) ??
                false;

        // إذا لم تكن الصلاحيات موجودة، نطلبها
        if (!hasPermissions) {
          // طلب الصلاحيات - على Android قد يفتح Health Connect تلقائياً
          // يجب أن نستدعي requestAuthorization حتى لو كان hasPermissions يعيد false
          // لأن requestAuthorization هو الذي يفتح نافذة الصلاحيات
          await Health().requestAuthorization(types, permissions: permissions);

          // نعطي وقتاً للنظام لمعالجة الطلب وفتح Health Connect
          await Future.delayed(const Duration(milliseconds: 1000));

          // التحقق مرة أخرى من الصلاحيات بعد محاولة الطلب
          hasPermissions =
              await Health().hasPermissions(types, permissions: permissions) ??
                  false;

          // إذا لم تكن الصلاحيات موجودة بعد، نترك الدالة
          // على Android، قد يحتاج المستخدم إلى منح الصلاحيات من Health Connect
          if (!hasPermissions) {
            return;
          }
        }
      } else {
        // على iOS، نطلب الصلاحيات مباشرة
        final bool requested = await Health()
            .requestAuthorization(types, permissions: permissions);

        if (requested != true) {
          return;
        }
      }

      final now = DateTime.now();
      final todayStart = DateTime(now.year, now.month, now.day);

      // جلب بيانات اليوم الحالي للسعرات الحرارية والنوم فقط
      List<HealthDataPoint> todayCaloriesAndSleepData = [];
      try {
        todayCaloriesAndSleepData = await Health().getHealthDataFromTypes(
          types: [
            HealthDataType.BASAL_ENERGY_BURNED,
            HealthDataType.ACTIVE_ENERGY_BURNED,
            HealthDataType.SLEEP_ASLEEP,
            HealthDataType.SLEEP_IN_BED,
            HealthDataType.SLEEP_AWAKE,
            HealthDataType.SLEEP_DEEP,
            HealthDataType.SLEEP_LIGHT,
            HealthDataType.SLEEP_REM,
          ],
          startTime: todayStart,
          endTime: now,
        );
      } catch (e) {
        print("=== فشل جلب بيانات السعرات والنوم: $e ===");
      }

      // جلب بيانات الخطوات والمياه والتمارين من آخر 7 أيام لضمان عرض البيانات التاريخية
      List<HealthDataPoint> weekHealthData = [];
      try {
        weekHealthData = await Health().getHealthDataFromTypes(
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
      } catch (e) {
        print("=== فشل جلب بيانات الأسبوع: $e ===");
      }

      // إذا لم نجد بيانات كافية، جرب جلب البيانات من آخر 30 يوم
      List<HealthDataPoint> finalHealthData = [
        ...todayCaloriesAndSleepData,
        ...weekHealthData,
      ];

      if (weekHealthData.isEmpty) {
        try {
          final List<HealthDataPoint> monthData =
              await Health().getHealthDataFromTypes(
            types: [
              HealthDataType.STEPS,
              HealthDataType.WORKOUT,
              HealthDataType.WATER,
              if (Platform.isIOS) HealthDataType.DISTANCE_WALKING_RUNNING,
              if (Platform.isAndroid) HealthDataType.DISTANCE_DELTA,
            ],
            startTime: now.subtract(const Duration(days: 30)),
            endTime: now,
          );

          if (monthData.isNotEmpty) {
            finalHealthData = [
              ...todayCaloriesAndSleepData,
              ...monthData,
            ];
          }
        } catch (e) {
          print("=== فشل جلب بيانات الشهر: $e ===");
        }
      }

      final num totalCalories = getTotalCalories(todayCaloriesAndSleepData);
      final num totalDistance = getTotalDistance(finalHealthData);

      // حساب المياه لليوم الحالي فقط مع إضافة التعديلات المحلية
      final num todayWaterLitre = getTodayOriginalWater(finalHealthData);
      final double waterAdjustment = HealthLocalService.getWaterAdjustment(now);
      final num finalWaterLitre = todayWaterLitre + waterAdjustment;

      print("=== حساب المياه ===");
      print("المياه من Health Connect لليوم الحالي: $todayWaterLitre");
      print("التعديل المحلي: $waterAdjustment");
      print("المجموع النهائي: $finalWaterLitre");

      // حساب النوم لليوم الحالي فقط مع إضافة التعديلات المحلية
      // استخدام finalHealthData لأنها تحتوي على جميع البيانات بما فيها النوم
      final num todaySleep = getTodayOriginalSleep(finalHealthData);
      final double sleepAdjustment = HealthLocalService.getSleepAdjustment(now);
      final num finalSleep = todaySleep + sleepAdjustment;

      print("=== حساب النوم ===");
      print("النوم من Health Connect لليوم الحالي (بالدقائق): $todaySleep");
      print("التعديل المحلي (بالدقائق): $sleepAdjustment");
      print("المجموع النهائي (بالدقائق): $finalSleep");

      final num exerciseTime = getExerciseTimeInMin(finalHealthData);
      
      // محاولة الحصول على الخطوات من Health Connect (قد تفشل بسبب الصلاحيات)
      int? originalSteps;
      try {
        originalSteps = await Health().getTotalStepsInInterval(
          now.subtract(const Duration(days: 1)),
          now,
        );
        print("=== نجحت قراءة الخطوات من Health Connect: $originalSteps ===");
      } catch (e) {
        print("=== فشلت قراءة الخطوات من Health Connect: $e ===");
        originalSteps = 0;
      }
      
      // حساب الخطوات مع إضافة التعديلات المحلية
      final int stepsAdjustment = HealthLocalService.getStepsAdjustment(now);
      final int finalSteps = (originalSteps ?? 0) + stepsAdjustment;
      
      print("=== حساب الخطوات ===");
      print("الخطوات من Health Connect: $originalSteps");
      print("التعديل المحلي: $stepsAdjustment");
      print("المجموع النهائي: $finalSteps");

      // تنظيف البيانات القديمة
      await HealthLocalService.cleanOldData();

      print("=== قبل emit - القيم النهائية ===");
      print("totalSteps: $finalSteps");
      print("totalLitreOfWater: $finalWaterLitre");
      print("totalSleep: $finalSleep");

      emit(state.copyWith(
          healthData: finalHealthData,
          totalCalories: totalCalories,
          totalSteps: finalSteps,
          distanceInMeters: totalDistance.toInt(),
          totalLitreOfWater: finalWaterLitre,
          totalSleep: finalSleep,
          exerciseTime: exerciseTime));
      
      print("=== تم emit بنجاح - نهاية initializeHealth ===");
    } catch (e, stackTrace) {
      // في حالة الخطأ، نطبع الخطأ ونترك البيانات كما هي
      print("=== خطأ في initializeHealth ===");
      print("الخطأ: $e");
      print("Stack trace: $stackTrace");
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

  /// الحصول على قيمة المياه الأصلية لليوم الحالي (من Health Connect فقط)
  num getTodayOriginalWater(List<HealthDataPoint> healthData) {
    final today = DateTime.now();
    final todayKey = '${today.year}-${today.month}-${today.day}';

    return healthData
        .where((element) =>
            element.type == HealthDataType.WATER &&
            '${element.dateFrom.year}-${element.dateFrom.month}-${element.dateFrom.day}' ==
                todayKey)
        .map((e) =>
            num.tryParse(e.value.toString().split("numericValue: ").last) ?? 0)
        .fold(0, (previousValue, element) => previousValue + element);
  }

  /// الحصول على قيمة النوم الأصلية لليوم الحالي (من Health Connect فقط - بالدقائق)
  num getTodayOriginalSleep(List<HealthDataPoint> healthData) {
    final today = DateTime.now();
    final todayKey = '${today.year}-${today.month}-${today.day}';

    num totalSleepTime = 0;

    // أولوية للوقت في السرير (SLEEP_IN_BED) إذا كان متوفراً
    final inBedData = healthData
        .where((element) =>
            element.type == HealthDataType.SLEEP_IN_BED &&
            '${element.dateFrom.year}-${element.dateFrom.month}-${element.dateFrom.day}' ==
                todayKey)
        .toList();

    if (inBedData.isNotEmpty) {
      for (var data in inBedData) {
        final sleepTime = _extractNumericValue(data.value);
        totalSleepTime += sleepTime ?? 0;
      }
    } else {
      // إذا لم يكن متوفراً، نجمع جميع أنواع النوم الأخرى
      final sleepTypes = [
        HealthDataType.SLEEP_ASLEEP,
        HealthDataType.SLEEP_DEEP,
        HealthDataType.SLEEP_LIGHT,
        HealthDataType.SLEEP_REM,
      ];

      for (var sleepType in sleepTypes) {
        final sleepData = healthData
            .where((element) =>
                element.type == sleepType &&
                '${element.dateFrom.year}-${element.dateFrom.month}-${element.dateFrom.day}' ==
                    todayKey)
            .toList();

        for (var data in sleepData) {
          final sleepTime = _extractNumericValue(data.value);
          totalSleepTime += sleepTime ?? 0;
        }
      }
    }

    return totalSleepTime;
  }

  num getTotalSleepTime(List<HealthDataPoint> healthData) {
    // حساب إجمالي وقت النوم من جميع الأنواع المتاحة
    num totalSleepTime = 0;

    // أولوية للوقت في السرير (SLEEP_IN_BED) إذا كان متوفراً
    final inBedData = healthData
        .where((element) => element.type == HealthDataType.SLEEP_IN_BED)
        .toList();

    if (inBedData.isNotEmpty) {
      // استخدام الوقت في السرير كإجمالي وقت النوم
      for (var data in inBedData) {
        final sleepTime = _extractNumericValue(data.value);
        totalSleepTime += sleepTime ?? 0;
      }
    } else {
      // إذا لم يكن متوفراً، نجمع جميع أنواع النوم الأخرى
      final sleepTypes = [
        HealthDataType.SLEEP_ASLEEP,
        HealthDataType.SLEEP_DEEP,
        HealthDataType.SLEEP_LIGHT,
        HealthDataType.SLEEP_REM,
      ];

      for (var sleepType in sleepTypes) {
        final sleepData =
            healthData.where((element) => element.type == sleepType).toList();

        for (var data in sleepData) {
          final sleepTime = _extractNumericValue(data.value);
          totalSleepTime += sleepTime ?? 0;
        }
      }
    }

    return totalSleepTime;
  }
}
