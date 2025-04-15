import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/setup_info_final_step.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/setup_info_step_two.dart';
import 'package:urfit/modules/auth_module/personal_info/widgets/setup_personal_info/setup_step_one.dart';

class SetupPersonalInfo extends StatelessWidget {
  const SetupPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
                      'معلومات شخصية',
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
                  TextButton(
                    onPressed: () {
                      if (state.currentInfoStep == _personalInfoPages.length) {
                        cubit.goToNextPage();
                      } else {
                        cubit.goToNextInfoStep();
                      }
                    },
                    style: const ButtonStyle(
                      visualDensity: VisualDensity.comfortable,
                    ),
                    child: Text(
                      'تخطى',
                      style: CustomTextStyle.regular_14,
                    ),
                  ),
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
        return 'الخطوة الاولى';
      case 2:
        return 'الخطوة الثانية';
      case 3:
        return 'الخطوة  الاخيرة';

      default:
        return '';
    }
  }

  List<Widget> get _personalInfoPages {
    return const [
      SetupInfoStepOne(),
      SetupInfoStepTwo(),
      SetupInfoFinalStep(),
    ];
  }
}
