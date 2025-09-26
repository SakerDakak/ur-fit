import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/data/models/workout_progress_model.dart';

/// خدمة التخزين المحلي لبيانات تقدم التمارين
class WorkoutProgressLocalService {
  static const String _workoutProgressKey = "workout_progress_data";

  /// حفظ تقدم التمرين
  Future<void> saveWorkoutProgress(WorkoutProgress progress) async {
    try {
      print("=== حفظ تقدم التمرين ===");
      print("معرف يوم التمرين: ${progress.workoutDayId}");
      print("التاريخ: ${progress.date}");
      print("الحالة: ${progress.status}");
      print("عدد التمارين: ${progress.exercisesProgress.length}");

      final prefs = di<SharedPreferences>();
      final existingData = getAllWorkoutProgress();

      print("البيانات الموجودة مسبقاً: ${existingData.length}");

      // البحث عن تقدم التمرين لنفس اليوم
      final existingIndex = existingData.indexWhere((item) =>
          item.workoutDayId == progress.workoutDayId &&
          item.date == progress.date);

      print("فهرس التقدم الموجود: $existingIndex");

      if (existingIndex != -1) {
        // تحديث التقدم الموجود
        existingData[existingIndex] = progress;
        print("تم تحديث التقدم الموجود");
      } else {
        // إضافة تقدم جديد
        existingData.add(progress);
        print("تم إضافة تقدم جديد");
      }

      // تنظيف البيانات القديمة (أكثر من يوم)
      final cleanedData = _cleanOldData(existingData);
      print("البيانات بعد التنظيف: ${cleanedData.length}");

      // تحويل البيانات إلى JSON وحفظها
      final jsonData = cleanedData.map((item) => item.toJson()).toList();
      await prefs.setString(_workoutProgressKey, jsonEncode(jsonData));

      print("تم حفظ تقدم التمرين بنجاح");
    } catch (e) {
      print("خطأ في حفظ تقدم التمرين: $e");
      print("Stack trace: ${StackTrace.current}");
      throw Exception("فشل في حفظ تقدم التمرين");
    }
  }

  /// الحصول على تقدم التمرين لليوم الحالي
  WorkoutProgress? getTodayWorkoutProgress(int workoutDayId) {
    try {
      print("=== الحصول على تقدم التمرين لليوم الحالي ===");
      print("معرف يوم التمرين: $workoutDayId");

      final allData = getAllWorkoutProgress();
      final today =
          DateTime.now().toIso8601String().split('T')[0]; // YYYY-MM-DD

      print("تاريخ اليوم: $today");
      print("إجمالي البيانات المحفوظة: ${allData.length}");

      final result = allData.firstWhere(
        (item) => item.workoutDayId == workoutDayId && item.date == today,
        orElse: () => throw StateError('لا يوجد تقدم للتمرين اليوم'),
      );

      print("تم العثور على تقدم للتمرين اليوم");
      print("حالة التمرين: ${result.status}");
      print("عدد التمارين: ${result.exercisesProgress.length}");

      return result;
    } catch (e) {
      print("لا يوجد تقدم للتمرين اليوم: $e");
      return null;
    }
  }

  /// الحصول على جميع بيانات تقدم التمارين
  List<WorkoutProgress> getAllWorkoutProgress() {
    try {
      final prefs = di<SharedPreferences>();
      final jsonString = prefs.getString(_workoutProgressKey);

      if (jsonString == null || jsonString.isEmpty) {
        return [];
      }

      final List<dynamic> jsonData = jsonDecode(jsonString);
      final List<WorkoutProgress> progressData = [];

      for (var item in jsonData) {
        try {
          final progress = WorkoutProgress.fromJson(item);
          progressData.add(progress);
        } catch (e) {
          print("خطأ في تحليل بيانات التمرين: $e");
        }
      }

      return progressData;
    } catch (e) {
      print("خطأ في قراءة بيانات تقدم التمارين: $e");
      return [];
    }
  }

