import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/final_step_section_one.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/final_step_section_two.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';

import '../../../../../core/routes/routes.dart';
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
        BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState >(
          builder: (context, state) {
            final isSectionTwoSelected = state.userInfo.selectedGaols.any(
                  (e) => e.sectionTwoType != null);
            final isSectionOneSelected = state.userInfo.selectedGaols.any(
                    (e) => e.sectionOneType != null);
            return CustomElevatedButton(
              text: isSectionTwoSelected ? 'استمر' : "انشاء خطتي الخاصه",
              padding: EdgeInsets.zero,
              onPressed: () {
                if(isSectionOneSelected){
                  if(state.userInfo.targetWeight == null){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("يجب تحديد الوزن الذي تريد الوصول الية")));
                    return;
                  }
                }
                if (isSectionTwoSelected) {
                  if(state.userInfo.diet_id == null){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("يجب تحديد نوع الحمية")));
                    return;
                  }else{
                    cubit.goToNextPage();
                  }
                } else {
                  context.read<SetupPersonalInfoCubit>().updatePersonalData();
                  context.push(
                    Routes.subscriptionPlansScreen,
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
