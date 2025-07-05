import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
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
    print("user: $user");
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
                child: ListView(
                  padding: const EdgeInsets.only(
                    bottom: AppConst.kBottomPadding,
                    left: AppConst.kHorizontalPadding,
                    right: AppConst.kHorizontalPadding,
                  ),
                  children: [
                    // discount card
                    DiscountSection(),

                    SizedBox(height: 16),

                    // days of current weak
                    WeakDaysDate(),

                    SizedBox(height: 16),

                    // current and target weight card
                    if (!isGuest && user?.currentWeight != null && user?.targetWeight != null)
                      const CurrentWeightCard(),

                    SizedBox(height: 16),

                    // horizontal divider
                    Divider(color: AppColors.strockColor),

                    SizedBox(height: 16),

                    // today tasks
                    // StartTodyTasksSection(),

                    SizedBox(height: 16),

                    // statistics section
                    StatisticsSection(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
