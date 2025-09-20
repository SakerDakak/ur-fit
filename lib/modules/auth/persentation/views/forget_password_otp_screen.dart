import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/update_password.dart';
import 'package:urfit/modules/auth/persentation/views/widget/otp_widget.dart';

class ForgetPasswordOtpScreen extends StatelessWidget {
  const ForgetPasswordOtpScreen({super.key, required this.email});
  static const String route = "/forgetPasswordOtpScreen/:email";
  static String routeWzEmail(String email) => "/forgetPasswordOtpScreen/$email";
  final String email;
  @override
  Widget build(BuildContext context) {
    final repo = di<AuthRepo>();
    submitOTp(String otp) async {
      final resp = await repo.otpForgetPassword(email: email, code: otp);
      resp.fold(
        (error) {
          // عرض رسالة الخطأ من الأعلى
          Alerts.showToast(error.message, error: true);
        },
        (user) =>
            context.pushReplacement(UpdatePasswordScreen.routeWzEmail(email)),
      );
    }

    Future<bool> resendOTp() async {
      final resp = await repo.forgetPassword(email: email);
      return resp.fold(
        (error) => false,
        (success) => true,
      );
    }

    return OTPWidget(
        submitOtp: submitOTp, resendCode: resendOTp, shouldResend: false);
  }
}
