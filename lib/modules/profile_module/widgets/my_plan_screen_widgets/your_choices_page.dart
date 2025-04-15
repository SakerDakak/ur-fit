import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/final_step_section_one.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/final_step_section_two.dart';

class YourChoicesPage extends StatelessWidget {
  const YourChoicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
        CustomElevatedButton(
          text: 'استمر',
          padding: EdgeInsets.zero,
          onPressed: () => cubit.goToNextPage(),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
