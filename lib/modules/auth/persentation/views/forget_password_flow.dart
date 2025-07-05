import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/modules/auth/persentation/views/phone_auth_flow/otp_screen.dart';

import '../../../../core/presentation/style/colors.dart';
import '../bloc/login_bloc.dart';
import 'forget_password_email_screen.dart';

class ForgetPasswordFlow extends StatelessWidget {
  const ForgetPasswordFlow({super.key});
  static const route = "/forgetPasswordFlow";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backGround,
          body: !state.verificationId.isNotEmpty
                  ? const ForgetPasswordEmailScreen()
                  : const OTPScreen());
      },
    );
  }
}
