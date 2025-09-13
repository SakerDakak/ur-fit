import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';

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
          ),

          // title icon
          SvgPicture.asset(
            Assets.iconsDelete,
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
              L10n.tr().areYouSureYouWantToDeleteAccount,
              textAlign: TextAlign.center,
              style: TStyle.bold_14.copyWith(
                color: Co.selectedFont,
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
                      context.pop();
                      context.read<SettingCubit>().deleteAccount();
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
