import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/core/presentation/views/widgets/package_progress_meals.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/core/presentation/views/widgets/no_subscription_widget.dart';
import 'package:urfit/core/presentation/views/widgets/login_required_widget.dart';
import 'package:urfit/core/presentation/views/widgets/package_not_support_nutrition_widget.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/widgets/meals_listview.dart';
import 'package:urfit/modules/meals_module/widgets/shimmer/what_ur_body_needs_shimmer.dart';
import 'package:urfit/modules/meals_module/widgets/what_ur_body_need_section.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/di.dart';

import '../../../core/presentation/utils/enums.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> with WidgetsBindingObserver {
  bool _isInitialized = false;
  bool? _isNutritionSupported;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeScreen();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // إعادة تحميل البيانات عند العودة للتطبيق
      _initializeScreen();
    }
  }

  /// تهيئة الشاشة وفحص الحالات المختلفة
  Future<void> _initializeScreen() async {
    if (!mounted) return;

    setState(() {
      _isInitialized = false;
      _isNutritionSupported = null;
    });

    try {
      // تحديث بيانات المستخدم من الخادم
      await Session().getUserDataFromServer();

      if (mounted) {
        final user = Session().currentUser;
        final cubit = context.read<MealsCubit>();

        // إذا كان المستخدم مسجل دخول ولديه اشتراك صالح
        if (user != null && user.hasValidSubscription == true) {
          // التحقق من دعم الباقة للتغذية
          _isNutritionSupported =
              await _isNutritionPackageSupported(user.packageId);

          // إذا كان لديه خطة وجبات، ابدأ تحميلها (بدون انتظار ليعرض skeleton)
          if (user.haveMealPlan == true) {
            cubit.getMealPlans(); // بدون await ليعرض skeleton
          } else if (_isNutritionSupported == true) {
            // إذا لم يكن لديه خطة وجبات والباقة تدعم التغذية، قم بإنشاء خطة جديدة
            await cubit.generateMealPlan();
            // تحديث بيانات المستخدم بعد إنشاء الخطة
            await Session().getUserDataFromServer();
            // تحميل خطة التغذية الجديدة
            await cubit.getMealPlans();
          }
        }
      }
    } catch (e) {
      print('خطأ في تهيئة الشاشة: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    }
  }

  /// جلب تفاصيل الباقة من الخادم
  Future<PackageModel?> _getPackageDetails(int packageId) async {
    try {
      final subscriptionRepo = di<SubscriptionRepo>();
      final result = await subscriptionRepo.getPackages();

      return result.fold(
        (failure) {
          print("خطأ في تحميل تفاصيل الباقة: ${failure.message}");
          return null;
        },
        (packages) {
          final package = packages.where((p) => p.id == packageId).firstOrNull;
          if (package == null) {
            print("لم يتم العثور على الباقة مع المعرف: $packageId");
            print("الباقات المتاحة: ${packages.map((p) => p.id).toList()}");
          }
          return package;
        },
      );
    } catch (e) {
      print("خطأ في تحميل تفاصيل الباقة: $e");
      return null;
    }
  }

  /// التحقق من دعم الباقة للتغذية
  Future<bool> _isNutritionPackageSupported(int? packageId) async {
    if (packageId == null) return false;

    final package = await _getPackageDetails(packageId);
    if (package == null) return false;

    // التحقق من نوع الباقة
    return package.type == PlanType.diet || package.type == PlanType.both;
  }

  /// تحديث البيانات (للـ RefreshIndicator)
  Future<void> _refreshData() async {
    await _initializeScreen();
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<MealsCubit>();

    return BlocListener<AppCubit, AppState>(
      listener: (context, appState) {
        // عند تغيير اللغة، إعادة تحميل البيانات
        if (user?.haveMealPlan == true && user?.hasValidSubscription == true) {
          cubit.getMealPlans();
        }
      },
      child: RefreshIndicator(
        onRefresh: _refreshData,
        child: BlocBuilder<MealsCubit, MealsState>(
          buildWhen: (previous, current) {
            return previous.getMealPlansState != current.getMealPlansState ||
                previous.allPlans != current.allPlans;
          },
          builder: (context, state) {
            // إذا لم يتم التهيئة بعد، اعرض skeleton loading
            if (!_isInitialized) {
              return _buildSkeletonContent(context);
            }

            // الحالة 1: المستخدم غير مسجل دخول
            if (user == null) {
              return Scaffold(
                body: LoginRequiredWidget(
                  message: L10n.tr().loginRequired,
                ),
              );
            }

            // الحالة 2: المستخدم مسجل دخول ولكن ليس لديه اشتراك صالح
            if (user.hasValidSubscription != true) {
              return Scaffold(
                body: NoSubscriptionWidget(
                  message: L10n.tr().noSubscription,
                  planType: PlanType.diet,
                ),
              );
            }

            // الحالة 3: المستخدم لديه اشتراك صالح ولكن الباقة لا تدعم التغذية
            if (user.hasValidSubscription == true &&
                _isNutritionSupported == false) {
              return Scaffold(
                body: PackageNotSupportNutritionWidget(
                  message: L10n.tr().packageDoesNotSupportNutrition,
                ),
              );
            }

            // الحالة 4: المستخدم لديه اشتراك صالح والباقة تدعم التغذية
            if (user.hasValidSubscription == true &&
                _isNutritionSupported == true) {
              // إذا كان لديه خطة وجبات، اعرض المحتوى (مع skeleton إذا كان في حالة تحميل)
              if (user.haveMealPlan == true) {
                // إذا كان في حالة تحميل البيانات، اعرض skeleton loading
                if (state.getMealPlansState == RequestState.loading) {
                  return _buildSkeletonContent(context);
                }
                // إذا تم تحميل البيانات بنجاح أو لم تكن هناك محاولة تحميل بعد
                return _buildMealsContent(context, state, cubit);
              }

              // إذا لم يكن لديه خطة وجبات ولكن الباقة تدعم التغذية
              if (user.haveMealPlan != true) {
                // إذا كان في حالة تحميل (إنشاء خطة جديدة)، اعرض skeleton
                if (state.getMealPlansState == RequestState.loading) {
                  return _buildSkeletonContent(context);
                }

                // إذا فشل إنشاء الخطة
                if (state.getMealPlansState == RequestState.failure) {
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            L10n.tr().failedToCreateMealPlan,
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.errMessage.isNotEmpty
                                ? state.errMessage
                                : L10n.tr().somethingWentWrong,
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton.icon(
                            onPressed: () async {
                              await cubit.generateMealPlan();
                            },
                            icon: const Icon(Icons.refresh),
                            label: Text(L10n.tr().retry),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                // إذا لم تكن هناك محاولة سابقة، ابدأ إنشاء الخطة واعرض skeleton
                if (state.getMealPlansState != RequestState.loading &&
                    state.getMealPlansState != RequestState.failure) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    cubit.generateMealPlan();
                  });

                  return _buildSkeletonContent(context);
                }
              }
            }

            // الحالة الافتراضية: عرض رسالة عدم وجود خطة
            return Scaffold(
              body: NoSubscriptionWidget(
                message: L10n.tr().noMealPlan,
                planType: PlanType.diet,
              ),
            );
          },
        ),
      ),
    );
  }

  /// بناء محتوى الـ skeleton loading
  Widget _buildSkeletonContent(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView(
          padding: const EdgeInsets.only(
            left: AppConst.kHorizontalPadding,
            right: AppConst.kHorizontalPadding,
          ),
          children: [
            // وقت انتهاء الباقة
            const PackageProgressMeals(showSkeleton: true),

            const SizedBox(height: 16),

            // التواريخ
            const WeakDaysDate(),

            const SizedBox(height: 16),

            // ما يحتاجه جسمك اليوم - skeleton
            const WhatUrBodyNeedsShimmer(),

            const SizedBox(height: 16),

            // قائمة الوجبات - skeleton
            const Skeletonizer(
              enabled: true,
              child: MealsListview(),
            ),
          ],
        ),
      ),
    );
  }

  /// بناء محتوى الوجبات (عند وجود خطة صالحة)
  Widget _buildMealsContent(
      BuildContext context, MealsState state, MealsCubit cubit) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await cubit.getMealPlans();
        },
        child: ListView(
          padding: const EdgeInsets.only(
            left: AppConst.kHorizontalPadding,
            right: AppConst.kHorizontalPadding,
          ),
          children: [
            // وقت انتهاء الباقة
            const PackageProgressMeals(),

            const SizedBox(height: 16),

            // التواريخ
            const WeakDaysDate(),

            const SizedBox(height: 16),

            // ما يحتاجه جسمك اليوم
            BlocBuilder<MealsCubit, MealsState>(
              buildWhen: (p, c) =>
                  p.allPlans != c.allPlans ||
                  p.getMealPlansState != c.getMealPlansState,
              builder: (context, state) {
                if (state.getMealPlansState == RequestState.loading ||
                    state.getMealPlansState == RequestState.failure) {
                  return const WhatUrBodyNeedsShimmer();
                } else {
                  return const WhatUrBodyNeedSection();
                }
              },
            ),

            const SizedBox(height: 16),

            // قائمة الوجبات
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
                    enabled: state.getMealPlansState == RequestState.loading,
                    child: const MealsListview());
              },
            ),
          ],
        ),
      ),
    );
  }
}
