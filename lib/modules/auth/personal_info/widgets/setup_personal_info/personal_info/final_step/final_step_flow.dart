import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/modules/auth/personal_info/widgets/setup_personal_info/personal_info/final_step/final_step_target_weight.dart';
import 'package:urfit/modules/auth/personal_info/widgets/setup_personal_info/personal_info/final_step/final_step_weekly_exercise_times.dart';

import '../../../../controller/cubit/setup_personal_info_cubit.dart';
import 'final_step_body_parts.dart';
import 'final_step_meals_variety.dart';
import 'final_step_not_preferred_meals.dart';
import 'final_step_num_of_daily_meals.dart';
import 'final_step_preferred_meals.dart';
import 'final_step_work_types.dart';

class FinalStepFlow extends StatelessWidget {
  const FinalStepFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: context.read<SetupPersonalInfoCubit>().finalStepController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        FinalStepTargetWeight(),
        FinalStepPreferredMeals(),
        FinalStepNotPreferredMeals(),
        FinalStepNumOfDailyMeals(),
        FinalStepMealsVariety(),
        FinalStepBodyParts(),
        FinalStepWeeklyExerciseTimes(),
        FinalStepWorkTypes(),
      ],
    );
  }
}

