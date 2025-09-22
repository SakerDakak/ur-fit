import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/core/presentation/views/widgets/package_progress_meals.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/core/presentation/views/widgets/no_subscription_widget.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meals_listview.dart';
import 'package:urfit/modules/meals_module/widgets/shimmer/what_ur_body_needs_shimmer.dart';
import 'package:urfit/modules/meals_module/widgets/what_ur_body_need_section.dart';

import '../../../core/presentation/utils/enums.dart';
import '../../subscription_module/data/models/package_model.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refreshUserDataAndLoadMeals();
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
      _refreshUserDataAndLoadMeals();
    }
  }

  void _refreshUserDataAndLoadMeals() async {
    // تحديث بيانات المستخدم أولاً
    await Session().getUserDataFromServer();

    if (mounted) {
      final user = Session().currentUser;
      final cubit = context.read<MealsCubit>();

      if (user?.haveMealPlan == true) {
        cubit.getMealPlans().then((value) {
          if (mounted) setState(() {});
        });
      } else if (user?.haveMealPlan == false &&
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
        // إنشاء خطة التغذية وانتظار اكتمال العملية
        await cubit.generateMealPlan();

        // تحديث بيانات المستخدم بعد إنشاء الخطة
        await Session().getUserDataFromServer();

        // تحميل خطة التغذية الجديدة
        await cubit.getMealPlans();

        if (mounted) setState(() {});
      }

      // إعادة بناء الواجهة لتحديث حالة الاشتراك
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<MealsCubit>();

    return BlocBuilder<MealsCubit, MealsState>(
      builder: (context, state) {
        // التحقق من حالة الاشتراك
        if (user?.hasValidSubscription != true) {
          return Scaffold(
            body: NoSubscriptionWidget(
              message: L10n.tr().noSubscription,
              planType: PlanType.diet,
            ),
          );
        }

        // التحقق من وجود خطة وجبات
        if (user?.hasValidSubscription == true &&
            user?.haveMealPlan != true &&
            state.getMealPlansState != RequestState.loading &&
            state.getMealPlansState != RequestState.success &&
            state.allPlans.isEmpty) {
          return const Scaffold(
            body: NoSubscriptionWidget(
              message: "لا توجد خطة وجبات",
              planType: PlanType.diet,
            ),
          );
        }

        // إذا كان المستخدم مشترك ولديه خطة تغذية أو تم تحميل الخطط بنجاح، اعرض المحتوى
        if (user?.hasValidSubscription == true &&
            (user?.haveMealPlan == true ||
                (state.getMealPlansState == RequestState.success &&
                    state.allPlans.isNotEmpty))) {
          return Scaffold(
            body: RefreshIndicator(
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
                          enabled:
                              state.getMealPlansState == RequestState.loading,
                          child: const MealsListview());
                    },
                  ),
                ],
              ),
            ),
          );
        }

        // إذا لم تكن هناك خطة تغذية، اعرض رسالة افتراضية
        return const Scaffold(
          body: NoSubscriptionWidget(
            message: "لا توجد خطة وجبات",
            planType: PlanType.diet,
          ),
        );
      },
    );
  }
}
