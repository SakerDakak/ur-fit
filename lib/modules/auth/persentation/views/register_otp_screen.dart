import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';
import 'package:urfit/modules/auth/persentation/views/widget/otp_widget.dart';

class RegisterOTPScreen extends StatelessWidget {
  const RegisterOTPScreen({super.key});
  static const routeWzExtra = "/otpRegisterScreen";
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return OTPWidget(submitOtp: cubit.submitOTP, resendCode: cubit.resendOTP, shouldResend: false);
  }
}
