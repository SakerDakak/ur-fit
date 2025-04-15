import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/routes/routes.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

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
            AppAssets.iconsLogout,
            height: 20,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryColor,
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
              'هل تريد تسجيل خروج\n من حسابك الشخصى؟',
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
                    text: 'لا',
                    onPressed: () => Navigator.pop(context),
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.notActive,
                  ),
                ),

                const SizedBox(width: 8),

                // confirm
                Expanded(
                  child: CustomElevatedButton(
                    text: 'نعم',
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(LoggedOut());
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
