
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';


class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});
  static const route = '/changePasswordScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(L10n.tr().resetPassword),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            Assets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            L10n.tr().resetPasswordPhrase,
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 32),

          // old password field
          CompactPasswordTextFormField(
            title: L10n.tr().currentPassword,
            hintText: '12345678',
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),

          const SizedBox(height: 16),

          // new password field
          CompactPasswordTextFormField(
            title: L10n.tr().newPassword,
            hintText: '12345678',
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),

          const SizedBox(height: 16),

          // confirm new password field
          CompactPasswordTextFormField(
            title: L10n.tr().confirmPassword,
            hintText: '12345678',
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),

          const SizedBox(height: 32),

          // change button
          CustomElevatedButton(
            text:L10n.tr().confirm,
            onPressed: () {

            },
            padding: EdgeInsets.zero,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
