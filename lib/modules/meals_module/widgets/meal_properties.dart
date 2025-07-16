import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../core/presentation/assets/assets_manager.dart';
import '../../../core/presentation/style/fonts.dart';

class MealProperties extends StatelessWidget {
  final int readyInMinutes ;
  final num kcal ;
  const MealProperties({
    super.key, required this.readyInMinutes, required this.kcal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AssetsManager.time),
              SizedBox(
                width: 4.px,
              ),
              Text(
                '${readyInMinutes} ${L10n.tr().minutes}',
                style: TStyle.regular_16,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AssetsManager.calories),
              SizedBox(
                width: 4.px,
              ),
              Text(
                '${kcal} ${L10n.tr().calories}',
                style: TStyle.regular_16,
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AssetsManager.cooking),
              SizedBox(
                width: 4.px,
              ),
              Text(
                L10n.tr().easyPreparation,
                style: TStyle.regular_16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