  /// تحديث حالة تمرين واحد
  Future<void> updateExerciseProgress({
    required int workoutDayId,
    required int exerciseId,
    required ExerciseStatus status,
    int? completedSets,
    int? skippedSets,
    DateTime? completedAt,
    WorkoutDay? workoutDay,
    int? totalWorkoutTimeSeconds,
    int? totalRestTimeSeconds,
  }) async {
    try {
      print("=== بدء تحديث تقدم التمرين ===");
      print("workoutDayId: $workoutDayId");
      print("exerciseId: $exerciseId");
      print("status: $status");
      print("completedSets: $completedSets");
      print("skippedSets: $skippedSets");

      final today = DateTime.now().toIso8601String().split('T')[0];
      print("تاريخ اليوم: $today");

      var progress = getTodayWorkoutProgress(workoutDayId);
      print("التقدم الموجود: ${progress != null ? 'موجود' : 'غير موجود'}");

      progress ??= WorkoutProgress(
        workoutDayId: workoutDayId,
        date: today,
        status: WorkoutStatus.notStarted,
        totalExercises: 0, // سيتم تحديثه لاحقاً
        completedExercises: 0,
        skippedExercises: 0,
        totalSets: 0, // سيتم تحديثه لاحقاً
        completedSets: 0,
        totalCalories: 0, // سيتم تحديثه لاحقاً
        burnedCalories: 0,
        totalTimeMinutes: 0, // سيتم تحديثه لاحقاً
        completedTimeMinutes: 0,
        exercisesProgress: [], // قائمة فارغة قابلة للتعديل
        lastUpdated: DateTime.now(),
      );

      print("عدد التمارين في التقدم: ${progress.exercisesProgress.length}");

      // البحث عن تمرين في القائمة
      final exerciseIndex = progress.exercisesProgress
          .indexWhere((ex) => ex.exerciseId == exerciseId);

      print("فهرس التمرين الموجود: $exerciseIndex");

      ExerciseProgress exerciseProgress;
      if (exerciseIndex != -1) {
        // تحديث التمرين الموجود
        final existing = progress.exercisesProgress[exerciseIndex];
        print(
            "التمرين الموجود: ${existing.exerciseId}, الحالة: ${existing.status}");

        exerciseProgress = existing.copyWith(
          status: status,
          completedSets: completedSets ?? existing.completedSets,
          skippedSets: skippedSets ?? existing.skippedSets,
          startedAt: existing.startedAt ??
              (status != ExerciseStatus.notStarted ? DateTime.now() : null),
          completedAt: completedAt ??
              (status == ExerciseStatus.completed
                  ? DateTime.now()
                  : existing.completedAt),
          totalWorkoutTimeSeconds:
              totalWorkoutTimeSeconds ?? existing.totalWorkoutTimeSeconds,
          totalRestTimeSeconds:
              totalRestTimeSeconds ?? existing.totalRestTimeSeconds,
        );

        // إنشاء قائمة جديدة قابلة للتعديل
        final newExercisesProgress =
            List<ExerciseProgress>.from(progress.exercisesProgress);
        newExercisesProgress[exerciseIndex] = exerciseProgress;

        progress = progress.copyWith(exercisesProgress: newExercisesProgress);
        print("تم تحديث التمرين الموجود");
      } else {
        // إضافة تمرين جديد
        exerciseProgress = ExerciseProgress(
          exerciseId: exerciseId,
          status: status,
          totalSets: 0, // سيتم تحديثه لاحقاً
          completedSets: completedSets ?? 0,
          skippedSets: skippedSets ?? 0,
          caloriesPerSet: 0, // سيتم تحديثه لاحقاً
          timePerSetMinutes: 0, // سيتم تحديثه لاحقاً
          startedAt:
              status != ExerciseStatus.notStarted ? DateTime.now() : null,
          completedAt: completedAt ??
              (status == ExerciseStatus.completed ? DateTime.now() : null),
          setsProgress: [], // قائمة فارغة للمجموعات
          currentSet: 1, // البدء من المجموعة الأولى
          totalWorkoutTimeSeconds: totalWorkoutTimeSeconds ?? 0,
          totalRestTimeSeconds: totalRestTimeSeconds ?? 0,
        );

        // إنشاء قائمة جديدة قابلة للتعديل وإضافة التمرين الجديد
        final newExercisesProgress =
            List<ExerciseProgress>.from(progress.exercisesProgress);
        newExercisesProgress.add(exerciseProgress);

        progress = progress.copyWith(exercisesProgress: newExercisesProgress);
        print("تم إضافة تمرين جديد");
      }

      print("عدد التمارين بعد التحديث: ${progress.exercisesProgress.length}");

      // تحديث بيانات التمرين من workoutDay
      if (workoutDay != null) {
        final exerciseIndex = progress.exercisesProgress
            .indexWhere((ex) => ex.exerciseId == exerciseId);
        if (exerciseIndex != -1) {
          final exercise = progress.exercisesProgress[exerciseIndex];
          final updatedExercise = exercise.copyWith(
            totalSets: workoutDay.sets,
            caloriesPerSet: workoutDay.caloriesBurned,
            timePerSetMinutes: workoutDay.timePerExercise,
          );
          final newExercisesProgress =
              List<ExerciseProgress>.from(progress.exercisesProgress);
          newExercisesProgress[exerciseIndex] = updatedExercise;
          progress = progress.copyWith(exercisesProgress: newExercisesProgress);
        }
      }

      // تحديث إحصائيات التمرين العام
      progress = _updateWorkoutStatistics(progress, workoutDay: workoutDay);

      print("الإحصائيات المحدثة:");
      print("- التمارين المكتملة: ${progress.completedExercises}");
      print("- التمارين المتخطاة: ${progress.skippedExercises}");
      print("- المجموعات المكتملة: ${progress.completedSets}");
      print("- السعرات المحروقة: ${progress.burnedCalories}");
      print("- حالة التمرين: ${progress.status}");

      // حفظ التحديثات
      await saveWorkoutProgress(progress);
      print("تم حفظ التحديثات بنجاح");
    } catch (e) {
      print("خطأ في تحديث تقدم التمرين: $e");
      print("Stack trace: ${StackTrace.current}");
      throw Exception("فشل في تحديث تقدم التمرين");
    }
  }

