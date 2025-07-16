import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/package_progress_exercise.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/widgets/shimmer/start_workout_card_shimmer.dart';
import 'package:urfit/modules/workout_module/widgets/shimmer/workout_detail_card_shimmer.dart';
import 'package:urfit/modules/workout_module/workout_widgets/start_workout_card.dart';
import 'package:urfit/modules/workout_module/workout_widgets/today_workout_details_card.dart';

import '../../core/presentation/utils/enums.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  void initState() {
    super.initState();
    final user = Session().currentUser;
    final cubit = context.read<WorkoutCubit>();
    if (user?.haveExercisePlan == true && user?.hasValidSubscription == true) {
      cubit.getWorkOutPlan().then((value) {
        ;
        setState(() {});
      });
    } else if (user?.haveExercisePlan == false &&
        user?.hasValidSubscription == true &&
        (user?.packageId == 3 ||
            user?.packageId == 6 ||
            user?.packageId == 9 ||
            user?.packageId == 2 ||
            user?.packageId == 3 ||
            user?.packageId == 5 ||
            user?.packageId == 8)) {
      cubit.generateWorkOutPlan().then((value) {
        ;
        Future.delayed(Duration(milliseconds: 500), () {
          cubit.getWorkOutPlan();
          setState(() {});
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<WorkoutCubit>();

    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        return Scaffold(
          body: user?.haveExercisePlan == true ||
                  state.getWorkOutPlanState == RequestState.loading ||
                  state.allPlans.isNotEmpty
              ? ListView(
                  padding: const EdgeInsets.only(
                    bottom: AppConst.kBottomPadding,
                    left: AppConst.kHorizontalPadding,
                    right: AppConst.kHorizontalPadding,
                  ),
                  children: [
                    // package progress and end date
                    PackageProgressExercise(),

                    const SizedBox(height: 16),

                    // todays date
                    const WeakDaysDate(),

                    const SizedBox(height: 16),

                    // workout details (calories, workout duration ...)
                    BlocBuilder<WorkoutCubit, WorkoutState>(
                      buildWhen: (p, c) => p.allPlans != c.allPlans || p.getWorkOutPlanState != c.getWorkOutPlanState,
                      builder: (context, state) {
                        if (state.getWorkOutPlanState == RequestState.loading ||
                            state.getWorkOutPlanState == RequestState.failure) {
                          return const WorkoutDetailCardShimmer();
                        } else {
                          if (cubit.getPlanForToday() != null) {
                            return const TodayWorkoutDetailsCard();
                          } else {
                            return SizedBox();
                          }
                        }
                      },
                    ),

                    const SizedBox(height: 16),

                    // weight progress bar
                    // if(cubit.getPlanForToday() != null)
                    // const WeightProgressCard(),
                    // if(cubit.getPlanForToday() != null)
                    const SizedBox(height: 16),
                    // if(cubit.getPlanForToday() != null)

                    // today's workout card
                    BlocBuilder<WorkoutCubit, WorkoutState>(
                        // buildWhen: (p, c) =>
                        //     p.allPlans != c.allPlans ||
                        //     p.getWorkOutPlanState != c.getWorkOutPlanState,
                        builder: (context, state) {
                      if (state.getWorkOutPlanState == RequestState.loading ||
                          state.getWorkOutPlanState == RequestState.failure) {
                        return StartWorkoutCardShimmer();
                      } else {
                        if (cubit.getPlanForToday() == null) {
                          return  Center(child: Text(L10n.tr().noWorkoutToday));
                        } else {
                          return StartWorkoutCard();
                        }
                      }
                    }),
                  ],
                )
              : Center(child: Text(L10n.tr().noSubscription)),
        );
      },
    );
  }
}
