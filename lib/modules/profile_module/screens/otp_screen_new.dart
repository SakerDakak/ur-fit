import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/profile_module/screens/otp_form_fields.dart';

class OtpScreenNew extends StatelessWidget {
  const OtpScreenNew({super.key});
  static const route = '/otpScreenNew';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
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
                L10n.tr().enterOtpCode,
                style: TStyle.bold_20,
              ),

              const SizedBox(height: 24),

              // description
              Text(
                L10n.tr().pleaseEnterTheVerificationCodeSentToYourEmail,
                textAlign: TextAlign.center,
                style: TStyle.regular_14,
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
                    L10n.tr().didntGetOtp,
                    style: TStyle.regular_14,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      L10n.tr().pressToResendOtp,
                      style: TStyle.regular_14.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 24),

              // confirm button
              CustomElevatedButton(
                text: L10n.tr().confirm,
                onPressed: () {},
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
