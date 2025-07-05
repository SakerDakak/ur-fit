import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/presentation/assets/app_assets.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/utils/constants.dart';
import '../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});
  static const route = "/updatePassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
          children: [
            SizedBox(height: 150.px),
            SvgPicture.asset(
              Assets.imageLogo,
              width: 150,
            ),
            const SizedBox(height: 16),
            Text(
              'اعادة تعين كلمة المرور الخاصة بك.',
              textAlign: TextAlign.center,
              style: TStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 32),

            // new password field
            CompactPasswordTextFormField(
              title: 'كلمة المرور  الجديدة',
              hintText: '12345678',
              padding: EdgeInsets.zero,
              borderColor: Co.strockColor,
              titleStyle: TStyle.regular_14,
              onChanged: (String? value) {
                /// TODO : Implement new password logic
                // bloc.onChangePassword(value!);
              },
            ),

            const SizedBox(height: 16),

            // confirm new password field
            CompactPasswordTextFormField(
              title: 'تاكيد كلمة المرور  الجديدة',
              hintText: '12345678',
              padding: EdgeInsets.zero,
              borderColor: Co.strockColor,
              titleStyle: TStyle.regular_14,
              onChanged: (String? value) {
                /// TODO : Implement confirm password logic
                // bloc.onChangeNewPasswordConfirm(value!);
              },
            ),

            const SizedBox(height: 32),

            // change button
            CustomElevatedButton(
              text: 'تغير',
              onPressed: () {
                /// TODO : Implement reset password logic
                // bloc.resetPassword();
              },
              padding: EdgeInsets.zero,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
