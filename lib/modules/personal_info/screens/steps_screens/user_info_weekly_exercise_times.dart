import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';

class UserInfoWeeklyExerciseTimes extends StatefulWidget {
  const UserInfoWeeklyExerciseTimes({super.key});

  @override
  State<UserInfoWeeklyExerciseTimes> createState() => _UserInfoWeeklyExerciseTimesState();
}

class _UserInfoWeeklyExerciseTimesState extends State<UserInfoWeeklyExerciseTimes> {
  final controller = TextEditingController();
  late final SetupPersonalInfoCubit cubit;

  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    controller.text = cubit.state.userInfo.weaklyTrainingCount?.toString() ?? '';
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              L10n.tr().trainingTimesPerWeek,
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
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TStyle.semiBold_16.copyWith(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: L10n.tr().trainingTimes,
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
          SizedBox(height: 16),
          Text(
            L10n.tr().exercise,
            style: TStyle.semiBold_14.copyWith(color: Theme.of(context).colorScheme.primary),
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
                      final times = int.tryParse(controller.text.trim()) ?? 0;
                      if (times < 1 || times > 100) return Alerts.showToast(L10n.tr().pleaseEnterValidWeight);
                      cubit.updateWeeklyTrainingCount(times);
                      cubit.nextPage();
                    },
            ),
          ),
        ],
      ),
    );
  }
}