  /// تحديث إحصائيات التمرين العام
  WorkoutProgress _updateWorkoutStatistics(WorkoutProgress progress,
      {WorkoutDay? workoutDay}) {
    int completedExercises = 0;
    int skippedExercises = 0;
    int completedSets = 0;
    int burnedCalories = 0;
    int completedTimeMinutes = 0;

    for (final exercise in progress.exercisesProgress) {
      if (exercise.status == ExerciseStatus.completed) {
        completedExercises++;

        // حساب الوقت الحقيقي للتمرين المكتمل من المجموعات
        if (exercise.totalWorkoutTimeSeconds > 0) {
          // استخدام الوقت المحفوظ من المجموعات
          final realTimeMinutes =
              (exercise.totalWorkoutTimeSeconds / 60).ceil();
          completedTimeMinutes += realTimeMinutes;
          print(
              "الوقت الحقيقي للتمرين ${exercise.exerciseId}: ${exercise.totalWorkoutTimeSeconds} ثانية = $realTimeMinutes دقيقة");
        } else if (exercise.startedAt != null && exercise.completedAt != null) {
          // إذا لم يكن هناك وقت محفوظ، استخدم الفرق بين البداية والنهاية
          final realTimeSeconds =
              exercise.completedAt!.difference(exercise.startedAt!).inSeconds;
          final realTimeMinutes =
              (realTimeSeconds / 60).ceil(); // تحويل للدقائق مع التقريب للأعلى
          completedTimeMinutes += realTimeMinutes;
          print(
              "الوقت المقدر للتمرين ${exercise.exerciseId}: $realTimeSeconds ثانية = $realTimeMinutes دقيقة");
        } else {
          // إذا لم يكن هناك وقت حقيقي، استخدم الوقت المقدر
          completedTimeMinutes +=
              exercise.completedSets * exercise.timePerSetMinutes;
        }

        // حساب السعرات بناءً على النسبة من المجموعات المكتملة
        if (workoutDay != null) {
          final totalCaloriesForExercise =
              workoutDay.caloriesBurned; // السعرات الإجمالية للتمرين
          final totalSetsForExercise =
              workoutDay.sets; // إجمالي المجموعات للتمرين

          // حساب النسبة من السعرات بناءً على المجموعات المكتملة
          final exerciseCalories = (totalCaloriesForExercise *
                  exercise.completedSets /
                  totalSetsForExercise)
              .round();
          burnedCalories += exerciseCalories;

          print("=== حساب السعرات للتمرين ${exercise.exerciseId} ===");
          print("السعرات الإجمالية للتمرين: $totalCaloriesForExercise");
          print("إجمالي المجموعات: $totalSetsForExercise");
          print("المجموعات المكتملة: ${exercise.completedSets}");
          print("النسبة: ${exercise.completedSets}/$totalSetsForExercise");
          print("السعرات المحسوبة: $exerciseCalories");
          print("إجمالي السعرات حتى الآن: $burnedCalories");
        } else {
          // إذا لم نتمكن من الحصول على بيانات التمرين، استخدم القيمة المحفوظة
          // في هذه الحالة، exercise.caloriesPerSet يجب أن يكون السعرات الإجمالية للتمرين
          final exerciseCalories = (exercise.caloriesPerSet *
                  exercise.completedSets /
                  exercise.totalSets)
              .round();
          burnedCalories += exerciseCalories;
          print(
              "=== حساب السعرات للتمرين ${exercise.exerciseId} (بدون workoutDay) ===");
          print("السعرات الإجمالية المحفوظة: ${exercise.caloriesPerSet}");
          print("إجمالي المجموعات: ${exercise.totalSets}");
          print("المجموعات المكتملة: ${exercise.completedSets}");
          print("السعرات المحسوبة: $exerciseCalories");
          print("إجمالي السعرات حتى الآن: $burnedCalories");
        }
      } else if (exercise.status == ExerciseStatus.skipped) {
        skippedExercises++;

        // حساب الوقت الحقيقي للتمرين المتخطى أيضاً
        if (exercise.totalWorkoutTimeSeconds > 0) {
          // استخدام الوقت المحفوظ من المجموعات
          final realTimeMinutes =
              (exercise.totalWorkoutTimeSeconds / 60).ceil();
          completedTimeMinutes += realTimeMinutes;
          print(
              "الوقت الحقيقي للتمرين المتخطى ${exercise.exerciseId}: ${exercise.totalWorkoutTimeSeconds} ثانية = $realTimeMinutes دقيقة");
        } else if (exercise.startedAt != null && exercise.completedAt != null) {
          final realTimeSeconds =
              exercise.completedAt!.difference(exercise.startedAt!).inSeconds;
          final realTimeMinutes =
              (realTimeSeconds / 60).ceil(); // تحويل للدقائق مع التقريب للأعلى
          completedTimeMinutes += realTimeMinutes;
          print(
              "الوقت المقدر للتمرين المتخطى ${exercise.exerciseId}: $realTimeSeconds ثانية = $realTimeMinutes دقيقة");
        }
        // التمارين المتخطاة لا تحتسب في السعرات - هذا صحيح
        print("التمرين المتخطى ${exercise.exerciseId} لا يحتسب في السعرات");
      }

      completedSets += exercise.completedSets;
    }

    // تحديد حالة التمرين العام
    WorkoutStatus workoutStatus;
    if (completedExercises == progress.totalExercises &&
        progress.totalExercises > 0) {
      workoutStatus = WorkoutStatus.completed;
    } else if (completedExercises > 0 || skippedExercises > 0) {
      workoutStatus = WorkoutStatus.inProgress;
    } else {
      workoutStatus = WorkoutStatus.notStarted;
    }

    return progress.copyWith(
      status: workoutStatus,
      completedExercises: completedExercises,
      skippedExercises: skippedExercises,
      completedSets: completedSets,
      burnedCalories: burnedCalories,
      completedTimeMinutes: completedTimeMinutes,
      lastUpdated: DateTime.now(),
    );
  }

