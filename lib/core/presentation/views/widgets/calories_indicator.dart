import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class CaloriesIndicator extends StatelessWidget {
  const CaloriesIndicator({
    super.key,
    required this.calories,
    required this.title,
  });

  final double calories;
  final String title;

  @override
  Widget build(BuildContext context) {
    // final user = Session().currentUser;
    return FittedBox(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SvgPicture.asset(
            Theme.of(context).colorScheme.primary == Co.primaryColor ?  Assets.imageCaloriesIndicator : Assets.imageCaloriesIndicatorFemale,
            width: 185,
          ),
          SizedBox(
            width: 120,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        Assets.iconsFlam,
                        width: 10,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        calories.toStringAsFixed(0),
                        style: TStyle.regular_14.copyWith(
                          color: Co.fontColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: TStyle.regular_14.copyWith(
                      color: Co.fontColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
