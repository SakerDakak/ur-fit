import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/presentation/assets/assets_manager.dart';
// import 'package:recaptcha_enterprise_flutter/recaptcha_action.dart';
// import 'package:recaptcha_enterprise_flutter/recaptcha_enterprise.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150.px,
            ),
            Center(
                child: SvgPicture.asset(
              AssetsManager.emailLarge,
              height: 48.px,
              width: 48.px,
              fit: BoxFit.cover,
            )),
            SizedBox(
              height: 24.px,
            ),
            Center(
              child: Text(
                "اعادة تعين كلمة المرور",
                style: CustomTextStyle.bold_24,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                "رجاء ادخال بريدك الالكترونى لارسال رمز التحقق",
                style: CustomTextStyle.bold_16,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 32.px,
            ),
            CompactTextFormField(
              hintText: 'ادخل البريد الالكترونى',
              autoFillHints: [AutofillHints.email],
              title: 'البريد الالكترونى',
              onChanged: (String? value) {
                // context.read<LoginBloc>().onChangeEmail(value!);
              },
            ),
            SizedBox(
              height: 32.px,
            ),
            CustomElevatedButton(
                text: "ارسال",
                onPressed: () {
                  /// TODO: implement forget password logic
                  // bloc.forgetPassword();
                })
          ],
        ),
      ),
    );
  }
}
