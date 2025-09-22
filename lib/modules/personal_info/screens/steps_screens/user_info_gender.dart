import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';

import '../widgets/gender_selector_widget.dart';

class UserInfoGender extends StatefulWidget {
  const UserInfoGender({super.key});

  @override
  State<UserInfoGender> createState() => _UserInfoGenderState();
}

class _UserInfoGenderState extends State<UserInfoGender> {
  late final SetupPersonalInfoCubit cubit;
  GenderEnum? selected;
  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    selected = cubit.state.userInfo.gender;
    // تطبيق الثيم حسب الجنس المحدد أو الثيم الافتراضي (ذكر)
    if (cubit.state.userInfo.gender == GenderEnum.female) {
      context.read<AppCubit>().setFemaleTheme();
    } else {
      // تطبيق ثيم الذكر الافتراضي إذا لم يكن هناك جنس محدد أو كان ذكر
      context.read<AppCubit>().setMaleTheme();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        GenderSelectorWidget(
          initial: selected,
          onChanged: (gender) {
            setState(() {
              selected = gender;
            });
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
                  cubit.nextPage(false);
                },
        ),
      ],
    );
  }
}
