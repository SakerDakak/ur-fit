
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/controller/cubit/setup_personal_info_cubit.dart';

import 'gender_selector.dart';

class StepOneGender extends StatelessWidget {
  const StepOneGender({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => previous.userInfo != current.userInfo,
      builder: (context, state) {
        bool canProssed = state.userInfo.gender != null;
        return ListView(
          children: [
            // title
            Text(
              L10n.tr().letUsKnowYouWell,
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 20),

            // gender
            Text(
              L10n.tr().areYou,
              style: CustomTextStyle.semiBold_16,
            ),
            const SizedBox(height: 16),
            // _GenderToggleButtons(
            //   onChanged: (gender) => cubit.updateUserGender(gender),
            // ),
            GenderSelector(justRegistered: true,onChanged: (gender) => cubit.updateUserGender(gender),),
            const SizedBox(height: 40),
            // continue button
            CustomElevatedButton(
              text: L10n.tr().continuee,
              padding: EdgeInsets.zero,
              onPressed: canProssed
                  ? () {
                      cubit.goToNextIndexStepOne();
                    }
                  : null,
            ),
          ],
        );
      },
    );
  }
}

