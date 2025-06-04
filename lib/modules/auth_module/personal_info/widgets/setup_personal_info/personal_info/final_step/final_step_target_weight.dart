import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/shared/widgets/custom_buttons.dart';
import '../../../../../../../core/style/fonts.dart';
import '../../../../../../../generated/locale_keys.g.dart';
import '../../../../controller/cubit/setup_personal_info_cubit.dart';

class FinalStepTargetWeight extends StatelessWidget {
  const FinalStepTargetWeight({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => previous.userInfo.targetWeight != current.userInfo.targetWeight,
      builder: (context, state) {
        bool canProssed = state.userInfo.targetWeight != null && state.userInfo.targetWeight! > 0;
        print("canProssed: ${state.userInfo.targetWeight}");
        return Column(children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              LocaleKeys.weightYouWantToTarget.tr(),
              style: CustomTextStyle.semiBold_16,
              textAlign: TextAlign.start,
            ),
          ),


          const SizedBox(height: 100),
          SizedBox(
            width: 130,
            child: TextFormField(
              initialValue: state.userInfo.targetWeight?.toString(),

              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: CustomTextStyle.semiBold_16.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: LocaleKeys.enterWeight.tr(),
                hintStyle: CustomTextStyle.semiBold_16.copyWith(
                  color: Colors.white.withOpacity(0.6),
                ),
                filled: true,
                fillColor: const Color(0xFF2D2D2D),
                contentPadding: const EdgeInsets.symmetric(vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                final weight = double.tryParse(value);
                if(weight != null) {
                  cubit.updateUserTargetWeight(weight);
                }
              },
            ),
          ),
          SizedBox(height: 16,),
          Text(
            LocaleKeys.kg.tr(),
            style: CustomTextStyle.semiBold_14.copyWith(
              color: Colors.cyanAccent,
            ),
          ),
          const SizedBox(height: 100),
          // continue button
          CustomElevatedButton(
            text: LocaleKeys.continuee.tr(),
            padding: EdgeInsets.zero,
            onPressed: canProssed
                ? () {
              cubit.goToNextIndexFinalStep();
            }
                : null,
          ),
        ],);
      },
    );
  }
}
