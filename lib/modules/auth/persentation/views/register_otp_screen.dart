import 'package:flutter/material.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_helper.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/widget/otp_widget.dart';

class RegisterOTPScreen extends StatelessWidget {
  const RegisterOTPScreen({super.key, required this.email});
  static route(String? email) => "/otpRegisterScreen/${email ?? ':email'}";
  final String email;
  @override
  Widget build(BuildContext context) {
    final repo = di<AuthRepo>();

    Future<void> submitOtp(String otp) async {
      final result = await repo.otpCheckCode(code: otp, email: email);
      return result.fold((l) {}, (user) {
        AuthHelper.setUserAndNavigate(context, user);
      });
    }

    Future<bool> resendOTP() async {
      final result = await repo.resendOtp(email: email);
      return result.fold((l) => false, (response) => true);
    }

    return OTPWidget(
        submitOtp: submitOtp, resendCode: resendOTP, shouldResend: false);
  }
}
