import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';

class DeleteAccountDialog extends StatelessWidget {
  const DeleteAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // close button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
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
          ),

          // title icon
          SvgPicture.asset(
            Assets.iconsDelete,
            height: 20,
            colorFilter:  ColorFilter.mode(
              Theme.of(context).colorScheme.primary,
              BlendMode.srcIn,
            ),
          ),

          const SizedBox(height: 16),

          // title
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding * 2,
            ),
            child: Text(
              LocaleKeys.areYouSureYouWantToDeleteAccount.tr(),
              textAlign: TextAlign.center,
              style: CustomTextStyle.bold_14.copyWith(
                color: AppColors.selectedFont,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // action buttons
          Padding(
            padding: const EdgeInsets.all(kHorizontalPadding),
            child: Row(
              children: [
                // cancel
                Expanded(
                  child: CustomElevatedButton(
                    text: LocaleKeys.no.tr(),
                    onPressed: () => Navigator.pop(context),
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.notActive,
                  ),
                ),

                const SizedBox(width: 8),

                // confirm
                Expanded(
                  child: CustomElevatedButton(
                    text: LocaleKeys.yes.tr(),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
