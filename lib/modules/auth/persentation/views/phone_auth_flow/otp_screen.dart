import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_autofill/otp_autofill.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/style/fonts.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});
  static const route = "/otpScreen";

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late OTPTextEditController controller;

  @override
  void dispose() {
    controller.stopListen();
    super.dispose();
  } // @override
  // void listenForCode({String? smsCodeRegexPattern}) {
  //
  // }

  var bloc1;

  @override
  void initState() {
    super.initState();

    controller = OTPTextEditController(
      codeLength: 4,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150.px,
                ),
                Center(
                    child: SvgPicture.asset(
                  AssetsManager.verifyOtp,
                  height: 48.px,
                  width: 48.px,
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 24.px,
                ),
                Center(
                  child: Text(
                    L10n.tr().enterOtpCode,
                    style: TStyle.bold_24,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    L10n.tr().otpInfoText,
                    style: TStyle.bold_16,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 32.px,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: OtpTextField(
                      autoFocus: true,
                      clearText: true,
                      contentPadding: EdgeInsets.zero,
                      showCursor: false,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide(color: Co.greenColor, width: 3))),
                      numberOfFields: 4,

                      borderColor: Co.blackColor,
                      fieldWidth: 50,
                      fieldHeight: 50,
                      enabledBorderColor: Co.greyColor,
                      textStyle: const TextStyle(locale: Locale("en")),

                      // mainAxisAlignment: ,
                      // contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      focusedBorderColor: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        /// TODO : Implement OTP code change logic
                        // bloc.onChangeOtp(code);
                        //handle validation or checks here
                      },

                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        /// TODO : Implement OTP code submission logic
                        // bloc.onChangeOtp(verificationCode);
                      }, // end onSubmit
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.px,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AssetsManager.msg,
                      width: 24.px,
                      height: 24.px,
                    ),
                    SizedBox(
                      width: 8.px,
                    ),
                    RichText(
                        text: TextSpan(text: L10n.tr().didntGetOtp, style: TStyle.regular_16, children: [
                      WidgetSpan(
                          child: InkWell(
                        onTap: () {
                          /// TODO : Implement resend OTP logic
                          // bloc.registerResendCode("email");
                        },
                        child: Text(
                          L10n.tr().pressToResendOtp,
                          style: TStyle.regular_16.copyWith(color: Theme.of(context).colorScheme.primary),
                        ),
                      ))
                    ])),
                  ],
                ),
                SizedBox(
                  height: 32.px,
                ),
                CustomElevatedButton(
                    text: L10n.tr().confirm,
                    onPressed: () {
                      /// TODO : Implement OTP code verification logic
                      // bloc.verifyOtpCode(controller.text);
                    })
              ],
            );
          },
        ),
      ),
    );
  }
}
