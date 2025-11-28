import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/package_progress_exercise.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/core/presentation/views/widgets/no_subscription_widget.dart';
import 'package:urfit/core/presentation/views/widgets/login_required_widget.dart';
import 'package:urfit/core/presentation/views/widgets/package_not_support_exercise_widget.dart';
import 'package:urfit/core/presentation/views/widgets/no_workout_today_widget.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/widgets/shimmer/start_workout_card_shimmer.dart';
import 'package:urfit/modules/workout_module/widgets/shimmer/workout_detail_card_shimmer.dart';
import 'package:urfit/modules/workout_module/workout_widgets/start_workout_card.dart';
import 'package:urfit/modules/workout_module/workout_widgets/today_workout_details_card.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/di.dart';

import '../../core/presentation/utils/enums.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen>
    with WidgetsBindingObserver {
  bool _isInitialized = false;
  bool? _isExerciseSupported;

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
      _isExerciseSupported = null;
    });

    try {
      // تحديث بيانات المستخدم من الخادم
      await Session().getUserDataFromServer();

      if (mounted) {
        final user = Session().currentUser;
        final cubit = context.read<WorkoutCubit>();

        // إذا كان المستخدم مسجل دخول ولديه اشتراك صالح
        if (user != null && user.hasValidSubscription == true) {
          // التحقق من دعم الباقة للتمارين
          _isExerciseSupported =
              await _isExercisePackageSupported(user.packageId);

          // إذا كان لديه خطة تمارين، ابدأ تحميلها (بدون انتظار ليعرض skeleton)
          if (user.haveExercisePlan == true) {
            cubit.getWorkOutPlan(); // بدون await ليعرض skeleton
          } else if (_isExerciseSupported == true) {
            // إذا لم يكن لديه خطة تمارين والباقة تدعم التمارين، قم بإنشاء خطة جديدة
            await cubit.generateWorkOutPlan();
            // تحديث بيانات المستخدم بعد إنشاء الخطة
            await Session().getUserDataFromServer();
            // تحميل خطة التمارين الجديدة
            await cubit.getWorkOutPlan();
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

  /// التحقق من دعم الباقة للتمارين
  Future<bool> _isExercisePackageSupported(int? packageId) async {
    if (packageId == null) return false;

    final package = await _getPackageDetails(packageId);
    if (package == null) return false;

    // التحقق من نوع الباقة
    return package.type == PlanType.exercise || package.type == PlanType.both;
  }

  /// تحديث البيانات (للـ RefreshIndicator)
  Future<void> _refreshData() async {
    await _initializeScreen();
  }

  /// يتم استدعاؤها عند العودة من شاشة الاشتراك
  Future<void> _onSubscribeReturn() async {
    // إعادة تهيئة الشاشة والتحقق من الاشتراك
    await _initializeScreen();
  }

  /// بناء محتوى الـ skeleton loading
  Widget _buildSkeletonContent(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView(
          padding: const EdgeInsets.only(
            bottom: AppConst.kBottomPadding,
            left: AppConst.kHorizontalPadding,
            right: AppConst.kHorizontalPadding,
          ),
          children: [
            // وقت انتهاء الباقة
            const PackageProgressExercise(showSkeleton: true),

            const SizedBox(height: 16),

            // التواريخ
            const WeakDaysDate(),

            const SizedBox(height: 16),

            // تفاصيل التمرين - skeleton
            const WorkoutDetailCardShimmer(),

            const SizedBox(height: 16),

            // بطاقة بدء التمرين - skeleton
            const StartWorkoutCardShimmer(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final cubit = context.read<WorkoutCubit>();

    return BlocListener<AppCubit, AppState>(
      listener: (context, appState) {
        // عند تغيير اللغة، إعادة تحميل البيانات
        if (user?.haveExercisePlan == true &&
            user?.hasValidSubscription == true) {
          cubit.getWorkOutPlan();
        }
      },
      child: RefreshIndicator(
        onRefresh: _refreshData,
        child: BlocBuilder<WorkoutCubit, WorkoutState>(
          buildWhen: (previous, current) {
            return previous.getWorkOutPlanState !=
                    current.getWorkOutPlanState ||
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
                  onRefresh: _refreshData,
                ),
              );
            }

            // الحالة 2: المستخدم مسجل دخول ولكن ليس لديه اشتراك صالح
            if (user.hasValidSubscription != true) {
              return Scaffold(
                body: NoSubscriptionWidget(
                  message: L10n.tr().noSubscription,
                  planType: PlanType.exercise,
                  onRefresh: _refreshData,
                  onSubscribeReturn: _onSubscribeReturn,
                ),
              );
            }

            // الحالة 3: المستخدم لديه اشتراك صالح ولكن الباقة لا تدعم التمارين
            if (user.hasValidSubscription == true &&
                _isExerciseSupported == false) {
              return Scaffold(
                body: PackageNotSupportExerciseWidget(
                  message: L10n.tr().packageDoesNotSupportExercise,
                  onRefresh: _refreshData,
                ),
              );
            }

            // الحالة 4: المستخدم لديه اشتراك صالح والباقة تدعم التمارين
            if (user.hasValidSubscription == true &&
                _isExerciseSupported == true) {
              // إذا كان لديه خطة تمارين، اعرض المحتوى (مع skeleton إذا كان في حالة تحميل)
              if (user.haveExercisePlan == true) {
                // إذا كان في حالة تحميل البيانات، اعرض skeleton loading
                if (state.getWorkOutPlanState == RequestState.loading) {
                  return _buildSkeletonContent(context);
                }
                // إذا تم تحميل البيانات بنجاح أو لم تكن هناك محاولة تحميل بعد
                return _buildWorkoutContent(context, state, cubit);
              }

              // إذا لم يكن لديه خطة تمارين ولكن الباقة تدعم التمارين
              if (user.haveExercisePlan != true) {
                // إذا كان في حالة تحميل (إنشاء خطة جديدة)، اعرض skeleton
                if (state.getWorkOutPlanState == RequestState.loading) {
                  return _buildSkeletonContent(context);
                }

                // إذا فشل إنشاء الخطة
                if (state.getWorkOutPlanState == RequestState.failure) {
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
                            L10n.tr().failedToCreateWorkoutPlan,
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton.icon(
                            onPressed: () async {
                              await cubit.generateWorkOutPlan();
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
                if (state.getWorkOutPlanState != RequestState.loading &&
                    state.getWorkOutPlanState != RequestState.failure) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    cubit.generateWorkOutPlan();
                  });

                  return _buildSkeletonContent(context);
                }
              }
            }

            // الحالة الافتراضية: عرض رسالة عدم وجود خطة
            return Scaffold(
              body: NoSubscriptionWidget(
                message: L10n.tr().noWorkoutPlan,
                planType: PlanType.exercise,
                onRefresh: _refreshData,
                onSubscribeReturn: _onSubscribeReturn,
              ),
            );
          },
        ),
      ),
    );
  }

  /// بناء محتوى التمارين (عند وجود خطة صالحة)
  Widget _buildWorkoutContent(
      BuildContext context, WorkoutState state, WorkoutCubit cubit) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await cubit.getWorkOutPlan();
        },
        child: ListView(
          padding: const EdgeInsets.only(
            bottom: AppConst.kBottomPadding,
            left: AppConst.kHorizontalPadding,
            right: AppConst.kHorizontalPadding,
          ),
          children: [
            // وقت انتهاء الباقة
            const PackageProgressExercise(),

            const SizedBox(height: 16),

            // التواريخ
            const WeakDaysDate(),

            const SizedBox(height: 16),

            // تفاصيل التمرين
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

            // بطاقة بدء التمرين
            BlocBuilder<WorkoutCubit, WorkoutState>(
              builder: (context, state) {
                if (state.getWorkOutPlanState == RequestState.loading ||
                    state.getWorkOutPlanState == RequestState.failure) {
                  return const StartWorkoutCardShimmer();
                } else {
                  if (cubit.getPlanForToday() == null) {
                    return const NoWorkoutTodayWidget();
                  } else {
                    return const StartWorkoutCard();
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
