import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/core/presentation/views/widgets/package_progress_meals.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meals_listview.dart';
import 'package:urfit/modules/meals_module/widgets/shimmer/what_ur_body_needs_shimmer.dart';
import 'package:urfit/modules/meals_module/widgets/what_ur_body_need_section.dart';

import '../../../core/presentation/utils/enums.dart';

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
      cubit.generateMealPlan();
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<MealsCubit>();

    return BlocBuilder<MealsCubit, MealsState>(
      builder: (context, state) {
        return Scaffold(
          body: user?.haveMealPlan != true &&
                  state.getMealPlansState != RequestState.loading &&
                  state.allPlans.isEmpty
              ? Center(child: Text(L10n.tr().noSubscription))
              : RefreshIndicator(
                  onRefresh: () async {
                    cubit.getMealPlans();
                  },
                  child: ListView(
                    padding: const EdgeInsets.only(
                      bottom: AppConst.kBottomPadding,
                      left: AppConst.kHorizontalPadding,
                      right: AppConst.kHorizontalPadding,
                    ),
                    children: [
                      // plan remaining time
                      const PackageProgressMeals(),

                      const SizedBox(height: 16),

                      // dates
                      const WeakDaysDate(),

                      const SizedBox(height: 16),

                      // what ur body needs today card
                      BlocBuilder<MealsCubit, MealsState>(
                        buildWhen: (p, c) =>
                            p.allPlans != c.allPlans ||
                            p.getMealPlansState != c.getMealPlansState,
                        builder: (context, state) {
                          if (state.getMealPlansState == RequestState.loading ||
                              state.getMealPlansState == RequestState.failure) {
                            return const WhatUrBodyNeedsShimmer();
                          } else {
                            // تم حذف المتغير غير المستخدم
                            return const WhatUrBodyNeedSection();
                          }
                        },
                      ),

                      const SizedBox(height: 16),

                      // meals list
                      BlocBuilder<MealsCubit, MealsState>(
                        buildWhen: (p, c) =>
                            p.allPlans != c.allPlans ||
                            p.getMealPlansState != c.getMealPlansState,
                        builder: (context, state) {
                          if (state.getMealPlansState == RequestState.failure) {
                            return FailureWidget(
                              message: state.errMessage,
                              onRetry: () => cubit.getMealPlans(),
                            );
                          }

                          return Skeletonizer(
                              enabled: state.getMealPlansState ==
                                  RequestState.loading,
                              child: const MealsListview());
                        },
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
