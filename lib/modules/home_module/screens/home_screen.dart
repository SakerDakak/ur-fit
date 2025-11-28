import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/current_weight_card.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/discount_section.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/statistics_section.dart';

import '../../../core/presentation/style/colors.dart';
import '../widgets/home_widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  final bool isGuest;
  const HomeScreen({super.key, required this.isGuest});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // استدعاء initializeHealth مرة واحدة عند بناء الصفحة
    Future.microtask(() {
      context.read<HealthCubit>().initializeHealth();
      
      // تحميل بيانات التمارين إذا كان المستخدم مسجل دخول ولديه اشتراك صالح
      final user = Session().currentUser;
      if (user != null && user.hasValidSubscription == true) {
        context.read<WorkoutCubit>().getWorkOutPlan();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // تحميل بيانات التمارين إذا كان المستخدم مسجل دخول ولديه اشتراك صالح
    final user = Session().currentUser;
    if (user != null && user.hasValidSubscription == true) {
      context.read<WorkoutCubit>().getWorkOutPlan();
    }

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              // app bar
              HomeHeader(
                isGuest: widget.isGuest,
              ),

              // body
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    // تحديث بيانات المستخدم
                    await Session().getUserDataFromServer();

                    // تحديث بيانات الصحة
                    context.read<HealthCubit>().initializeHealth();

                    // تحديث بيانات التمارين إذا كان المستخدم لديه اشتراك صالح
                    if (user?.hasValidSubscription == true) {
                      context.read<WorkoutCubit>().getWorkOutPlan();
                    }
                  },
                  child: ListView(
                    padding: const EdgeInsets.only(
                      bottom: AppConst.kBottomPadding,
                      left: AppConst.kHorizontalPadding,
                      right: AppConst.kHorizontalPadding,
                    ),
                    children: [
                      // discount card
                      const DiscountSection(),

                      const SizedBox(height: 16),

                      // days of current weak
                      const WeakDaysDate(),

                      const SizedBox(height: 16),

                      // current and target weight card
                      if (!widget.isGuest &&
                          user?.currentWeight != null &&
                          user?.targetWeight != null)
                        const CurrentWeightCard(),

                      const SizedBox(height: 16),

                      // horizontal divider
                      const Divider(color: Co.strockColor),

                      // today tasks
                      // const SizedBox(height: 16),
                      // StartTodyTasksSection(),

                      const SizedBox(height: 16),

                      // statistics section
                      const StatisticsSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
