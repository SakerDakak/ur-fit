import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/shared/widgets/calories_indicator.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/fonts.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/constants.dart';
import '../what_ur_body_need_section.dart';

class WhatUrBodyNeedsShimmer extends StatelessWidget {
  const WhatUrBodyNeedsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Row(
            children: [
              SvgPicture.asset(Assets.iconsSpoonFork, width: 16,
                  colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              )),
              const SizedBox(width: 8),
              Text(
                'ما يحتاجه جسمك لليوم',
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.fontColor,
                ),
              ),
            ],
          ),
      
          const SizedBox(height: 16),
      
          // card
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              border: Border.all(color: AppColors.strockColor),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Column(
              children: [
                // calories
                CaloriesIndicator(
                  calories: 300,
                  title: 'سعر حرارى للتغذية',
                ),
      
                SizedBox(height: 16),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressItem(
                      title: 'سعرات',
                      percent: (10 / 100),
                    ),
                    ProgressItem(
                      title: 'بروتينات',
                      percent: (10 / 100),
                    ),
                    ProgressItem(
                      title: 'كاربوهيدرات',
                      percent: (10 / 100),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
