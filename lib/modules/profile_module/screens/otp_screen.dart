import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/shared/widgets/otp_form_fields.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static const route = '/otpScreenNew';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            children: [
              // icon
              SvgPicture.asset(
                Assets.iconsShieldCheck,
                height: 45,
              ),

              const SizedBox(height: 24),

              // title
              Text(
                'ادخل رمز التحقق',
                style: CustomTextStyle.bold_20,
              ),

              const SizedBox(height: 24),

              // description
              Text(
                'رجاء ادخال رمز التحقق الذى تم ارساله على البريد الالكترونى',
                textAlign: TextAlign.center,
                style: CustomTextStyle.regular_14,
              ),

              const SizedBox(height: 24),

              // otp fields
              OtpFormFields(
                fieldsCount: 4,
                onCompleted: (otp) {
                  print(otp);
                },
              ),

              const SizedBox(height: 24),

              // resend otp
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.iconsMessage,
                    height: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'لم يصلك رمز التحقق؟',
                    style: CustomTextStyle.regular_14,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'اضغط هنا لاعادة الارسال',
                      style: CustomTextStyle.regular_14.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 24),

              // confirm button
              CustomElevatedButton(
                text: 'تاكيد',
                onPressed: () {

                },
                padding: EdgeInsets.zero,
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
