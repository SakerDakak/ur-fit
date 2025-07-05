import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class WeightProgressCard extends StatelessWidget {
  const WeightProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
      ),
      child: Column(
        children: [
          // min and max value
          Row(
            children: [
              Expanded(
                child: Text(
                  '80 كجم',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.semiBold_14.copyWith(
                    color: AppColors.selectedFont,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  '65 كجم',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: CustomTextStyle.semiBold_14.copyWith(
                    color: AppColors.selectedFont,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // progress bar
          const _CustomProgressBar(
            percent: 50 / 100,
            progressHeaderText: '75 كجم',
          ),
        ],
      ),
    );
  }
}

class _CustomProgressBar extends StatelessWidget {
  const _CustomProgressBar({
    required this.progressHeaderText,
    required this.percent,
  });

  final String progressHeaderText;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // progress bar
            LinearPercentIndicator(
              percent: percent.clamp(0, 1),
              backgroundColor: AppColors.selectedFont,
              progressColor: AppColors.yellow,
              padding: EdgeInsets.zero,
              barRadius: const Radius.circular(8),
              animation: true,
              animateFromLastPercent: true,
              animationDuration: 1000,
              curve: Curves.ease,
              lineHeight: 2,
              isRTL: Directionality.of(context) == TextDirection.rtl,
            ),

            // progress value
            AnimatedPositionedDirectional(
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              start: (percent.clamp(0, 1)) * (constraints.maxWidth - 45),
              child: Container(
                width: 45,
                padding: const EdgeInsets.symmetric(
                  horizontal: 6.5,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    progressHeaderText,
                    style: CustomTextStyle.semiBold_10.copyWith(
                      color: AppColors.selectedFont,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
