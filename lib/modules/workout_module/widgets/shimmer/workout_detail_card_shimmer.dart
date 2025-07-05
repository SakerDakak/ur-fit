import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/presentation/assets/app_assets.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/utils/constants.dart';
import '../../../../core/presentation/views/widgets/calories_indicator.dart';
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
              SvgPicture.asset(Assets.iconsDumbbell, width: 16,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.primary, BlendMode.srcIn),),
              const SizedBox(width: 8),
              Text(
                'تفاصيل تمارين اليوم',
                style: TStyle.regular_14.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Co.fontColor,
                ),
              ),
            ],
          ),
      
          const SizedBox(height: 16),
      
          // details card
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Co.cardColor,
              borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              border: Border.all(color: Co.strockColor),
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
                      Assets.iconsWeightIcon,
                       "0",
                      'كجم',
                    ),
      
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Co.strockColor,
                      ),
                    ),
      
                    // target weight
                    DetailsItem(
                      'الهدف',
                      Assets.iconsFlag,
                       "0",
                      'كجم',
                    ),
      
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Co.strockColor,
                      ),
                    ),
      
                    // workout duration
                    DetailsItem(
                      'مدة التمارين ',
                      Assets.iconsDumbbell,
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
