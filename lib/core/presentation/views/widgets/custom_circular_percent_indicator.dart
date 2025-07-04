import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key,
    required this.percent,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularPercentIndicator(
          percent: ((0.9 - percent)).clamp(0.1, 1),
          startAngle: 368,
          progressColor: AppColors.whiteColor,
          backgroundColor: Colors.transparent,
          radius: 32,
          circularStrokeCap: CircularStrokeCap.round,
          animation: true,
          animateFromLastPercent: true,
          animationDuration: 800,
        ),
        CircularPercentIndicator(
          percent: percent.clamp(0, 1),
          progressColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Colors.transparent,
          radius: 32,
          startAngle: 350,
          reverse: true,
          circularStrokeCap: CircularStrokeCap.round,
          animation: true,
          animateFromLastPercent: true,
          animationDuration: 800,
          center: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              '${(percent * 100).toStringAsFixed(0)}%',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyle.regular_14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
