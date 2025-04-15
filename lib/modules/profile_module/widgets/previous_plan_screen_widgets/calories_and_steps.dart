import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

class CaloriesAndSteps extends StatelessWidget {
  final num calories;
  final num sets;
  const CaloriesAndSteps({super.key, required this.calories, required this.sets});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // calories
         Expanded(
          child: _InfoCard(
            iconPath: AppAssets.iconsFlam,
            contentColor: AppColors.selectedFont,
            cardColor: AppColors.primaryColor,
            value: calories.round(),
            unit: 'سعرحرارى',
          ),
        ),

        const SizedBox(width: 12),

        // steps
        Expanded(
          child: _InfoCard(
            iconPath: AppAssets.iconsStep,
            contentColor: AppColors.whiteColor,
            cardColor: AppColors.cardColor,
            backgroundCirclesColor: AppColors.strockColor.withOpacity(0.4),
            value: sets.toInt(),
            unit: 'مجموعة',
          ),
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.cardColor,
    required this.value,
    required this.unit,
    this.backgroundCirclesColor,
    required this.contentColor,
    required this.iconPath,
  });

  final Color cardColor;
  final Color contentColor;
  final int value;
  final String unit;
  final Color? backgroundCirclesColor;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: AppColors.strockColor),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // background circles
          PositionedDirectional(
            top: -65,
            start: -65,
            child: CircleAvatar(
              radius: 65,
              backgroundColor:
                  backgroundCirclesColor ?? const Color(0xff00B2CA),
            ),
          ),
          PositionedDirectional(
            top: -50,
            start: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor:
                  backgroundCirclesColor ?? const Color(0xff009DB1),
            ),
          ),

          // content (icon, text)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // icon
              Align(
                alignment: AlignmentDirectional.topStart,
                child: SvgPicture.asset(
                  iconPath,
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                    AppColors.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // value
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  value.toString(),
                  style: CustomTextStyle.bold_16.copyWith(
                    color: contentColor,
                  ),
                ),
              ),

              // value unit
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  unit,
                  style: CustomTextStyle.semiBold_14.copyWith(
                    color: contentColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