  /// بدء مجموعة جديدة
  Future<void> startSet({
    required int workoutDayId,
    required int exerciseId,
    required int setNumber,
  }) async {
    try {
      print("=== بدء مجموعة جديدة ===");
      print(
          "workoutDayId: $workoutDayId, exerciseId: $exerciseId, setNumber: $setNumber");

      final progress = getTodayWorkoutProgress(workoutDayId);

      if (progress == null) {
        print("لا يوجد تقدم للتمرين اليوم");
        return;
      }

      final exerciseIndex = progress.exercisesProgress
          .indexWhere((ex) => ex.exerciseId == exerciseId);

      if (exerciseIndex == -1) {
        print("لم يتم العثور على التمرين");
        return;
      }

      final exercise = progress.exercisesProgress[exerciseIndex];

      // إنشاء تقدم جديد للمجموعة
      final newSetProgress = SetProgress(
        setNumber: setNumber,
        status: SetStatus.inProgress,
        startedAt: DateTime.now(),
        completedAt: null,
        workoutTimeSeconds: 0,
        restTimeSeconds: 0,
      );

      // إضافة المجموعة الجديدة إلى قائمة المجموعات
      final newSetsProgress = List<SetProgress>.from(exercise.setsProgress);

      // البحث عن المجموعة في القائمة
      final existingSetIndex =
          newSetsProgress.indexWhere((set) => set.setNumber == setNumber);

      if (existingSetIndex != -1) {
        // تحديث المجموعة الموجودة
        newSetsProgress[existingSetIndex] = newSetProgress;
      } else {
        // إضافة مجموعة جديدة
        newSetsProgress.add(newSetProgress);
      }

      // تحديث التمرين
      final updatedExercise = exercise.copyWith(
        setsProgress: newSetsProgress,
        currentSet: setNumber,
        status: ExerciseStatus.inProgress,
        startedAt: exercise.startedAt ?? DateTime.now(),
      );

      // تحديث قائمة التمارين
      final newExercisesProgress =
          List<ExerciseProgress>.from(progress.exercisesProgress);
      newExercisesProgress[exerciseIndex] = updatedExercise;

      // حفظ التحديثات
      final updatedProgress =
          progress.copyWith(exercisesProgress: newExercisesProgress);
      await saveWorkoutProgress(updatedProgress);

      print("تم بدء المجموعة $setNumber بنجاح");
    } catch (e) {
      print("خطأ في بدء المجموعة: $e");
      throw Exception("فشل في بدء المجموعة");
    }
  }

