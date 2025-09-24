import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Co.backGround, // خلفية داكنة
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 28),
          // title icon
          SvgPicture.asset(
            Assets.iconsLogout,
            height: 20,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.primary,
              BlendMode.srcIn,
            ),
          ),

          const SizedBox(height: 16),
          // title
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConst.kHorizontalPadding * 2,
            ),
            child: Text(
              L10n.tr().areYouSureYouWantToLogout,
              textAlign: TextAlign.center,
              style: TStyle.bold_14.copyWith(
                color: Colors.white, // لون أبيض للنص
              ),
            ),
          ),

          const SizedBox(height: 16),

          // action buttons
          Padding(
            padding: const EdgeInsets.all(AppConst.kHorizontalPadding),
            child: Row(
              children: [
                // cancel
                Expanded(
                  child: CustomElevatedButton(
                    text: L10n.tr().no,
                    onPressed: () => Navigator.pop(context),
                    padding: EdgeInsets.zero,
                    backgroundColor: Co.notActive,
                  ),
                ),

                const SizedBox(width: 8),

                // confirm
                Expanded(
                  child: CustomElevatedButton(
                    text: L10n.tr().yes,
                    onPressed: () {
                      Session().logout();
                    },
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
