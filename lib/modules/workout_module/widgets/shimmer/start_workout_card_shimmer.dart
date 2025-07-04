import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';

import '../../../../core/presentation/assets/app_assets.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/utils/constants.dart';
import '../exercises_item.dart';

class StartWorkoutCardShimmer extends StatelessWidget {
  const StartWorkoutCardShimmer({super.key});

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
                'تمرين اليوم سوف يركز على',
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
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                // workout image
                Positioned(
                  top: -10,
                  bottom: -10,
                  child: workoutImage(context,imageUrl: AssetsManager.trainingDummy),
                ),

                // workout title and start button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 35,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 88),

                      // workout title
                      Expanded(
                        child: Text(
                          "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyle.bold_16.copyWith(shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                          ]),
                        ),
                      ),

                      // start button
                      GestureDetector(

                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          child: Text(
                            'ابدا',
                            style: CustomTextStyle.bold_14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),

          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(kBorderRadius),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                // workout image
                Positioned(
                  top: -10,
                  bottom: -10,
                  child: workoutImage(context,imageUrl: AssetsManager.trainingDummy),
                ),

                // workout title and start button
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 35,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 88),

                      // workout title
                      Expanded(
                        child: Text(
                          "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyle.bold_16.copyWith(shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                          ]),
                        ),
                      ),

                      // start button
                      GestureDetector(

                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(kBorderRadius),
                          ),
                          child: Text(
                            'ابدا',
                            style: CustomTextStyle.bold_14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
