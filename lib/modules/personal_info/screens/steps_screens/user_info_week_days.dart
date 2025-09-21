import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/data/models/user_personal_info_model.dart';

class UserInfoWeekDays extends StatelessWidget {
  const UserInfoWeekDays({super.key});

  // دالة للحصول على اسم اليوم المترجم (السبت أول أيام الأسبوع)
  String _getLocalizedDayName(int dayIndex) {
    switch (dayIndex) {
      case 0:
        return L10n.tr().saturday; // السبت أول يوم
      case 1:
        return L10n.tr().sunday;
      case 2:
        return L10n.tr().monday;
      case 3:
        return L10n.tr().tuesday;
      case 4:
        return L10n.tr().wednesday;
      case 5:
        return L10n.tr().thursday;
      case 6:
        return L10n.tr().friday;
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    return Column(
      children: [
        BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
          buildWhen: (p, c) => c is WeekDaysUpdatedState,
          builder: (context, state) {
            return Column(spacing: 16, children: [
              // شبكة أيام الأسبوع محسنة
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  // تحويل الفهرس ليتوافق مع ترتيب الأيام (السبت أول يوم)
                  final dayValue =
                      index == 0 ? 7 : index; // السبت = 7، الأحد = 1، إلخ
                  final isSelected = state.userInfo.exerciseDayes
                      .contains(Day.ofInt(dayValue));
                  return GestureDetector(
                    onTap: () => cubit.toggleWeekDays(Day.ofInt(dayValue)),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Theme.of(context).colorScheme.primary
                            : Co.cardColor,
                        borderRadius:
                            BorderRadius.circular(AppConst.kBorderRadius),
                        border: Border.all(
                          color: isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Co.strockColor,
                          width: isSelected ? 2 : 1,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withValues(alpha: 0.3),
                                  blurRadius: 8,
                                  offset: const Offset(0, 4),
                                ),
                              ]
                            : null,
                      ),
                      child: Center(
                        child: Text(
                          _getLocalizedDayName(index),
                          style: TStyle.regular_14.copyWith(
                            fontWeight:
                                isSelected ? FontWeight.w700 : FontWeight.w500,
                            color: isSelected ? Co.selectedFont : Co.fontColor,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              CustomElevatedButton(
                text: L10n.tr().continuee,
                padding: EdgeInsets.zero,
                onPressed: state.userInfo.exerciseDayes.isNotEmpty
                    ? () => cubit.nextPage()
                    : null,
              ),
            ]);
          },
        ),
      ],
    );
  }
}
