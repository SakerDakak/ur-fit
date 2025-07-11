import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/presonal_info_steps/widgets/final_step/final_step_flow.dart';
import 'package:urfit/modules/personal_info/screens/presonal_info_steps/widgets/setup_info_step_two.dart';
import 'package:urfit/modules/personal_info/screens/presonal_info_steps/widgets/step_one/step_one_flow.dart';

class PresonalInfoLayoutScreen extends StatelessWidget {
  const PresonalInfoLayoutScreen({super.key});
  static const route = '/PresonalInfoLayoutScreen';
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
        // buildWhen: (p, c) => p.currentInfoStep != c.currentInfoStep,
        builder: (context, state) {
          return Scaffold(
            // appBar: AppBar(
            //   automaticallyImplyLeading: false,
            //   leading: state.currentInfoStep > 0
            //       ? IconButton(
            //           onPressed: () => cubit.goToPreviousInfoStep(),
            //           icon: const Icon(Icons.arrow_back),
            //         )
            //       : null,
            //   title: Text(
            //     L10n.tr().personalInfo,
            //     textAlign: TextAlign.center,
            //     style: TStyle.bold_16,
            //   ),
            // ),
            body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "_getCurrentStepTxt(state.currentInfoStep)",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TStyle.semiBold_14,
                            ),
                          ),
                          SizedBox(height: 30)
                        ],
                      ),

                      // progress bar
                      LinearPercentIndicator(
                        // percent: state.currentInfoStep / _personalInfoPages.length,
                        isRTL: Directionality.of(context) == TextDirection.rtl,
                        barRadius: const Radius.circular(8),
                        lineHeight: 2,
                        backgroundColor: Co.whiteColor,
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
                          // controller: cubit.personalInfoController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: _personalInfoPages,
                        ),
                      ),
                    ],
                  )),
            ),
          );
        });
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
