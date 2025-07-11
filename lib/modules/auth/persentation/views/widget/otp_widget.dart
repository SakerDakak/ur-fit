import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/style/fonts.dart';

class OTPWidget extends StatefulWidget {
  const OTPWidget({super.key, required this.submitOtp, required this.resendCode, required this.shouldResend});
  // static const String route = "/otpScreen";
  // static String routeWithData(String email, {bool shouldResend = false}) {
  //   return "/otpScreen?email=$email&should_resend=$shouldResend";
  // }
  final Future<void> Function(String otp) submitOtp;
  final Future<bool> Function() resendCode;

  final bool shouldResend;
  @override
  State<OTPWidget> createState() => _OTPWidgetState();
}

class _OTPWidgetState extends State<OTPWidget> {
  StringBuffer otpCode = StringBuffer();
  final authRepo = di<AuthRepo>();
  late Timer _timer;
  final seconds = ValueNotifier<int>(30);
  final isResending = ValueNotifier<bool>(false);

  _setTimer() {
    seconds.value = 30;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds.value > 0) {
        seconds.value--;
      } else {
        timer.cancel();
      }
    });
  }

  Future<void> _resendOtp() async {
    isResending.value = true;
    final response = await widget.resendCode();
    isResending.value = false;
    if (response) _setTimer();
  }

  Future<void> _verifyOTP() async {
    final otp = otpCode.toString();
    if (otp.length != 4) return Alerts.showToast(L10n.tr().valueMustBeNum(4, "OTP"));
    LoadingHelper.startLoading();
    await widget.submitOtp(otp);
    if (mounted) LoadingHelper.stopLoading();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.shouldResend) {
        _resendOtp();
      } else {
        _setTimer();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    otpCode.clear();
    seconds.dispose();
    isResending.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        focusedBorderColor: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(8),
                        showFieldAsBox: true,
                        onCodeChanged: (value) => otpCode.clear(),
                        onSubmit: (String verificationCode) {
                          print("onSubmit: $verificationCode");
                          otpCode.clear();
                          otpCode.write(verificationCode);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16.px),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AssetsManager.msg,
                        width: 18.px,
                        height: 18.px,
                      ),
                      SizedBox(width: 8.px),
                      Text(
                        L10n.tr().didntGetOtp,
                        style: TStyle.regular_16,
                      ),
                      SizedBox(width: 8.px),
                      ValueListenableBuilder(
                        valueListenable: seconds,
                        builder: (context, value, child) => value < 1
                            ? child!
                            : RichText(
                                text: TextSpan(children: [
                                  TextSpan(text: L10n.tr().resendAfter),
                                  TextSpan(
                                    text: " $value ",
                                    style: TStyle.regular_16.copyWith(color: Theme.of(context).colorScheme.primary),
                                  ),
                                  TextSpan(text: L10n.tr().seconds),
                                ]),
                              ),
                        child: ValueListenableBuilder(
                          valueListenable: isResending,
                          builder: (context, value, child) => Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              child!,
                              if (value) const SizedBox(height: 24, width: 24, child: CircularProgressIndicator())
                            ],
                          ),
                          child: TextButton(
                            onPressed: _resendOtp,
                            child: Text(
                              L10n.tr().pressToResendOtp,
                              style: TStyle.regular_16.copyWith(color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.px,
                  ),
                  CustomElevatedButton(
                      text: L10n.tr().confirm,
                      onPressed: () {
                        /// TODO : Implement OTP code verification logic
                        _verifyOTP();
                      })
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
