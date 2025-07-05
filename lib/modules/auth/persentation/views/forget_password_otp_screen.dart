import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/modules/auth/persentation/views/update_password.dart';
import 'package:urfit/modules/auth/persentation/views/widget/otp_widget.dart';
import 'package:urfit/service_locator.dart';

class ForgetPasswordOtpScreen extends StatelessWidget {
  const ForgetPasswordOtpScreen({super.key, required this.email});
  static const String route = "/forgetPasswordOtpScreen/:email";
  static String routeWzEmail(String email) => "/forgetPasswordOtpScreen/$email";
  final String email;
  @override
  Widget build(BuildContext context) {
    final repo = sl<AuthenticationRepo>();
    submitOTp(String otp) async {
      final resp = await repo.otpCheckCode(email: email, code: otp);
      resp.fold(
        (error) {},
        (success) => context.push(UpdatePasswordScreen.routeWzEmail(email)),
      );
    }

    Future<bool> resendOTp() async {
      final resp = await repo.forgetPassword(email: email);
      return resp.fold(
        (error) => false,
        (success) => true,
      );
    }

    return OTPWidget(submitOtp: submitOTp, resendCode: resendOTp, shouldResend: false);
  }
}
