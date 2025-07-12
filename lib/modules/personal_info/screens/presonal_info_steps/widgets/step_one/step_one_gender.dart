import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';

import 'gender_selector.dart';

class StepOneGender extends StatelessWidget {
  const StepOneGender({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    var selected = cubit.state.userInfo.gender;
    return ListView(
      children: [
        // title
        Text(
          L10n.tr().letUsKnowYouWell,
          style: TStyle.bold_16.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        const SizedBox(height: 20),

        // gender
        Text(
          L10n.tr().areYou,
          style: TStyle.semiBold_16,
        ),
        const SizedBox(height: 16),
        // _GenderToggleButtons(
        //   onChanged: (gender) => cubit.updateUserGender(gender),
        // ),
        GenderSelector(
          initial: selected,
          onChanged: (gender) {
            selected = gender;
            switch (gender) {
              case GenderEnum.male:
                context.read<AppCubit>().setMaleTheme();
                break;
              case GenderEnum.female:
                context.read<AppCubit>().setFemaleTheme();
                break;
            }
          },
        ),
        const SizedBox(height: 40),
        // continue button
        CustomElevatedButton(
          text: L10n.tr().continuee,
          padding: EdgeInsets.zero,
          // onPressed: () {
          //   cubit.nextPage();
          // },
          onPressed: selected == null
              ? null
              : () {
                  cubit.updateUserGender(selected!);
                  cubit.nextPage();
                },
        ),
      ],
    );
  }
}
