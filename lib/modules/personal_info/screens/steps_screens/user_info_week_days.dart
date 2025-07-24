import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/weak_days_date.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';

class UserInfoWeekDays extends StatelessWidget {
  const UserInfoWeekDays({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    return Column(
      children: [
        BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
          buildWhen: (p, c) => c is WeekDaysUpdatedState,
          builder: (context, state) {
            return Column(spacing: 12, children: [
              ...List.generate(
                7,
                (index) {
                  final isSelected = state.userInfo.exerciseDayes.contains(Day.ofInt(index + 1));
                  return GestureDetector(
                    onTap: () => cubit.toggleWeekDays(Day.ofInt(index + 1)),
                    child: Container(
                      constraints: const BoxConstraints(minWidth: 100, minHeight: 40),
                      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? Theme.of(context).colorScheme.primary : Co.cardColor,
                        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                        border: Border.all(color: Co.strockColor),
                      ),
                      child: Column(
                        children: [
                          Text(
                            DateFormat.EEEE().format(WeakDaysDate.getCurrentWeekDays()[index]),
                            style: TStyle.regular_14.copyWith(
                              fontWeight: isSelected ? FontWeight.w700 : null,
                              color: isSelected ? Co.selectedFont : Co.fontColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              CustomElevatedButton(
                text: L10n.tr().continuee,
                padding: EdgeInsets.zero,
                onPressed: state.userInfo.exerciseDayes.isNotEmpty ? () => cubit.nextPage() : null,
              ),
            ]);
          },
        ),
      ],
    );
  }
}
