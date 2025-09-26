import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gif/gif.dart';
import 'package:intl/intl.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/workout_module/data/model/exercise_history_data.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/data/models/workout_progress_model.dart';
import 'package:urfit/modules/workout_module/data/services/workout_progress_local_service.dart';
import 'package:urfit/modules/workout_module/workout_repo/workout_repo.dart';

import '../../../core/presentation/utils/enums.dart';

part 'workout_cubit.freezed.dart';
part 'workout_state.dart';

class WorkoutCubit extends Cubit<WorkoutState> {
  final WorkoutRepo _repo;
  final WorkoutProgressLocalService _progressService;

  WorkoutCubit(this._repo, this._progressService)
      : super(const WorkoutState()) {
    _initializeProgress();
  }

  /// مسح جميع البيانات المحلية
  Future<void> clearAllData() async {
    try {
      await _progressService.clearAllWorkoutProgress();
      emit(const WorkoutState()); // إعادة تعيين الحالة
    } catch (_) {}
  }

  /// تهيئة التقدم المحفوظ عند بدء التطبيق
  void _initializeProgress() async {
    try {
      final todayPlan = getPlanForToday();
      if (todayPlan != null) {
        final hasProgress = hasWorkoutProgressToday();
        if (hasProgress) {
          // البحث عن آخر تمرين لم يكتمل بعد
          final exercises = todayPlan.exercises;
          int lastProgressIndex = 1; // البدء من التمرين الأول

          for (int i = 0; i < exercises.length; i++) {
            final status = getTodayExerciseStatus(exercises[i].id);
            if (status == ExerciseStatus.completed) {
              // إذا كان التمرين مكتمل، انتقل للتمرين التالي
              lastProgressIndex = i + 2;
            } else if (status == ExerciseStatus.skipped) {
              // إذا كان التمرين متخطى، انتقل للتمرين التالي
              lastProgressIndex = i + 2;
            } else if (status == ExerciseStatus.inProgress) {
              // إذا كان التمرين قيد التقدم، ابق في نفس التمرين
              lastProgressIndex = i + 1;
              break;
            } else {
              // إذا كان التمرين لم يبدأ، ابق في نفس التمرين
              lastProgressIndex = i + 1;
              break;
            }
          }

          // التأكد من عدم تجاوز عدد التمارين
          if (lastProgressIndex > exercises.length) {
            lastProgressIndex = exercises.length;
          }

          emit(state.copyWith(progressValue: lastProgressIndex));
        }
      }
    } catch (_) {}
  }

  generateWorkOutPlan() async {
    emit(state.copyWith(
      getWorkOutPlanState: RequestState.loading,
      errMessage: "", // مسح رسالة الخطأ السابقة
    ));

    final endDate = DateFormat('yyyy-MM-dd')
        .format(DateTime.now().add(const Duration(days: 8)));
    final result = await _repo.generateWorkOutPlan(endDate: endDate);

    result.fold(
      (failure) {
        emit(state.copyWith(
          getWorkOutPlanState: RequestState.failure,
          errMessage: failure.message.isNotEmpty
              ? failure.message
              : L10n.tr().failedToCreateWorkoutPlan,
        ));
      },
      (successData) async {
        emit(state.copyWith(
          getWorkOutPlanState: RequestState.success,
          errMessage: "", // مسح رسالة الخطأ عند النجاح
        ));

        // تحديث بيانات المستخدم بعد إنشاء خطة التمارين بنجاح
        await Session().getUserDataFromServer();

        // انتظار قليل ثم تحميل الخطط الجديدة
        await Future.delayed(const Duration(seconds: 1));
        await getWorkOutPlan();
      },
    );
  }

  getWorkOutPlanByDate(String date) async {
    await getWorkOutPlan();
    final plan =
        state.allPlans.firstWhere((element) => element.startDate == date);

    num totalCaloriesForAllWeek = 0;
    num totalTimeForAllWeek = 0;
    num totalSetsForAllWeek = 0;
    for (var day in plan.planDays) {
      totalCaloriesForAllWeek += day.caloriesBurned * day.exercises.length;
      totalTimeForAllWeek += day.timePerExercise * day.exercises.length;
      totalSetsForAllWeek += day.sets * day.exercises.length;
    }

    return ExerciseHistoryData(
        calories: totalCaloriesForAllWeek,
        times: totalTimeForAllWeek,
        sets: totalSetsForAllWeek);
  }

