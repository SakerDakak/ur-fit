import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/widgets/setup_personal_info/goals_item.dart';

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

    return ListView(
      children: [
        // title
        Text(
          L10n.tr().whatIsyourGoals,
          style: TStyle.bold_16.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(height: 8),

        BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
          buildWhen: (p, c) => c is GoalsStates,
          builder: (context, state) {
            if (state is! GoalsStates) return const SizedBox.shrink();

            if (state is GoalsError) {
              return FailureWidget(
                  message: state.error,
                  onRetry: () {
                    cubit.getGoals();
                  });
            }
            final goals = state is GoalsLoading ? Fakers().goals : state.goals;
            return Skeletonizer(
              enabled: state is GoalsLoading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Text(
                    L10n.tr().sectionOne,
                    style: TStyle.semiBold_16,
                  ),
                  ...List.generate(
                    2,
                    (index) => GoalItem(
                      onTap: () => cubit.toggleGoal(goals[index].id),
                      goal: goals[index],
                      isSelected: state.userInfo.selectedGaols.contains(goals[index].id),
                    ),
                  ),
                  const SizedBox.shrink(),

                  ///
                  Text(
                    L10n.tr().sectionTwo,
                    style: TStyle.semiBold_16,
                  ),
                  ...List.generate(
                    2,
                    (index) => GoalItem(
                      onTap: () => cubit.toggleGoal(goals[index + 2].id),
                      goal: goals[index + 2],
                      isSelected: state.userInfo.selectedGaols.contains(goals[index + 2].id),
                    ),
                  ),

                  CustomElevatedButton(
                    text: L10n.tr().continuee,
                    padding: EdgeInsets.zero,
                    onPressed: state.userInfo.selectedGaols.isEmpty ? null : () {
                      print('Selected Goals: ${state.userInfo.selectedGaols}');
                      cubit.sendUpdateData();
                      cubit.nextPage();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