  /// إكمال مجموعة
  Future<void> completeSet({
    required int workoutDayId,
    required int exerciseId,
    required int setNumber,
    required int workoutTimeSeconds,
    required int restTimeSeconds,
  }) async {
    try {
      print("=== إكمال مجموعة ===");
      print(
          "workoutDayId: $workoutDayId, exerciseId: $exerciseId, setNumber: $setNumber");
      print(
          "workoutTime: ${workoutTimeSeconds}s, restTime: ${restTimeSeconds}s");

      final progress = getTodayWorkoutProgress(workoutDayId);

      if (progress == null) {
        print("لا يوجد تقدم للتمرين اليوم");
        return;
      }

      final exerciseIndex = progress.exercisesProgress
          .indexWhere((ex) => ex.exerciseId == exerciseId);

      if (exerciseIndex == -1) {
        print("لم يتم العثور على التمرين");
        return;
      }

      final exercise = progress.exercisesProgress[exerciseIndex];

      // تحديث المجموعة المكتملة
      final newSetsProgress = List<SetProgress>.from(exercise.setsProgress);
      final setIndex =
          newSetsProgress.indexWhere((set) => set.setNumber == setNumber);

      if (setIndex != -1) {
        final existingSet = newSetsProgress[setIndex];
        newSetsProgress[setIndex] = existingSet.copyWith(
          status: SetStatus.completed,
          completedAt: DateTime.now(),
          workoutTimeSeconds:
              existingSet.workoutTimeSeconds + workoutTimeSeconds,
          restTimeSeconds: existingSet.restTimeSeconds + restTimeSeconds,
        );
      } else {
        // إضافة مجموعة جديدة إذا لم تكن موجودة
        final newSet = SetProgress(
          setNumber: setNumber,
          status: SetStatus.completed,
          startedAt: DateTime.now().subtract(
              Duration(seconds: workoutTimeSeconds + restTimeSeconds)),
          completedAt: DateTime.now(),
          workoutTimeSeconds: workoutTimeSeconds,
          restTimeSeconds: restTimeSeconds,
        );
        newSetsProgress.add(newSet);
      }

      // حساب المجموعات المكتملة والمتخطاة
      int completedSets = 0;
      int totalWorkoutTime = 0;
      int totalRestTime = 0;

      for (final set in newSetsProgress) {
        if (set.status == SetStatus.completed) {
          completedSets++;
          totalWorkoutTime += set.workoutTimeSeconds;
          totalRestTime += set.restTimeSeconds;
        }
      }

      // تحديث التمرين
      final updatedExercise = exercise.copyWith(
        setsProgress: newSetsProgress,
        completedSets: completedSets,
        totalWorkoutTimeSeconds: totalWorkoutTime,
        totalRestTimeSeconds: totalRestTime,
        // تحديث المجموعة الحالية للمجموعة التالية
        currentSet: completedSets >= exercise.totalSets
            ? exercise.totalSets + 1 // إذا اكتمل التمرين
            : setNumber + 1, // المجموعة التالية
        // إذا كانت هذه آخر مجموعة، اكمل التمرين
        status: completedSets >= exercise.totalSets
            ? ExerciseStatus.completed
            : ExerciseStatus.inProgress,
        completedAt: completedSets >= exercise.totalSets
            ? DateTime.now()
            : exercise.completedAt,
      );

      // تحديث قائمة التمارين
      final newExercisesProgress =
          List<ExerciseProgress>.from(progress.exercisesProgress);
      newExercisesProgress[exerciseIndex] = updatedExercise;

      // تحديث الإحصائيات العامة
      final updatedProgress = _updateWorkoutStatistics(
        progress.copyWith(exercisesProgress: newExercisesProgress),
      );

      // حفظ التحديثات
      await saveWorkoutProgress(updatedProgress);

      print("تم إكمال المجموعة $setNumber بنجاح");
      print("المجموعات المكتملة: $completedSets/${exercise.totalSets}");
      print("المجموعة الحالية الجديدة: ${updatedExercise.currentSet}");
    } catch (e) {
      print("خطأ في إكمال المجموعة: $e");
      throw Exception("فشل في إكمال المجموعة");
    }
  }

