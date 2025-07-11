import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/widgets/setup_personal_info/final_step_section_one.dart';
import 'package:urfit/modules/personal_info/screens/widgets/setup_personal_info/final_step_section_two.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';

import '../../../../subscription_module/data/models/package_model.dart';

class SetupInfoFinalStep extends StatelessWidget {
  const SetupInfoFinalStep({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return ListView(
      children: [
        // display only if the user selected any item from the section one or didn't select any item
        if (cubit.state.userInfo.selectedGaols.any(
              (e) => e.sectionOneType != null,
            ) ||
            cubit.state.userInfo.selectedGaols.isEmpty)
          const FinalStepSectionOne(),

        // display only if the user selected any item from the section two or didn't select any item
        if (cubit.state.userInfo.selectedGaols.any(
              (e) => e.sectionTwoType != null,
            ) ||
            cubit.state.userInfo.selectedGaols.isEmpty)
          const FinalStepSectionTwo(),

        // continue button
        BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
          builder: (context, state) {
            final isSectionTwoSelected = state.userInfo.selectedGaols.any((e) => e.sectionTwoType != null);
            final isSectionOneSelected = state.userInfo.selectedGaols.any((e) => e.sectionOneType != null);
            return CustomElevatedButton(
              text: isSectionTwoSelected ? L10n.tr().continuee : L10n.tr().createMyPlan,
              padding: EdgeInsets.zero,
              onPressed: () {
                if (isSectionOneSelected) {
                  if (state.userInfo.targetWeight == null) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(L10n.tr().weightSelectionIsRequired)));
                    return;
                  }
                }
                if (isSectionTwoSelected) {
                  if (state.userInfo.dietId == null) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(L10n.tr().dietTypeSelectionIsRequired)));
                    return;
                  } else {
                    // cubit.goToNextPage();
                  }
                } else {
                  context.read<SetupPersonalInfoCubit>().updatePersonalData();
                  context.push(
                    SubscriptionPlansScreen.routeWzExtra,
                    extra: PlanType.diet,
                  );
                }
              },
            );
          },
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