  getWorkOutPlan() async {
    emit(state.copyWith(getWorkOutPlanState: RequestState.loading));

    final result = await _repo.getWorkoutPlan();

    result.fold(
      (failure) {
        emit(state.copyWith(
          getWorkOutPlanState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        emit(state.copyWith(
          getWorkOutPlanState: RequestState.success,
          allPlans: successData,
        ));
        // تهيئة التقدم بعد تحميل البيانات
        _initializeProgress();
        // Session().currentUser = ;
      },
    );
  }

  WorkoutPlan? getCurrentWorkOutPlan() {
    if (state.allPlans.isNotEmpty) {
      return state.allPlans.firstWhere((plan) {
        final endDate = DateTime.parse(plan.endDate);
        return endDate.isAfter(DateTime.now());
      });
    } else {
      return null;
    }
  }

  selectDay(int day) {
    emit(state.copyWith(selectedDay: day));
  }

  WorkoutDay? getPlanForToday() {
    final plan = getCurrentWorkOutPlan();
    int day = DateTime.now().weekday;
    if (state.selectedDay != 0) {
      day = state.selectedDay;
    }
    print("day : $day");
    if (plan == null) {
      return null;
    }
    switch (day) {
      case 1:
        if (plan.planDays
            .where((element) =>
                element.day == "Monday" || element.day == "الإثنين")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere(
              (element) => element.day == "Monday" || element.day == "الإثنين");
        } else {
          return plan.planDays.first;
        }
      case 2:
        if (plan.planDays
            .where((element) =>
                element.day == "Tuesday" || element.day == "الثلاثاء")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere((element) =>
              element.day == "Tuesday" || element.day == "الثلاثاء");
        } else {
          return plan.planDays.first;
        }
      case 3:
        if (plan.planDays
            .where((element) =>
                element.day == "Wednesday" || element.day == "الأربعاء")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere((element) =>
              element.day == "Wednesday" || element.day == "الأربعاء");
        } else {
          return plan.planDays.first;
        }
      case 4:
        if (plan.planDays
            .where((element) =>
                element.day == "Thursday" || element.day == "الخميس")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere((element) =>
              element.day == "Thursday" || element.day == "الخميس");
        } else {
          return plan.planDays.first;
        }
      case 5:
        if (plan.planDays
            .where(
                (element) => element.day == "Friday" || element.day == "الجمعة")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere(
              (element) => element.day == "Friday" || element.day == "الجمعة");
        } else {
          return plan.planDays.first;
        }
      case 6:
        if (plan.planDays
            .where((element) =>
                element.day == "Saturday" || element.day == "السبت")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere(
              (element) => element.day == "Saturday" || element.day == "السبت");
        } else {
          return plan.planDays.first;
        }
      case 7:
        print(
            "Sunday : ${plan.planDays.where((element) => element.day == "Sunday" || element.day == "الأحد").toList().isNotEmpty}");
        if (plan.planDays
            .where(
                (element) => element.day == "Sunday" || element.day == "الأحد")
            .toList()
            .isNotEmpty) {
          return plan.planDays.firstWhere(
              (element) => element.day == "Sunday" || element.day == "الأحد");
        } else {
          return plan.planDays.first;
        }
    }
    return null;
  }

  formattedTime({required int seconds}) {
    final int sec = seconds % 60;
    final int min = (seconds / 60).floor();
    return "${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  playTraining(GifController controller) {
    emit(state.copyWith(isPlaying: true));
    controller.forward().then((value) {
      if (state.isPlaying != false) {
        return controller.repeat();
      }
    });
  }

  stopTraining(GifController controller) {
    emit(state.copyWith(isPlaying: false));

    controller.stop();
  }

  updateProgress(int value) {
    emit(state.copyWith(progressValue: value));
  }

  initSets() {
    final Map<int, int> sets = {};
    getPlanForToday()?.exercises.forEach((e) {
      return sets.addAll({e.id: getPlanForToday()!.sets});
    });
    emit(state.copyWith(remainingSets: sets));
  }

  updateRemainingSets(int excerciseId) async {
    await calculateExeceise(exercisePlanId: excerciseId);
    final sets = {...state.remainingSets};
    sets[excerciseId] = sets[excerciseId]! - 1;
    emit(state.copyWith(remainingSets: sets));
  }

  doneTraining(int excerciseId) {
    final remainingSets = getPlanForToday()?.sets;
    final sets = {...state.remainingSets};
    sets[excerciseId] = remainingSets!;
    emit(state.copyWith(isPlaying: false, remainingSets: sets));
  }

  calculateExeceise({required int exercisePlanId}) async {
    final sets = 1;
    final calories = getPlanForToday()!.caloriesBurned * sets;
    final times = getPlanForToday()!.timePerExercise * sets;
    final response = await _repo.calculateExercise(
        exercisePlanId: exercisePlanId,
        calories: calories,
        times: times,
        sets: sets);

    response.fold((l) {}, (r) {});
  }

  // ========== وظائف التخزين المحلي الجديدة ==========

  /// بدء التمرين اليوم
  Future<void> startTodayWorkout() async {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      return;
    }

    try {
      await _progressService.updateExerciseProgress(
        workoutDayId: todayPlan.id,
        exerciseId: todayPlan.exercises.first.id,
        status: ExerciseStatus.inProgress,
        workoutDay: todayPlan,
      );
      // إعادة بناء الواجهة
      emit(state.copyWith());
    } catch (_) {}
  }

  /// تخطي تمرين
  Future<void> skipExercise(int exerciseId) async {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      return;
    }

    try {
      // التحقق من الحالة الحالية للتمرين
      final currentStatus = getTodayExerciseStatus(exerciseId);

      ExerciseStatus newStatus;
      if (currentStatus == ExerciseStatus.notStarted || currentStatus == null) {
        // إذا لم يبدأ التمرين بعد، اعتبره بدء ثم تخطي
        newStatus = ExerciseStatus.skipped;
      } else {
        // إذا كان التمرين قيد التقدم، اعتبره متخطى
        newStatus = ExerciseStatus.skipped;
      }

      await _progressService.updateExerciseProgress(
        workoutDayId: todayPlan.id,
        exerciseId: exerciseId,
        status: newStatus,
        skippedSets: todayPlan.sets,
        // إذا كان التمرين متخطى، احفظ وقت الانتهاء أيضاً
        completedAt:
            newStatus == ExerciseStatus.skipped ? DateTime.now() : null,
        workoutDay: todayPlan,
      );

      // الانتقال للتمرين التالي فقط إذا لم نكن في التمرين الأخير
      final currentIndex = state.progressValue;
      final totalExercises = todayPlan.exercises.length;
      if (currentIndex < totalExercises) {
        emit(state.copyWith(progressValue: currentIndex + 1));
      }

      // إعادة بناء الواجهة
      emit(state.copyWith());
    } catch (_) {}
  }

