import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/final_step/final_step_flow.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/setup_info_step_two.dart';
import 'package:urfit/modules/personal_info/widgets/setup_personal_info/personal_info/step_one/step_one_flow.dart';

class SetupPersonalInfo extends StatelessWidget {
  const SetupPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
      child: BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
        buildWhen: (p, c) => p.currentInfoStep != c.currentInfoStep,
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 28),

              // header
              Row(
                children: [
                  // back button
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: state.currentInfoStep > 1 ? 50 : 0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: IconButton(
                        onPressed: () => cubit.goToPreviousInfoStep(),
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),

                  // page title
                  Expanded(
                    child: Text(
                      L10n.tr().personalInfo,
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.bold_16,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // step number and skip button
              Row(
                children: [
                  // step number
                  Expanded(
                    child: Text(
                      _getCurrentStepTxt(state.currentInfoStep),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyle.semiBold_14,
                    ),
                  ),

                  // skip button
                  // TextButton(
                  //   onPressed: () {
                  //     if (state.currentInfoStep == _personalInfoPages.length) {
                  //       cubit.goToNextPage();
                  //     } else {
                  //       cubit.goToNextInfoStep();
                  //     }
                  //   },
                  //   style: const ButtonStyle(
                  //     visualDensity: VisualDensity.comfortable,
                  //   ),
                  //   child: Text(
                  //     'تخطى',
                  //     style: CustomTextStyle.regular_14,
                  //   ),
                  // ),
                  SizedBox(height: 30,)
                ],
              ),

              // progress bar
              LinearPercentIndicator(
                percent: state.currentInfoStep / _personalInfoPages.length,
                isRTL: Directionality.of(context) == TextDirection.rtl,
                barRadius: const Radius.circular(8),
                lineHeight: 2,
                backgroundColor: AppColors.whiteColor,
                progressColor: Theme.of(context).colorScheme.primary,
                padding: EdgeInsets.zero,
                animation: true,
                animateFromLastPercent: true,
                animationDuration: 1000,
              ),

              const SizedBox(height: 20),

              // personal info pages
              Expanded(
                child: PageView(
                  controller: cubit.personalInfoController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: _personalInfoPages,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _getCurrentStepTxt(int step) {
    switch (step) {
      case 1:
        return L10n.tr().firstStep;
      case 2:
        return L10n.tr().secondStep;
      case 3:
        return L10n.tr().thirdStep;

      default:
        return '';
    }
  }

  List<Widget> get _personalInfoPages {
    return const [
      StepOneFlow(),
      SetupInfoStepTwo(),
      FinalStepFlow(),
    ];
  }
}
