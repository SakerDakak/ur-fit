import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/shared/widgets/custom_curve_slider.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/core/utils/enums.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';

import '../../../../../../../core/shared/widgets/custom_image_view.dart';
import '../../../../../../../core/utils/service_locator.dart';
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
              LocaleKeys.letUsKnowYouWell.tr(),
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 20),

            // gender
            Text(
              LocaleKeys.areYou.tr(),
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
              text: LocaleKeys.continuee.tr(),
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

