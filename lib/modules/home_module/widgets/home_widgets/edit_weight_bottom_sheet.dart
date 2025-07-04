import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/custom_curve_slider.dart';

class EditWeightBottomSheet extends StatelessWidget {
  const EditWeightBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: 15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // drag handle
          Container(
            height: 4,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: AppColors.cardInputStrock,
            ),
          ),

          // close button
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: SizedBox(
              height: 25,
              width: 25,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                padding: EdgeInsets.zero,
                style: IconButton.styleFrom(
                  visualDensity: VisualDensity.comfortable,
                  elevation: 4,
                  shadowColor: Colors.black,
                  backgroundColor: AppColors.whiteColor,
                ),
                icon: const Icon(
                  Icons.close,
                  color: AppColors.backGround,
                  size: 20,
                ),
              ),
            ),
          ),

          // title icon
          SvgPicture.asset(
            Assets.iconsWeightIcon,
            height: 24,
          ),

          const SizedBox(height: 8),

          // title
          Text(
            'تحديث الوزن',
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(height: 16),

          // current weight
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'الوزن الحالى',
                    style: CustomTextStyle.semiBold_16.copyWith(
                      color: AppColors.selectedFont,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      border: Border.all(color: AppColors.strockColor),
                    ),
                    child: Text(
                      '75',
                      style: CustomTextStyle.semiBold_16.copyWith(
                        color: AppColors.selectedFont,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'كجم',
                    style: CustomTextStyle.semiBold_16.copyWith(
                      color: AppColors.selectedFont,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // custom slider
          CustomCurveSlider(
            minValue: 30,
            maxValue: 150,
            minIconSvgPath: Assets.iconsSkinnyBody,
            maxIconSvgPath: Assets.iconsFatBody,
            onValueChanged: (value) {},
          ),

          const SizedBox(height: 25),

          // confirm button
          CustomElevatedButton(
            text: 'تاكيد',
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),

          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
