import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/equipment_selection_screen.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_age.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_body_parts.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_diet_type.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_gender.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_goals.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_height.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_meals_variety.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_not_preferred_meals.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_preferred_meals.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_target_weight.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_week_days.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_weight.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_work_types.dart';
import 'package:urfit/modules/personal_info/screens/steps_screens/user_info_injuries.dart';

class PresonalInfoLayoutScreen extends StatefulWidget {
  const PresonalInfoLayoutScreen({super.key, required this.isEditingProfile});
  static const routeWzExtra = '/PresonalInfoLayoutScreen';
  final bool isEditingProfile;
  @override
  State<PresonalInfoLayoutScreen> createState() =>
      _PresonalInfoLayoutScreenState();
}

class _PresonalInfoLayoutScreenState extends State<PresonalInfoLayoutScreen> {
  final currentPAge = ValueNotifier(0);
  late final SetupPersonalInfoCubit cubit;
  _listenToPageChanges() {
    // Use floor() instead of round() to avoid issues during page transitions
    final page = cubit.pageController.page;
    if (page != null) {
      final newPage = page.floor();
      print(
          'Page listener - raw page: $page, floored: $newPage, current: ${currentPAge.value}');
      if (newPage != currentPAge.value) {
        currentPAge.value = newPage;
        print('Updated currentPage to: $newPage');
      }
    }
  }

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    cubit.pageController.addListener(_listenToPageChanges);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      cubit.colorScheme = Theme.of(context).colorScheme;
      Future.delayed(Durations.short2, () => cubit.setInitPage());
    });
    super.initState();
  }

  List<Widget> get _personalInfoPages => [
        // القسم الأول: المعلومات الشخصية
        const UserInfoGender(), //0 - ذكر / أنثى
        const UserInfoAge(), //1 - السن
        const UserInfoHeight(), //2 - الطول
        const UserInfoWeight(), //3 - الوزن الحالي
        const UserInfoTargetWeight(), //4 - الوزن الهدف
        const UserInfoGoals(), //5 - ما هي أهدافك

        // القسم الثاني: المعلومات الرياضية
        const UserInfoBodyParts(), //6 - الجزء الذي تريد التركيز عليه
        const UserInfoWeekDays(), //7 - أيام التمرين
        const UserInfoWorkTypesOrLocation(), //8 - مكان التمرين
        UserInfoEquipmentScreen(
            isEditMode: widget.isEditingProfile), //9 - معدات التمرين

        // القسم الثالث: معلومات النظام الغذائي
        const UserInfoVariety(), //10 - مستوى التنوع في الوجبات
        const UserInfoPreferredMeals(), //11 - الوجبات التي تفضلها
        const UserInfoNotPreferredMeals(), //12 - الوجبات التي لا تفضلها
        const UserInfoDietType(), //13 - نوع الحمية الغذائية

        // القسم الرابع: المعلومات الطبية
        const UserInfoInjuries(), //14 - الإصابات أو الأمراض
      ];

  _calculateStep(int index) {
    // القسم الأول: المعلومات الشخصية (0-5)
    if (index <= 5) {
      return 1;
    }
    // القسم الثاني: المعلومات الرياضية (6-9)
    else if (index <= 9) {
      return 2;
    }
    // القسم الثالث: معلومات النظام الغذائي (10-13)
    else if (index <= 13) {
      return 3;
    }
    // القسم الرابع: المعلومات الطبية (14)
    else if (index <= 14) {
      return 4;
    }
    return 0;
  }

  // حساب التقدم الفعلي للخطوات
  double _calculateProgress(int currentIndex) {
    // إجمالي عدد الخطوات = 15 خطوة (من 0 إلى 14)
    return (currentIndex + 1) / 15;
  }

  String _getCurrentStepTxt(int step) {
    switch (step) {
      case 1:
        return L10n.tr().personalInfo; // القسم الأول
      case 2:
        return L10n.tr().sportsInfo; // القسم الثاني
      case 3:
        return L10n.tr().dietInfo; // القسم الثالث
      case 4:
        return L10n.tr().medicalInfo; // القسم الرابع
      default:
        return '';
    }
  }

  @override
  void dispose() {
    cubit.pageController.removeListener(_listenToPageChanges);
    cubit.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: ValueListenableBuilder(
            valueListenable: currentPAge,
            builder: (context, value, child) => AnimatedScale(
              scale: widget.isEditingProfile
                  ? 1
                  : value > 0
                      ? 1
                      : 0,
              duration: Durations.short4,
              child: IconButton(
                onPressed: () {
                  if (widget.isEditingProfile && value == 0) {
                    context.pop();
                  } else {
                    cubit.previousPage();
                  }
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: Text(
            L10n.tr().personalInfo,
            textAlign: TextAlign.center,
            style: TStyle.bold_16,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppConst.kHorizontalPadding),
            child: Column(
              children: [
                ValueListenableBuilder(
                    valueListenable: currentPAge,
                    builder: (context, value, child) {
                      if (value > 14) return const SizedBox.shrink();
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _getCurrentStepTxt(_calculateStep(value)),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TStyle.semiBold_14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // progress bar
                          LinearPercentIndicator(
                            percent: _calculateProgress(value),
                            isRTL:
                                Directionality.of(context) == TextDirection.rtl,
                            barRadius: const Radius.circular(8),
                            lineHeight: 2,
                            backgroundColor: Co.whiteColor,
                            progressColor:
                                Theme.of(context).colorScheme.primary,
                            padding: EdgeInsets.zero,
                            animation: true,
                            animateFromLastPercent: true,
                            animationDuration: 1000,
                          ),
                        ],
                      );
                    }),

                const SizedBox(height: 20),

                // personal info pages
                Expanded(
                  child: PageView(
                      controller: cubit.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: _personalInfoPages),
                ),
              ],
            ),
          ),
        ));
  }
}
