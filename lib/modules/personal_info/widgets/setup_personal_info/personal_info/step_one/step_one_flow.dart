import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/step_one/step_one_age.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/step_one/step_one_gender.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/step_one/step_one_height.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/step_one/step_one_weight.dart';

import '../../../../controller/cubit/setup_personal_info_cubit.dart';

class StepOneFlow extends StatelessWidget {
  const StepOneFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: context.read<SetupPersonalInfoCubit>().stepOneController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        StepOneGender(),
        StepOneAge(),
        StepOneHeight(),
        StepOneWeight(),
      ],
    );
  }
}
