
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';
import 'package:urfit/modules/profile_module/widgets/previous_plan_screen_widgets/avaerage_amount_eaten_percentage.dart';
import 'package:urfit/modules/profile_module/widgets/previous_plan_screen_widgets/calories_and_steps.dart';
import 'package:urfit/modules/profile_module/widgets/previous_plan_screen_widgets/plan_duration.dart';
import 'package:urfit/modules/profile_module/widgets/previous_plan_screen_widgets/plan_summary.dart';
import 'package:urfit/modules/profile_module/widgets/previous_plan_screen_widgets/targeted_muscles.dart';

import '../../../core/presentation/utils/enums.dart';

class PreviousPlanScreen extends StatelessWidget {
  const PreviousPlanScreen({super.key});
  static const route = '/myPreviousPlanScreen';

  @override
  Widget build(BuildContext context) {
    context.read<SettingCubit>().getPlanHistory();
    return Scaffold(
      appBar: AppBar(
        title:  Text(L10n.tr().previousPlan),
      ),
      body: BlocBuilder<SettingCubit, SettingState>(
        buildWhen: (p, c) => p.getPlanHistoryState != c.getPlanHistoryState || p.planHistoryModel != c.planHistoryModel,
        builder: (context, state) {
          print("history state : ${state.planHistoryModel}");
          if (state.getPlanHistoryState == RequestState.loading ) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else {
            if(state.getPlanHistoryState == RequestState.failure){
              return const Center(
                child: Text('حدث خطأ ما'),
              );
            }else if(state.getPlanHistoryState  == RequestState.success &&  state.planHistoryModel?.package == null){
              return const Center(
                child: Text('لا يوجد بيانات'),
              );
            }else {
              return ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppConst.kHorizontalPadding),
                children: [
                  // plan duration
                  if(state.planHistoryModel != null)
                   PlanDuration(planHistoryModel: state.planHistoryModel!,),

                  const SizedBox(height: 8),

                  Divider(
                    color: Theme
                        .of(context)
                        .colorScheme
                        .primary,
                    thickness: 2,
                  ),

                  const SizedBox(height: 16),

                  Text(
                    L10n.tr().congratulationsYouHaveDoneAGreatWork,
                    style: CustomTextStyle.bold_14.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.iconsArrowProgress,
                        width: 12,
                        colorFilter:  ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        L10n.tr().summeryOfYourPreviousPlan,
                        style: CustomTextStyle.regular_14,
                      )
                    ],
                  ),

                  const SizedBox(height: 16),

                  // plan summary card (calories, weight, training duration...)
                   PlanSummary(state: state,),

                  const SizedBox(height: 16),

                  // Average amount eaten at meals
                  Text(
                    L10n.tr().averageNutritionGained,
                    style: CustomTextStyle.bold_14,
                  ),

                  const SizedBox(height: 16),

                   AverageAmountEatenPercentage( planHistoryModel: state.planHistoryModel!,),
                  const Divider(
                    color: AppColors.strockColor,
                  ),

                  const SizedBox(height: 16),

                  // The rate of what was done in the exercises
                  Text(
                    L10n.tr().totalExerciseBurned,
                    style: CustomTextStyle.bold_14,
                  ),

                  const SizedBox(height: 16),

                  CaloriesAndSteps(calories: state.planHistoryModel!.expectedResultOfExercisePlans!.calories, sets: state.planHistoryModel!.expectedResultOfExercisePlans!.sets,),

                  const Divider(
                    color: AppColors.strockColor,
                    thickness: 1.5,
                  ),

                  const SizedBox(height: 16),

                  // The rate of what was done in the exercises
                  Text(
                    L10n.tr().averageAchievedInExercise,
                    style: CustomTextStyle.bold_14,
                  ),

                  const SizedBox(height: 16),

                   TargetedMuscles(planHistoryModel: state.planHistoryModel!),

                  const SizedBox(height: 24),

                  // action buttons
                  CustomElevatedButton(
                    text: L10n.tr().renewSubscription,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                  ),

                  const SizedBox(height: 16),

                  // OutlinedButton(
                  //   onPressed: () {},
                  //   style: OutlinedButton.styleFrom(
                  //     side: const BorderSide(color: AppColors.primaryColor),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                  //     ),
                  //   ),
                  //   child: Text(
                  //     'الاطلاع على خطط اخرى',
                  //     style: CustomTextStyle.bold_16.copyWith(
                  //       color: AppColors.primaryColor,
                  //     ),
                  //   ),
                  // ),

                  // const SizedBox(height: 24),
                ],
              );
            }
          }
        },
      ),
    );
  }
}
