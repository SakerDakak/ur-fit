import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class ValuesGridviewShimmer extends StatelessWidget {
  const ValuesGridviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 2 / 0.9,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (_, __) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 60,
          height: 36,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'value',
              style: CustomTextStyle.semiBold_16.copyWith(
                color: AppColors.fontColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