  /// إكمال تمرين
  Future<void> completeExercise(int exerciseId) async {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      return;
    }

    try {
      await _progressService.updateExerciseProgress(
        workoutDayId: todayPlan.id,
        exerciseId: exerciseId,
        status: ExerciseStatus.completed,
        completedSets: todayPlan.sets,
        workoutDay: todayPlan,
      );

      // الانتقال للتمرين التالي فقط إذا لم نكن في التمرين الأخير
      final currentIndex = state.progressValue;
      final totalExercises = todayPlan.exercises.length;
      if (currentIndex < totalExercises) {
        emit(state.copyWith(progressValue: currentIndex + 1));
      }

      // إعادة بناء الواجهة
      emit(state.copyWith());
    } catch (_) {}
  }

  /// إكمال تمرين مع حساب الوقت الفعلي
  Future<void> completeExerciseWithTime(
      int exerciseId, int totalWorkoutTimeSeconds, int totalRestTimeSeconds,
      {int? completedSets}) async {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      return;
    }

    final totalTimeMinutes =
        ((totalWorkoutTimeSeconds + totalRestTimeSeconds) / 60).round();
    final workoutTimeMinutes = (totalWorkoutTimeSeconds / 60).round();

    print("=== إكمال التمرين مع الوقت الفعلي ===");
    print("${L10n.tr().exerciseId}: $exerciseId");
    print(
        "${L10n.tr().totalTime}: ${totalWorkoutTimeSeconds + totalRestTimeSeconds} ${L10n.tr().seconds} ($totalTimeMinutes ${L10n.tr().minute})");
    print(
        "${L10n.tr().workoutTime}: $totalWorkoutTimeSeconds ${L10n.tr().seconds} ($workoutTimeMinutes ${L10n.tr().minute})");
    print("${L10n.tr().restTime}: $totalRestTimeSeconds ${L10n.tr().seconds}");
    print("عدد المجموعات المكتملة: ${completedSets ?? todayPlan.sets}");

    try {
      // استخدام عدد المجموعات المحدد أو إجمالي المجموعات إذا لم يتم تحديده
      final actualCompletedSets = completedSets ?? todayPlan.sets;

      await _progressService.updateExerciseProgress(
        workoutDayId: todayPlan.id,
        exerciseId: exerciseId,
        status: ExerciseStatus.completed,
        completedSets: actualCompletedSets,
        workoutDay: todayPlan,
        totalWorkoutTimeSeconds: totalWorkoutTimeSeconds,
        totalRestTimeSeconds: totalRestTimeSeconds,
      );
      print("تم إكمال التمرين مع الوقت الفعلي بنجاح: $exerciseId");

      // الانتقال للتمرين التالي فقط إذا لم نكن في التمرين الأخير
      final currentIndex = state.progressValue;
      final totalExercises = todayPlan.exercises.length;
      if (currentIndex < totalExercises) {
        emit(state.copyWith(progressValue: currentIndex + 1));
        print("تم الانتقال للتمرين التالي: ${currentIndex + 1}");
      } else {
        print("وصلنا للتمرين الأخير، لا ننتقل للتمرين التالي");
      }

      // إعادة بناء الواجهة
      emit(state.copyWith());
    } catch (e) {
      print("خطأ في إكمال التمرين مع الوقت الفعلي: $e");
    }
  }

  /// بدء مجموعة جديدة
  Future<void> startSet(int exerciseId, int setNumber) async {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      print("لا يوجد تمرين لليوم الحالي");
      return;
    }

    print("=== بدء مجموعة جديدة ===");
    print("معرف التمرين: $exerciseId");
    print("رقم المجموعة: $setNumber");

    try {
      await _progressService.startSet(
        workoutDayId: todayPlan.id,
        exerciseId: exerciseId,
        setNumber: setNumber,
      );
      print("تم بدء المجموعة $setNumber للتمرين $exerciseId بنجاح");

      // إعادة بناء الواجهة
      emit(state.copyWith());
    } catch (e) {
      print("خطأ في بدء المجموعة: $e");
    }
  }

  /// إكمال مجموعة
  Future<void> completeSet(int exerciseId, int setNumber,
      int workoutTimeSeconds, int restTimeSeconds) async {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      return;
    }

    try {
      await _progressService.completeSet(
        workoutDayId: todayPlan.id,
        exerciseId: exerciseId,
        setNumber: setNumber,
        workoutTimeSeconds: workoutTimeSeconds,
        restTimeSeconds: restTimeSeconds,
      );

      // إعادة بناء الواجهة
      emit(state.copyWith());
    } catch (_) {}
  }

  /// الحصول على المجموعة الحالية للتمرين
  int getCurrentSet(int exerciseId) {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) return 1;

    return _progressService.getCurrentSet(todayPlan.id, exerciseId);
  }

  /// الحصول على حالة المجموعة
  SetStatus? getSetStatus(int exerciseId, int setNumber) {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) return null;

    return _progressService.getSetStatus(todayPlan.id, exerciseId, setNumber);
  }

  /// الحصول على حالة التمرين اليوم
  WorkoutStatus? getTodayWorkoutStatus() {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      return null;
    }

    final status = _progressService.getTodayWorkoutStatus(todayPlan.id);
    print("حالة التمرين اليوم: $status (معرف اليوم: ${todayPlan.id})");
    return status;
  }

  /// الحصول على حالة تمرين واحد اليوم
  ExerciseStatus? getTodayExerciseStatus(int exerciseId) {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      print("لا يوجد تمرين لليوم الحالي - getTodayExerciseStatus");
      return null;
    }

    final status =
        _progressService.getTodayExerciseStatus(todayPlan.id, exerciseId);
    print("حالة التمرين $exerciseId: $status (معرف اليوم: ${todayPlan.id})");
    return status;
  }

  /// التحقق من وجود تقدم للتمرين اليوم
  bool hasWorkoutProgressToday() {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) {
      print("لا يوجد تمرين لليوم الحالي - hasWorkoutProgressToday");
      return false;
    }

    final hasProgress = _progressService.hasWorkoutProgressToday(todayPlan.id);
    print(
        "يوجد تقدم للتمرين اليوم: $hasProgress (معرف اليوم: ${todayPlan.id})");
    return hasProgress;
  }

  /// الحصول على إحصائيات التمرين اليوم
  Map<String, dynamic> getTodayWorkoutStats() {
    final todayPlan = getPlanForToday();
    if (todayPlan == null) return {};

    final progress = _progressService.getTodayWorkoutProgress(todayPlan.id);
    if (progress == null) return {};

    return {
      'totalExercises': progress.totalExercises,
      'completedExercises': progress.completedExercises,
      'skippedExercises': progress.skippedExercises,
      'totalSets': progress.totalSets,
      'completedSets': progress.completedSets,
      'totalCalories': progress.totalCalories,
      'burnedCalories': progress.burnedCalories,
      'totalTimeMinutes': progress.totalTimeMinutes,
      'completedTimeMinutes': progress.completedTimeMinutes,
      'status': progress.status,
    };
  }

  /// الحصول على نص حالة التمرين للعرض
  String getWorkoutStatusText() {
    final status = getTodayWorkoutStatus();
    switch (status) {
      case WorkoutStatus.notStarted:
        return L10n.tr().start;
      case WorkoutStatus.inProgress:
        return L10n.tr().continueWorkout;
      case WorkoutStatus.completed:
        return L10n.tr().completed;
      case null:
        return L10n.tr().start;
    }
  }

  /// الحصول على نص حالة تمرين واحد للعرض
  String getExerciseStatusText(int exerciseId) {
    final status = getTodayExerciseStatus(exerciseId);
    final todayPlan = getPlanForToday();

    if (todayPlan != null) {
      final currentExerciseIndex = state.progressValue - 1;
      final exerciseIndex =
          todayPlan.exercises.indexWhere((e) => e.id == exerciseId);

      // إذا كان التمرين الحالي أو تم الوصول إليه، اعرض "أكمل"
      // لكن فقط إذا كان هناك تقدم فعلي (progressValue > 1)
      if (exerciseIndex <= currentExerciseIndex && state.progressValue > 1) {
        switch (status) {
          case ExerciseStatus.notStarted:
            return L10n.tr().continueWorkout; // إذا وصل للتمرين، اعرض "أكمل"
          case ExerciseStatus.inProgress:
            return L10n.tr().continueWorkout;
          case ExerciseStatus.completed:
            return L10n.tr().completed;
          case ExerciseStatus.skipped:
            return L10n.tr().continueWorkout;
          case null:
            return L10n.tr().continueWorkout; // إذا وصل للتمرين، اعرض "أكمل"
        }
      }
    }

    // إذا لم يتم الوصول للتمرين بعد، اعرض "ابدأ"
    switch (status) {
      case ExerciseStatus.notStarted:
        return L10n.tr().start;
      case ExerciseStatus.inProgress:
        return L10n.tr().continueWorkout;
      case ExerciseStatus.completed:
        return L10n.tr().completed;
      case ExerciseStatus.skipped:
        return L10n.tr().continueWorkout;
      case null:
        return L10n.tr().start;
    }
  }
}
