
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/goal_section.dart';
import 'package:urfit/modules/personal_info/controller/cubit/setup_personal_info_cubit.dart';


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
              L10n.tr().whatIsyourGoals,
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 8),

            // goals section one
            Text(
             L10n.tr().sectionOne,
              style: CustomTextStyle.semiBold_16,
            ),
            const SizedBox(height: 16),

            // section one goals
            GoalSection(state : state, cubit : cubit,goals: state.goals.take(2).toList()),

            const SizedBox(height: 16),

            // goals section two
            Text(
              L10n.tr().sectionTwo,
              style: CustomTextStyle.semiBold_16,
            ),

            const SizedBox(height: 16),

            // section two goals
            GoalSection(state : state, cubit : cubit,goals: state.goals.skip(2).toList()),

            const SizedBox(height: 20),

            // continue button
            CustomElevatedButton(
              text: L10n.tr().continuee,
              padding: EdgeInsets.zero,
              onPressed:canProssed ? () => cubit.goToNextInfoStep() : null,
            ),
          ],
        );
      },
    );
  }


}