  /// الحصول على المجموعة الحالية للتمرين
  int getCurrentSet(int workoutDayId, int exerciseId) {
    final progress = getTodayWorkoutProgress(workoutDayId);
    if (progress == null) return 1;

    final exerciseIndex = progress.exercisesProgress
        .indexWhere((ex) => ex.exerciseId == exerciseId);

    if (exerciseIndex == -1) return 1;

    final exercise = progress.exercisesProgress[exerciseIndex];
    return exercise.currentSet;
  }

  /// الحصول على حالة المجموعة
  SetStatus? getSetStatus(int workoutDayId, int exerciseId, int setNumber) {
    final progress = getTodayWorkoutProgress(workoutDayId);
    if (progress == null) return null;

    final exerciseIndex = progress.exercisesProgress
        .indexWhere((ex) => ex.exerciseId == exerciseId);

    if (exerciseIndex == -1) return null;

    final exercise = progress.exercisesProgress[exerciseIndex];
    final setIndex =
        exercise.setsProgress.indexWhere((set) => set.setNumber == setNumber);

    if (setIndex == -1) return SetStatus.notStarted;

    return exercise.setsProgress[setIndex].status;
  }

  /// تنظيف البيانات القديمة (أكثر من يوم)
  List<WorkoutProgress> _cleanOldData(List<WorkoutProgress> data) {
    final now = DateTime.now();
    final today = now.toIso8601String().split('T')[0];

    return data.where((item) {
      // الاحتفاظ ببيانات اليوم الحالي فقط
      return item.date == today;
    }).toList();
  }

