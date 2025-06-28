import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/home_module/controller/cubit/health_cubit.dart';

import '../../../../../generated/locale_keys.g.dart';

class TrainingDurationCard extends StatelessWidget {
  const TrainingDurationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  Assets.iconsDumbbell,
                  width: 16,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  LocaleKeys.exercises.tr(),
                  style: CustomTextStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.fontColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            BlocSelector<HealthCubit, HealthState, num>(
              selector: (state) => state.exerciseTime,
              builder: (context, exerciseTime) {
                return Text(
                  '${exerciseTime} ${LocaleKeys.min.tr()}',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.fontColor,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
