import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/appCubit/app_cubit.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meals_listview.dart';
import 'package:urfit/modules/meals_module/widgets/what_ur_body_need_section.dart';
import 'package:urfit/core/shared/widgets/package_progress_exercise.dart';
import 'package:urfit/core/shared/widgets/weak_days_date.dart';

import '../../../core/shared/widgets/package_progress_meals.dart';
import '../../../core/utils/enums.dart';
import '../../../core/utils/service_locator.dart';
import '../../../generated/locale_keys.g.dart';
import '../widgets/shimmer/meals_list_shimmer.dart';
import '../widgets/shimmer/what_ur_body_needs_shimmer.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = sl<AuthenticationBloc>().currentUser;
    final cubit = context.read<MealsCubit>();

    if (user?.haveMealPlan == true  ) {
      cubit.getMealPlans();
    }else if(user?.haveMealPlan == false && (user?.packageId == 3 || user?.packageId == 6 || user?.packageId == 9  || user?.packageId == 1 || user?.packageId == 4 || user?.packageId == 7 || user?.packageId == 10 )){
      cubit.generateMealPlan();

    }
    return Scaffold(
      body: user?.haveMealPlan == true ? ListView(
        padding: const EdgeInsets.only(
          bottom: kBottomPadding,
          left: kHorizontalPadding,
          right: kHorizontalPadding,
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
            buildWhen: (p, c) =>
            p.allPlans != c.allPlans ||
                p.getMealPlansState != c.getMealPlansState,
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
            buildWhen: (p, c) =>
            p.allPlans != c.allPlans ||
                p.getMealPlansState != c.getMealPlansState,
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
      ) :  Center(
          child: Text(LocaleKeys.noSubscription.tr())),
    );
  }
}
