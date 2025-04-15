import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gif/gif.dart';
import 'package:urfit/modules/workout_module/data/model/exercise_history_data.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/workout_repo/workout_repo.dart';

import '../../../core/utils/enums.dart';
import '../../../core/utils/service_locator.dart';
import '../../auth_module/bloc/authentication_bloc.dart';
import '../../home_module/data/models/meal_plan_model.dart';

part 'workout_state.dart';

part 'workout_cubit.freezed.dart';

class WorkoutCubit extends Cubit<WorkoutState> {
  final BaseWorkoutRepo _repo;

  WorkoutCubit(this._repo) : super(const WorkoutState());

  generateWorkOutPlan({bool? inWorkOutPage}) async {
    final endDate =
        DateFormat('yyyy-MM-dd').format(DateTime.now().add(Duration(days: 8)));
    print("endDate $endDate");
    var result = await _repo.generateWorkOutPlan(endDate: endDate);

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          getWorkOutPlanState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          getWorkOutPlanState: RequestState.success,
          // allMeals: successData,
        ));
        // sl<AuthenticationBloc>().add(UpdateSubscriptionEvent());
        sl<AuthenticationBloc>().add(UpdateSubscriptionEvent());
        if(inWorkOutPage == true) {
          getWorkOutPlan();
        }
        // sl<AuthenticationBloc>().currentUser = ;
      },
    );
  }

  getWorkOutPlanByDate(String date) async {
   await getWorkOutPlan();
    final plan = state.allPlans.firstWhere((element) => element.startDate == date);

   num totalCaloriesForAllWeek = 0;
   num totalTimeForAllWeek = 0;
   num totalSetsForAllWeek = 0;
    for (var day in plan.planDays) {
      totalCaloriesForAllWeek += day.caloriesBurned * day.exercises.length;
      totalTimeForAllWeek += day.timePerExercise * day.exercises.length;
      totalSetsForAllWeek += day.sets * day.exercises.length;
    }

   return ExerciseHistoryData(calories: totalCaloriesForAllWeek, times: totalTimeForAllWeek, sets: totalSetsForAllWeek);

  }
  getWorkOutPlan() async {
    emit(state.copyWith(getWorkOutPlanState: RequestState.loading));

    var result = await _repo.getWorkoutPlan();

    result.fold(
      (failure) {
        print("failure $failure");

        emit(state.copyWith(
          getWorkOutPlanState: RequestState.failure,
          errMessage: failure.message,
        ));
      },
      (successData) {
        print("success $successData");
        emit(state.copyWith(
          getWorkOutPlanState: RequestState.success,
          allPlans: successData,
        ));
        // sl<AuthenticationBloc>().currentUser = ;
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
     print("plan selectedDay : ${state.selectedDay}");
    if(state.selectedDay != 0) {
      day = state.selectedDay;
    }
    print("day : $day");
    if(plan == null) {
      return null;
    }
    switch (day) {
      case 1:
        if (plan!.planDays.where((element) =>
                element.day == "Monday" || element.day == "الإثنين").toList().isNotEmpty) {
          return plan?.planDays.firstWhere(
              (element) => element.day == "Monday" || element.day == "الإثنين");
        } else {
          return plan.planDays.first;
        }
      case 2:
        if (plan!.planDays.where((element) =>
                element.day == "Tuesday" || element.day == "الثلاثاء").toList().isNotEmpty) {
          return plan.planDays.firstWhere((element) =>
              element.day == "Tuesday" || element.day == "الثلاثاء");
        } else {
          return plan.planDays.first;
        }
      case 3:
        if (plan!.planDays.where((element) =>
                element.day == "Wednesday" || element.day == "الأربعاء").toList().isNotEmpty) {
          return plan?.planDays.firstWhere((element) =>
              element.day == "Wednesday" || element.day == "الأربعاء");
        } else {
          return plan.planDays.first;
        }
      case 4:
        if (plan!.planDays.where((element) =>
                element.day == "Thursday" || element.day == "الخميس").toList().isNotEmpty) {
          return plan?.planDays.firstWhere(
              (element) => element.day == "Thursday" || element.day == "الخميس");
        } else {
          return plan.planDays.first;
        }
      case 5:
        if (plan!.planDays.where((element) =>
                element.day == "Friday" || element.day == "الجمعة").toList().isNotEmpty) {
          return plan?.planDays.firstWhere(
              (element) => element.day == "Friday" || element.day == "الجمعة");
        } else {
          return plan.planDays.first;
        }
      case 6:
        if (plan!.planDays.where((element) =>
                element.day == "Saturday" || element.day == "السبت").toList().isNotEmpty) {
          return plan.planDays.firstWhere(
              (element) => element.day == "Saturday" || element.day == "السبت");
        } else {
          return plan.planDays.first;
        }
      case 7:
        print("Sunday : ${plan?.planDays.where((element) =>
        element.day == "Sunday" || element.day == "الأحد").toList().
            isNotEmpty}");
        if (plan!.planDays.where((element) =>
                element.day == "Sunday" || element.day == "الأحد").toList().isNotEmpty) {
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
      if(state.isPlaying != false) {
        print("isPlaying 1 : ${state.isPlaying}");

        return controller.repeat();
      }
    });
    print("isPlaying cubit : ${state.isPlaying}");
  }
  stopTraining(GifController controller) {
    emit(state.copyWith(isPlaying: false));
    print("stopTimer Cubit : ${state.isPlaying}");
    controller.stop();

  }

  updateProgress(int value) {
    emit(state.copyWith(progressValue: value));
  }
  initSets() {
    Map<int,int> sets = {};
    getPlanForToday()?.exercises.forEach((e) {
      return sets.addAll({e.id : getPlanForToday()!.sets});
    });
    emit(state.copyWith(remainingSets: sets));
  }
  updateRemainingSets(int excerciseId ) async {
    await calculateExeceise(exercisePlanId: excerciseId);
    final sets = {...state.remainingSets};
    sets[excerciseId] = sets[excerciseId]! - 1;
    emit(state.copyWith(remainingSets: sets));
  }
  doneTraining(int excerciseId ) {
    final remainingSets = getPlanForToday()?.sets;
    final sets = {...state.remainingSets};
    sets[excerciseId] = remainingSets!;
    emit(state.copyWith(isPlaying: false, remainingSets: sets));
  }

  calculateExeceise({required int exercisePlanId}) async {
    final sets = 1;
    final calories = getPlanForToday()!.caloriesBurned * sets;
    final times = getPlanForToday()!.timePerExercise * sets;
    final response = await _repo.calculateExercise(exercisePlanId: exercisePlanId, calories: calories, times: times, sets: sets);

    response.fold((l) {} , (r) {

    });
  }
}
