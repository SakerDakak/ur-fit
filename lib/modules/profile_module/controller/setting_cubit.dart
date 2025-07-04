import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/modules/home_module/data/models/meal_plan_model.dart';
import 'package:urfit/modules/profile_module/data/model/static_page_model.dart';

import '../../../core/presentation/utils/enums.dart';
import '../../workout_module/data/model/exercise_history_data.dart';
import '../data/model/plan_history_model.dart';
import '../repo/setting_repo.dart';

part 'setting_cubit.freezed.dart';
part 'setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  final SettingRepo settingRepo;

  SettingCubit(this.settingRepo) : super(const SettingState());

  getPlanHistory() async {

    emit(state.copyWith(getPlanHistoryState: RequestState.loading));
    final result = await settingRepo.getPlanHistory();
    result.fold((l) {
      emit(state.copyWith(
        getPlanHistoryState: RequestState.failure,
        errorMessage: l.toString(),
      ));
    }, (r) {



      emit(state.copyWith(
          getPlanHistoryState: RequestState.success, planHistoryModel: r));
    });
  }

  // getPlanHistoryByDate(String date) async {
  //   emit(state.copyWith(getPlanDataState: RequestState.loading));
  //
  //   try {
  //     final nutrient = await rootScaffoldKey.currentContext!
  //         .read<MealsCubit>()
  //         .getMealPlanByDate(date);
  //     final workOutData = await rootScaffoldKey.currentContext!.read<
  //         WorkoutCubit>().getWorkOutPlanByDate(date);
  //
  //     final totalCalories = nutrient.calories + workOutData.totalCalories;
  //     emit(state.copyWith(
  //       getPlanDataState: RequestState.success,
  //       totalCalories: totalCalories,
  //       nutrition: nutrient,
  //       exerciseHistoryData: workOutData,
  //     ));
  //   }catch (e) {
  //     emit(state.copyWith(
  //       getPlanDataState: RequestState.failure,
  //       errorMessage: e.toString(),
  //     ));
  //   }
  // }

  formattedTime({required int seconds}) {
    final int sec = seconds % 60;
    final int min = (seconds / 60).floor();
    return "${min.toString().padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}";
  }

  getStaticPage(String key) async {
    emit(state.copyWith(getStaticPageState: RequestState.loading));

    final result = await settingRepo.getStaticPage(key: key);
    result.fold((l) {
      emit(state.copyWith(
        getStaticPageState: RequestState.failure,
        errorMessage: l.toString(),
      ));
    }, (r) {


      emit(state.copyWith(
          getStaticPageState: RequestState.success, staticPageModel: r));
    });
  }
}
