
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../controller/cubit/health_cubit.dart';

class SleepTrackingCard extends StatelessWidget {
  const SleepTrackingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Co.cardColor,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: Co.strockColor),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  Assets.iconsBed,
                  width: 16,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  L10n.tr().sleep,
                  style: TStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Co.fontColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            BlocSelector<HealthCubit, HealthState, num>(
              selector: (state) => state.totalSleep,
              builder: (context, sleep) {
                return Text(
                  '$sleep\n${L10n.tr().hours}',
                  textAlign: TextAlign.center,
                  style: TStyle.regular_14.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Co.fontColor,
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
