import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/custom_curve_slider.dart';

class EditWeightBottomSheet extends StatefulWidget {
  const EditWeightBottomSheet({
    super.key,
  });

  @override
  State<EditWeightBottomSheet> createState() => _EditWeightBottomSheetState();
}

class _EditWeightBottomSheetState extends State<EditWeightBottomSheet> {
  var currentWeight = Session().currentUser?.currentWeight ?? 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConst.kHorizontalPadding,
        vertical: MediaQuery.paddingOf(context).bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // drag handle
          Container(
            height: 4,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
              color: Co.cardInputStrock,
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
                  backgroundColor: Co.whiteColor,
                ),
                icon: const Icon(
                  Icons.close,
                  color: Co.backGround,
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
            L10n.tr().editWeight,
            style: TStyle.bold_16.copyWith(
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
                    L10n.tr().currentWeightIs,
                    style: TStyle.semiBold_16.copyWith(
                      color: Co.selectedFont,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                      border: Border.all(color: Co.strockColor),
                    ),
                    child: Text(
                      currentWeight.toString(),
                      style: TStyle.semiBold_16.copyWith(
                        color: Co.selectedFont,
                      ),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    L10n.tr().kg,
                    style: TStyle.semiBold_16.copyWith(
                      color: Co.selectedFont,
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
            initialValue: currentWeight.toDouble(),
            minIconSvgPath: Assets.iconsSkinnyBody,
            maxIconSvgPath: Assets.iconsFatBody,
            onValueChanged: (value) {
              try {
                currentWeight = value.toInt();
              } catch (e) {
                print(e);
                //handle error
              }
            },
          ),

          const SizedBox(height: 25),

          // confirm button
          CustomElevatedButton(
            text: L10n.tr().confirm,
            padding: EdgeInsets.zero,
            onPressed: () {
              if (currentWeight != Session().currentUser?.currentWeight) {
                Navigator.pop(context, currentWeight);
              } else {
                Navigator.pop(context);
              }
            },
          ),

          const SizedBox(height: kBottomNavigationBarHeight),
        ],
      ),
    );
  }
}
