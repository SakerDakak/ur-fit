import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class SleepWaterTrainingStatistics extends StatelessWidget {
  const SleepWaterTrainingStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // current weight
        _DetailsItem(
          L10n.tr().exercises,
          Assets.iconsDumbbell,
          '30',
          L10n.tr().minutes,
        ),

        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Co.strockColor,
          ),
        ),

        // target weight
        _DetailsItem(
          L10n.tr().water,
          Assets.iconsWater,
          '6',
          L10n.tr().liters,
        ),

        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Co.strockColor,
          ),
        ),

        // workout duration
        _DetailsItem(
          L10n.tr().sleep,
          Assets.iconsBed,
          '8',
          L10n.tr().hours,
        ),
      ],
    );
  }
}

class _DetailsItem extends StatelessWidget {
  const _DetailsItem(
    this.title,
    this.svgIconPath,
    this.value,
    this.valueType,
  );

  final String title;
  final String svgIconPath;
  final String value;
  final String valueType;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgIconPath,
          height: 16,
          width: 16,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TStyle.regular_14.copyWith(
                color: Co.fontColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  value,
                  style: TStyle.regular_14.copyWith(
                    color: Co.fontColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  valueType,
                  style: TStyle.regular_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
