import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';

class UserInfoTargetWeight extends StatefulWidget {
  const UserInfoTargetWeight({super.key});

  @override
  State<UserInfoTargetWeight> createState() => _UserInfoTargetWeightState();
}

class _UserInfoTargetWeightState extends State<UserInfoTargetWeight> {
  final controller = TextEditingController();
  late final SetupPersonalInfoCubit cubit;

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    controller.text = cubit.state.userInfo.targetWeight?.toString() ?? '';
    super.initState();
  }

  double calculateBMI(int height, double weight) {
    if (height <= 0 || weight <= 0) return 0.0;
    return weight / ((height / 100) * (height / 100));
  }

  Color getColorForBMI(double bmi) {
    if (bmi < 18.5) return Colors.lightBlue;
    if (bmi < 25) return Co.greenColor;
    if (bmi < 30) return Colors.orange;
    return Colors.redAccent;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _guideRow(String title, String description, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TStyle.primaryBold(15).copyWith(color: color),
        ),
        Text(description, style: TStyle.primaryBold(15).copyWith(color: color)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  L10n.tr().weightYouWantToTarget,
                  style: TStyle.semiBold_16,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(text: "${L10n.tr().currentBMI}: "),
                    TextSpan(
                        text: calculateBMI(cubit.state.userInfo.height ?? 0, cubit.state.userInfo.currentWeight ?? 0)
                            .toStringAsFixed(1),
                        style: TStyle.primaryBold(14).copyWith(color: cubit.colorScheme.primary))
                  ],
                  style: TStyle.primaryBold(14),
                )),
                SizedBox(height: 16),
              ],
            ),
          ),

          DecoratedBox(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    L10n.tr().bmiDescription,
                    style: TStyle.primarySemi(14),
                  ),
                  Text(
                    L10n.tr().guide,
                    style: TStyle.primaryBold(18).copyWith(color: cubit.colorScheme.primary),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFF2D2D2D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 6,
                        children: [
                          _guideRow('${L10n.tr().below} 18.5', L10n.tr().underWeight, Colors.lightBlue),
                          _guideRow('18.5 - 24.9', L10n.tr().normalWeight, Colors.green),
                          _guideRow('25 - 29.9', L10n.tr().overWeight, Colors.orange),
                          _guideRow('30 ${L10n.tr().andAbove}', L10n.tr().obesity, Colors.redAccent),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 40),
          Row(
            spacing: 24,
            children: [
              Expanded(
                child: Row(
                  spacing: 8,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        onTapOutside: (PointerDownEvent event) {
                          FocusScope.of(context).unfocus();
                        },
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
                          if (weight != null) {
                            // cubit.updateUserWeight(weight);
                          }
                        },
                      ),
                    ),
                    Text(
                      L10n.tr().kg,
                      style: TStyle.semiBold_14.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListenableBuilder(
                listenable: controller,
                builder: (context, child) => RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Target BMI"),
                      TextSpan(text: '\n'),
                      TextSpan(
                        text:
                            "${calculateBMI(cubit.state.userInfo.height ?? 0, double.tryParse(controller.text) ?? 0).toStringAsFixed(1)}",
                        style: TStyle.primarySemi(15).copyWith(
                            color: getColorForBMI(
                          calculateBMI(cubit.state.userInfo.height ?? 0, double.tryParse(controller.text) ?? 0),
                        )),
                      ),
                    ],
                    style: TStyle.primarySemi(15).copyWith(color: Colors.white, height: 1.5),
                  ),
                  textAlign: TextAlign.center,
                ),
              ))
            ],
          ),
          const SizedBox(height: 16),

          const SizedBox(height: 80),
          // continue button
          ListenableBuilder(
            listenable: controller,
            builder: (context, child) => CustomElevatedButton(
              text: L10n.tr().continuee,
              padding: EdgeInsets.zero,
              onPressed: controller.text.trim().isEmpty
                  ? null
                  : () {
                      final weight = double.tryParse(controller.text.trim()) ?? 0;
                      if (weight < 25 || weight > 300) return Alerts.showToast(L10n.tr().pleaseEnterValidWeight);
                      cubit.updateTargetWeight(weight);
                      cubit.nextPage();
                    },
            ),
          ),
        ],
      ),
    );
  }
}
