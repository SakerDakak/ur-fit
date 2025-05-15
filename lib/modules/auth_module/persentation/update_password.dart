import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';

import '../../../../core/style/fonts.dart';
import '../../../core/shared/widgets/custom_appbar.dart';
import '../../../core/shared/widgets/compact_form_field.dart';
import '../../../core/shared/widgets/custom_buttons.dart';
import '../../../core/style/colors.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/constants.dart';
import '../bloc/login_bloc.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  ListView(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          children: [

             SizedBox(height: 150.px),
            SvgPicture.asset(
              AppAssets.imageLogo,
              width: 150,
            ),
            const SizedBox(height: 16),
            Text(
              'اعادة تعين كلمة المرور الخاصة بك.',
              textAlign: TextAlign.center,
              style: CustomTextStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 32),

            // new password field
            CompactPasswordTextFormField(
              title: 'كلمة المرور  الجديدة',
              hintText: '12345678',
              padding: EdgeInsets.zero,
              borderColor: AppColors.strockColor,
              titleStyle: CustomTextStyle.regular_14,
              onChanged: (String? value) {
                bloc.add(OnChangeNewPasswordEvent(value!));
              },
            ),

            const SizedBox(height: 16),

            // confirm new password field
            CompactPasswordTextFormField(
              title: 'تاكيد كلمة المرور  الجديدة',
              hintText: '12345678',
              padding: EdgeInsets.zero,
              borderColor: AppColors.strockColor,
              titleStyle: CustomTextStyle.regular_14,
              onChanged: (String? value) {
                bloc.add(OnChangeNewPasswordConfirmEvent(value!));
              },
            ),

            const SizedBox(height: 32),

            // change button
            CustomElevatedButton(
              text: 'تغير',
              onPressed: () {
                bloc.add(ResetPasswordEvent());
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
