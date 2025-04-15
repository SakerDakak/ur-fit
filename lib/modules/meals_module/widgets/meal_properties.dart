import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../core/assets_manager.dart';
import '../../../core/style/fonts.dart';

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
                '${readyInMinutes} دقيقة',
                style: CustomTextStyle.regular_16,
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
                '${kcal} سعر حرارى',
                style: CustomTextStyle.regular_16,
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
                'سهل التحضير',
                style: CustomTextStyle.regular_16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
