import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/shared/widgets/goal_section.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/enums.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/goals_item.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/shimmer_widgets/goals_shimmer.dart';

import '../../../../../../generated/locale_keys.g.dart';

class SetupInfoStepTwo extends StatefulWidget {
  const SetupInfoStepTwo({super.key});

  @override
  State<SetupInfoStepTwo> createState() => _SetupInfoStepTwoState();
}

class _SetupInfoStepTwoState extends State<SetupInfoStepTwo> {
  @override
  void initState() {
    context.read<SetupPersonalInfoCubit>().getGoals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) =>
          (p.userInfo.selectedGaols != c.userInfo.selectedGaols) ||
          (p.getGoalsState != c.getGoalsState),
      builder: (context, state) {
        bool canProssed = state.userInfo.selectedGaols.isNotEmpty;
        return ListView(
          children: [
            // title
            Text(
              LocaleKeys.whatIsyourGoals.tr(),
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 8),

            // goals section one
            Text(
             LocaleKeys.sectionOne.tr(),
              style: CustomTextStyle.semiBold_16,
            ),
            const SizedBox(height: 16),

            // section one goals
            GoalSection(state : state, cubit : cubit,goals: state.goals.take(2).toList()),

            const SizedBox(height: 16),

            // goals section two
            Text(
              LocaleKeys.sectionTwo.tr(),
              style: CustomTextStyle.semiBold_16,
            ),

            const SizedBox(height: 16),

            // section two goals
            GoalSection(state : state, cubit : cubit,goals: state.goals.skip(2).toList()),

            const SizedBox(height: 20),

            // continue button
            CustomElevatedButton(
              text: LocaleKeys.continuee.tr(),
              padding: EdgeInsets.zero,
              onPressed:canProssed ? () => cubit.goToNextInfoStep() : null,
            ),
          ],
        );
      },
    );
  }


}
