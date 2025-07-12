import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';

import '../../../../../../core/presentation/style/fonts.dart';
import '../../../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../../../cubit/setup_personal_info_cubit.dart';

class StepOneAge extends StatefulWidget {
  const StepOneAge({super.key});

  @override
  State<StepOneAge> createState() => _StepOneAgeState();
}

class _StepOneAgeState extends State<StepOneAge> {
  final controller = TextEditingController();
  late final SetupPersonalInfoCubit cubit;

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    controller.text = cubit.state.userInfo.age?.toString() ?? '';
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              L10n.tr().whatsYourAge,
              style: TStyle.semiBold_16,
              textAlign: TextAlign.start,
            ),
          ),

          const SizedBox(height: 100),
          SizedBox(
            width: 130,
            child: TextFormField(
              controller: controller,
              onTapOutside: (PointerDownEvent event) {
                FocusScope.of(context).unfocus();
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TStyle.semiBold_16.copyWith(
                color: Colors.white,
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                hintText: L10n.tr().enterAge,
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
                final age = int.tryParse(value);
                if (age != null) {
                  // cubit.updateUserAge(age);
                }
              },
            ),
          ),
          SizedBox(height: 16),
          Text(
            L10n.tr().year,
            style: TStyle.semiBold_14.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 100),
          // continue button
          ListenableBuilder(
            listenable: controller,
            builder: (context, child) => CustomElevatedButton(
              text: L10n.tr().continuee,
              padding: EdgeInsets.zero,
              onPressed: controller.text.trim().isEmpty
                  ? null
                  : () {
                      final age = int.tryParse(controller.text.trim()) ?? 0;
                      if (age < 15 || age > 99) return Alerts.showToast(L10n.tr().pleaseEnterValidAge);
                      cubit.updateUserAge(age);
                      cubit.nextPage();
                    },
            ),
          ),
        ],
      ),
    );
  }
}
