import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class StackedCircularProgressBar extends StatelessWidget {
  const StackedCircularProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // background circle 1
        CircleAvatar(
          radius: 75,
          backgroundColor: Co.whiteColor.withOpacity(0.05),
        ),

        // background circle 2
        CircleAvatar(
          radius: 60,
          backgroundColor: Co.whiteColor.withOpacity(0.05),
        ),

        // background circle 3 with radial gradient
        Container(
          width: 90,
          height: 90,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            gradient: RadialGradient(
              stops: [0.25, 1],
              colors: [
                Color(0xff626F72),
                Color(0xff2D334A),
              ],
            ),
          ),
        ),

        // circular progress
        CircularPercentIndicator(
          percent: 70 / 100,
          radius: 45,
          lineWidth: 7,
          animation: true,
          startAngle: 180,
          animateFromLastPercent: true,
          animationDuration: 1000,
          backgroundColor: Colors.transparent,
          circularStrokeCap: CircularStrokeCap.round,
          linearGradient:  LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).colorScheme.primary,
              Color(0xff0A282C),
            ],
          ),
          center: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              children: [
                SvgPicture.asset(
                  Assets.iconsThunder,
                  height: 14,
                  colorFilter:  ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(height: 4),
                Text('300', style: TStyle.bold_14),
                Text('وحدة', style: TStyle.semiBold_14),
              ],
            ),
          ),
        )
      ],
    );
  }
}
