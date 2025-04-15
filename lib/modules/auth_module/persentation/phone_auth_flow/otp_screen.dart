import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:otp_autofill/otp_autofill.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/core/shared/appCubit/app_cubit.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';

import '../../../../../core/style/colors.dart';
import '../../../../../core/style/fonts.dart';
import '../../../../../core/utils/service_locator.dart';

import '../../../../core/const.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../bloc/authentication_bloc.dart';
import '../../bloc/login_bloc.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

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
    final bloc = context.read<LoginBloc>();


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
                Center(child: SvgPicture.asset(
                  AssetsManager.verify_otp, height: 48.px,
                  width: 48.px,
                  fit: BoxFit.cover,)),
                SizedBox(
                  height: 24.px,
                ),
                Center(
                  child: Text(
                    LocaleKeys.enterOtpCode.tr(),
                    style: CustomTextStyle.bold_24,
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    LocaleKeys.otpInfoText.tr(),
                    style: CustomTextStyle.bold_16,
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
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.greenColor, width: 3))),
                      numberOfFields: 4,

                      borderColor: AppColors.blackColor,
                      fieldWidth: 50,
                      fieldHeight: 50,
                      enabledBorderColor: AppColors.greyColor,
                      textStyle: const TextStyle(locale: Locale("en")),

                      // mainAxisAlignment: ,
                      // contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      focusedBorderColor: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        bloc.add(OnChangeOtpEvent(code));
                        //handle validation or checks here
                      },

                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        bloc.add(OnChangeOtpEvent(verificationCode));
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
                      AssetsManager.msg, width: 24.px, height: 24.px,),
                    SizedBox(
                      width: 8.px,
                    ),
                    RichText(text: TextSpan(
                        text: LocaleKeys.didntGetOtp.tr(),
                        style: CustomTextStyle.regular_16,
                        children: [
                          WidgetSpan(
                              child: InkWell(
                                onTap: () {
                                  bloc.add(RegisterResendCode("email"));
                                },
                                child: Text(
                                  LocaleKeys.pressToResendOtp.tr(),
                                  style: CustomTextStyle.regular_16.copyWith(
                                      color: AppColors.primaryColor),
                                ),
                              )
                          )
                        ]
                    )),

                  ],
                ),
                SizedBox(
                  height: 32.px,
                ),
                CustomElevatedButton(
                    text: LocaleKeys.confirm.tr(), onPressed: () {
                  bloc.add(VerifyOtpCodeEvent(controller.text));
                })
              ],
            );
          },
        ),
      ),
    );
  }
}
