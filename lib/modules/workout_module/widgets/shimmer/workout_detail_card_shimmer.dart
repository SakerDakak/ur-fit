import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/shared/widgets/calories_indicator.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/fonts.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/constants.dart';
import '../../workout_widgets/today_workout_details_card.dart';

class WorkoutDetailCardShimmer extends StatelessWidget {
  const WorkoutDetailCardShimmer({super.key});

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
              SvgPicture.asset(AppAssets.iconsDumbbell, width: 16),
              const SizedBox(width: 8),
              Text(
                'تفاصيل تمارين اليوم',
                style: CustomTextStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.fontColor,
                ),
              ),
            ],
          ),
      
          const SizedBox(height: 16),
      
          // details card
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
              border: Border.all(color: AppColors.strockColor),
            ),
            child:  Column(
              children: [
                // calories
                CaloriesIndicator(
                  calories: 100,
                  title: 'سعر حرارى حرق',
                ),
      
                SizedBox(height: 16),
      
                // more details
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // current weight
                    DetailsItem(
                      'وزنك الحالى',
                      AppAssets.iconsWeightIcon,
                       "0",
                      'كجم',
                    ),
      
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: AppColors.strockColor,
                      ),
                    ),
      
                    // target weight
                    DetailsItem(
                      'الهدف',
                      AppAssets.iconsFlag,
                       "0",
                      'كجم',
                    ),
      
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: AppColors.strockColor,
                      ),
                    ),
      
                    // workout duration
                    DetailsItem(
                      'مدة التمارين ',
                      AppAssets.iconsDumbbell,
                      "20",
                      'دقيقة',
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
