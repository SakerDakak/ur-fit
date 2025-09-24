import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/current_weight_card.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/discount_section.dart';
import 'package:urfit/modules/home_module/widgets/home_widgets/statistics_widgets/statistics_section.dart';

import '../../../core/presentation/style/colors.dart';
import '../widgets/home_widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  final bool isGuest;
  const HomeScreen({super.key, required this.isGuest});

  @override
  Widget build(BuildContext context) {
    context.read<HealthCubit>().initializeHealth();
    final user = Session().currentUser;
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              // app bar
              HomeHeader(
                isGuest: isGuest,
              ),

              // body
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    // تحديث بيانات المستخدم
                    await Session().getUserDataFromServer();

                    // تحديث بيانات الصحة
                    context.read<HealthCubit>().initializeHealth();
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
                      if (!isGuest &&
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
