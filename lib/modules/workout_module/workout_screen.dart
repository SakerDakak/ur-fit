import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/package_progress_exercise.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/core/presentation/views/widgets/no_subscription_widget.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/widgets/shimmer/start_workout_card_shimmer.dart';
import 'package:urfit/modules/workout_module/widgets/shimmer/workout_detail_card_shimmer.dart';
import 'package:urfit/modules/workout_module/workout_widgets/start_workout_card.dart';
import 'package:urfit/modules/workout_module/workout_widgets/today_workout_details_card.dart';

import '../../core/presentation/utils/enums.dart';
import '../subscription_module/data/models/package_model.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refreshUserDataAndLoadWorkouts();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // تحديث البيانات عند العودة للتطبيق
      _refreshUserDataAndLoadWorkouts();
    }
  }

  void _refreshUserDataAndLoadWorkouts() async {
    // تحديث بيانات المستخدم أولاً
    await Session().getUserDataFromServer();

    if (mounted) {
      final user = Session().currentUser;
      final cubit = context.read<WorkoutCubit>();

      if (user?.haveExercisePlan == true &&
          user?.hasValidSubscription == true) {
        cubit.getWorkOutPlan().then((value) {
          if (mounted) setState(() {});
        });
      } else if (user?.haveExercisePlan == false &&
          user?.hasValidSubscription == true &&
          (user?.packageId == 1 ||
              user?.packageId == 2 ||
              user?.packageId == 3 ||
              user?.packageId == 4 ||
              user?.packageId == 5 ||
              user?.packageId == 6 ||
              user?.packageId == 7 ||
              user?.packageId == 8 ||
              user?.packageId == 9 ||
              user?.packageId == 10)) {
        // إنشاء خطة التمارين وانتظار اكتمال العملية
        await cubit.generateWorkOutPlan();

        // تحديث بيانات المستخدم بعد إنشاء الخطة
        await Session().getUserDataFromServer();

        // تحميل خطة التمارين الجديدة
        await cubit.getWorkOutPlan();

        if (mounted) setState(() {});
      }

      // إعادة بناء الواجهة لتحديث حالة الاشتراك
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<WorkoutCubit>();

    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        // التحقق من حالة الاشتراك
        if (user?.hasValidSubscription != true) {
          return Scaffold(
            body: NoSubscriptionWidget(
              message: L10n.tr().noSubscription,
              planType: PlanType.exercise,
            ),
          );
        }

        // التحقق من وجود خطة تمارين
        if (user?.hasValidSubscription == true &&
            user?.haveExercisePlan != true &&
            state.getWorkOutPlanState != RequestState.loading &&
            state.getWorkOutPlanState != RequestState.success &&
            state.allPlans.isEmpty) {
          return const Scaffold(
            body: NoSubscriptionWidget(
              message: "لا توجد خطة تمارين",
              planType: PlanType.exercise,
            ),
          );
        }

        // إذا كان المستخدم مشترك ولديه خطة تمارين أو تم تحميل الخطط بنجاح، اعرض المحتوى
        if (user?.hasValidSubscription == true &&
            (user?.haveExercisePlan == true ||
                (state.getWorkOutPlanState == RequestState.success &&
                    state.allPlans.isNotEmpty))) {
          return Scaffold(
            body: ListView(
              padding: const EdgeInsets.only(
                bottom: AppConst.kBottomPadding,
                left: AppConst.kHorizontalPadding,
                right: AppConst.kHorizontalPadding,
              ),
              children: [
                // package progress and end date
                const PackageProgressExercise(),

                const SizedBox(height: 16),

                // todays date
                const WeakDaysDate(),

                const SizedBox(height: 16),

                // workout details (calories, workout duration ...)
                BlocBuilder<WorkoutCubit, WorkoutState>(
                  buildWhen: (p, c) =>
                      p.allPlans != c.allPlans ||
                      p.getWorkOutPlanState != c.getWorkOutPlanState,
                  builder: (context, state) {
                    if (state.getWorkOutPlanState == RequestState.loading ||
                        state.getWorkOutPlanState == RequestState.failure) {
                      return const WorkoutDetailCardShimmer();
                    } else {
                      if (cubit.getPlanForToday() != null) {
                        return const TodayWorkoutDetailsCard();
                      } else {
                        return const SizedBox();
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
                    return const StartWorkoutCardShimmer();
                  } else {
                    if (cubit.getPlanForToday() == null) {
                      return Center(child: Text(L10n.tr().noWorkoutToday));
                    } else {
                      return const StartWorkoutCard();
                    }
                  }
                }),
              ],
            ),
          );
        }

        // إذا لم تكن هناك خطة تمارين، اعرض رسالة افتراضية
        return const Scaffold(
          body: NoSubscriptionWidget(
            message: "لا توجد خطة تمارين",
            planType: PlanType.exercise,
          ),
        );
      },
    );
  }
}
