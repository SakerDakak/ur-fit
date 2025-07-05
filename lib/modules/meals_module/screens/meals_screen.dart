import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meals_listview.dart';
import 'package:urfit/modules/meals_module/widgets/what_ur_body_need_section.dart';

import '../../../core/presentation/utils/enums.dart';
import '../../../core/presentation/views/widgets/package_progress_meals.dart';
import '../widgets/shimmer/meals_list_shimmer.dart';
import '../widgets/shimmer/what_ur_body_needs_shimmer.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  void initState() {
    super.initState();
    final user = Session().currentUser;

    final cubit = context.read<MealsCubit>();

    if (user?.haveMealPlan == true) {
      cubit.getMealPlans().then((value) {
        // setState(() {});
      });
    } else if (user?.haveMealPlan == false &&
        (user?.packageId == 3 ||
            user?.packageId == 6 ||
            user?.packageId == 9 ||
            user?.packageId == 1 ||
            user?.packageId == 4 ||
            user?.packageId == 7 ||
            user?.packageId == 10)) {
      cubit.generateMealPlan().then((value) {
        Future.delayed(Duration(milliseconds: 500), () {
          cubit.getMealPlans();
          // setState(() {});
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<MealsCubit>();

    return BlocBuilder<MealsCubit, MealsState>(
      builder: (context, state) {
        return Scaffold(
          body:
              user?.haveMealPlan == true || state.getMealPlansState == RequestState.loading || state.allPlans.isNotEmpty
                  ? ListView(
                      padding: const EdgeInsets.only(
                        bottom: AppConst.kBottomPadding,
                        left: AppConst.kHorizontalPadding,
                        right: AppConst.kHorizontalPadding,
                      ),
                      children: [
                        // plan remaining time
                        PackageProgressMeals(),

                        const SizedBox(height: 16),

                        // dates
                        const WeakDaysDate(),

                        const SizedBox(height: 16),

                        // what ur body needs today card
                        BlocBuilder<MealsCubit, MealsState>(
                          buildWhen: (p, c) => p.allPlans != c.allPlans || p.getMealPlansState != c.getMealPlansState,
                          builder: (context, state) {
                            if (state.getMealPlansState == RequestState.loading ||
                                state.getMealPlansState == RequestState.failure) {
                              return const WhatUrBodyNeedsShimmer();
                            } else {
                              final day = cubit.getPlanForToday();

                              return WhatUrBodyNeedSection();
                            }
                          },
                        ),

                        const SizedBox(height: 16),

                        // meals list
                        BlocBuilder<MealsCubit, MealsState>(
                          buildWhen: (p, c) => p.allPlans != c.allPlans || p.getMealPlansState != c.getMealPlansState,
                          builder: (context, state) {
                            if (state.getMealPlansState == RequestState.loading ||
                                state.getMealPlansState == RequestState.failure) {
                              return MealsListShimmer();
                            } else {
                              return BlocBuilder<AppCubit, AppState>(
                                builder: (context, state) {
                                  return MealsListview();
                                },
                              );
                            }
                          },
                        ),
                      ],
                    )
                  : Center(child: Text(L10n.tr().noSubscription)),
        );
      },
    );
  }
}
