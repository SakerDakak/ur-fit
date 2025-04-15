import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/widgets/default_animated_switcher.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/profile_module/widgets/my_plan_screen_widgets/custom_navigation_bar.dart';
import 'package:urfit/modules/profile_module/widgets/my_plan_screen_widgets/equipments_page.dart';
import 'package:urfit/modules/profile_module/widgets/my_plan_screen_widgets/goals_page.dart';
import 'package:urfit/modules/profile_module/widgets/my_plan_screen_widgets/personal_info_page.dart';
import 'package:urfit/modules/profile_module/widgets/my_plan_screen_widgets/your_choices_page.dart';

class MyPlanScreen extends StatelessWidget {
  const MyPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }

        _handleBackNavigation(context, cubit);
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 28),

              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: Row(
                  children: [
                    // back button
                    IconButton(
                      onPressed: () => _handleBackNavigation(context, cubit),
                      icon: const Icon(Icons.arrow_back),
                    ),

                    // page title
                    Expanded(
                      child: Text(
                        'خطتى',
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.bold_16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // current page indicator
              BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
                buildWhen: (p, c) => p.currentPageIndex != c.currentPageIndex,
                builder: (context, state) {
                  return DefaultAnimatedSwitcher(
                    transitionType: DefaultAnimatedSwitcherTransition.size,
                    child: SizedBox(
                      key: ValueKey(
                        cubit.state.currentPageIndex > 2,
                      ),
                      child: cubit.state.currentPageIndex > 2
                          ? const SizedBox.shrink()
                          : _buildTheFirstThreePagesTabsIndicator(cubit,context),
                    ),
                  );
                },
              ),

              // page view
              Expanded(
                child: PageView(
                  controller: cubit.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    PersonalInfoPage(),
                    GoalsPage(),
                    YourChoicesPage(),
                    EquipmentsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildTheFirstThreePagesTabsIndicator(SetupPersonalInfoCubit cubit, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // guide text
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Text(
            'تستطيع الاطلاع وتغير معلوماتك الشخصية واهدافك التى\n تم تحديدها من قبل',
            textAlign: TextAlign.center,
            style: CustomTextStyle.semiBold_12.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),

        const SizedBox(height: 16),

        // navigation bar
        CustomNavigationBar(
          onTap: (index) => cubit.goToPage(index),
          tabs: [
            Text('معلومات شخصية', style: CustomTextStyle.semiBold_14),
            Text('اهدافك', style: CustomTextStyle.semiBold_14),
            Text('اختياراتك', style: CustomTextStyle.semiBold_14),
          ],
        ),

        const SizedBox(height: 16),

        // skip button
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () => cubit.goToNextPage(),
              child: Text(
                'تخطى',
                style: CustomTextStyle.semiBold_14.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleBackNavigation(
    BuildContext context,
    SetupPersonalInfoCubit cubit,
  ) {
    if (cubit.state.currentPageIndex == 0) {
      Navigator.pop(context);
    } else {
      cubit.goToPreviousPage();
    }
  }
}
