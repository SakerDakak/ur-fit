
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../../../../core/presentation/style/fonts.dart';
import '../../../../../../core/presentation/views/widgets/custom_buttons.dart';
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
        return SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                L10n.tr().weightYouWantToTarget,
                style: TStyle.semiBold_16,
                textAlign: TextAlign.start,
              ),
            ),
          
          
            const SizedBox(height: 100),
            SizedBox(
              width: 130,
              child: TextFormField(
                onTapOutside: (PointerDownEvent event) {
                  FocusScope.of(context).unfocus();
                },
                initialValue: state.userInfo.targetWeight?.toString(),
          
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TStyle.semiBold_16.copyWith(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: L10n.tr().enterWeight,
                  hintStyle: TStyle.semiBold_16.copyWith(
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
              L10n.tr().kg,
              style: TStyle.semiBold_14.copyWith(
                color: Colors.cyanAccent,
              ),
            ),
            const SizedBox(height: 80),
            // continue button
            CustomElevatedButton(
              text: L10n.tr().continuee,
              padding: EdgeInsets.zero,
              onPressed: canProssed
                  ? () {
                cubit.goToNextIndexFinalStep();
              }
                  : null,
            ),
          ],),
        );
      },
    );
  }
}
