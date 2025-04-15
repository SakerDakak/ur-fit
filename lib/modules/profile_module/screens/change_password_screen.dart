import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/shared/widgets/compact_form_field.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تغير كلمة المرور'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            AppAssets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            'اعادة تعين كلمة المرور الخاصة بك.',
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 32),

          // old password field
          CompactPasswordTextFormField(
            title: 'كلمة المرور  الحالية',
            hintText: '12345678',
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),

          const SizedBox(height: 16),

          // new password field
          CompactPasswordTextFormField(
            title: 'كلمة المرور  الجديدة',
            hintText: '12345678',
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),

          const SizedBox(height: 16),

          // confirm new password field
          CompactPasswordTextFormField(
            title: 'تاكيد كلمة المرور  الجديدة',
            hintText: '12345678',
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),

          const SizedBox(height: 32),

          // change button
          CustomElevatedButton(
            text: 'تغير',
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