  /// مسح جميع بيانات تقدم التمارين (عند تسجيل الخروج أو حذف الحساب)
  Future<void> clearAllWorkoutProgress() async {
    try {
      final prefs = di<SharedPreferences>();

      // التحقق من البيانات الموجودة قبل المسح
      final existingData = prefs.getString(_workoutProgressKey);
      print("=== مسح بيانات التمارين ===");
      print(
          "البيانات الموجودة قبل المسح: ${existingData != null ? 'موجودة' : 'غير موجودة'}");

      await prefs.remove(_workoutProgressKey);

      // التحقق من البيانات بعد المسح
      final dataAfterClear = prefs.getString(_workoutProgressKey);
      print(
          "البيانات الموجودة بعد المسح: ${dataAfterClear != null ? 'موجودة' : 'غير موجودة'}");
      print("تم مسح جميع بيانات تقدم التمارين بنجاح");
    } catch (e) {
      print("خطأ في مسح بيانات تقدم التمارين: $e");
    }
  }

  /// مسح بيانات اليوم الحالي (عند منتصف الليل)
  Future<void> clearTodayWorkoutProgress() async {
    try {
      final allData = getAllWorkoutProgress();
      final today = DateTime.now().toIso8601String().split('T')[0];

      // الاحتفاظ ببيانات الأيام الأخرى فقط
      final filteredData = allData.where((item) => item.date != today).toList();

      final prefs = di<SharedPreferences>();
      final jsonData = filteredData.map((item) => item.toJson()).toList();
      await prefs.setString(_workoutProgressKey, jsonEncode(jsonData));

      print("تم مسح بيانات تقدم التمارين لليوم الحالي");
    } catch (e) {
      print("خطأ في مسح بيانات اليوم: $e");
    }
  }

  /// التحقق من وجود تقدم للتمرين اليوم
  bool hasWorkoutProgressToday(int workoutDayId) {
    return getTodayWorkoutProgress(workoutDayId) != null;
  }

  /// الحصول على حالة التمرين اليوم
  WorkoutStatus? getTodayWorkoutStatus(int workoutDayId) {
    final progress = getTodayWorkoutProgress(workoutDayId);
    return progress?.status;
  }

  /// الحصول على حالة تمرين واحد اليوم
  ExerciseStatus? getTodayExerciseStatus(int workoutDayId, int exerciseId) {
    final progress = getTodayWorkoutProgress(workoutDayId);
    if (progress == null) return null;

    try {
      final exercise = progress.exercisesProgress
          .firstWhere((ex) => ex.exerciseId == exerciseId);
      return exercise.status;
    } catch (e) {
      return null;
    }
  }
}
