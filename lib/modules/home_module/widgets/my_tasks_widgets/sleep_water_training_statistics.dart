import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';

class SleepWaterTrainingStatistics extends StatelessWidget {
  const SleepWaterTrainingStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // current weight
        _DetailsItem(
          'تمارين',
          Assets.iconsDumbbell,
          '30',
          'دقيقة',
        ),

        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: AppColors.strockColor,
          ),
        ),

        // target weight
        _DetailsItem(
          'مياه',
          Assets.iconsWater,
          '6',
          'لتر',
        ),

        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: AppColors.strockColor,
          ),
        ),

        // workout duration
        _DetailsItem(
          'نوم',
          Assets.iconsBed,
          '8',
          'ساعات',
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
          colorFilter:  ColorFilter.mode(
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
              style: CustomTextStyle.regular_14.copyWith(
                color: AppColors.fontColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  value,
                  style: CustomTextStyle.regular_14.copyWith(
                    color: AppColors.fontColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  valueType,
                  style: CustomTextStyle.regular_14.copyWith(
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
