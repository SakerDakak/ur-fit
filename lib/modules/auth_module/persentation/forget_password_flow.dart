import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/modules/auth_module/persentation/phone_auth_flow/otp_screen.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/fonts.dart';
import '../../../core/shared/widgets/custom_appbar.dart';
import '../bloc/authentication_bloc.dart';
import '../bloc/login_bloc.dart';
import 'forget_password_email_screen.dart';

class ForgetPasswordFlow extends StatelessWidget {
  const ForgetPasswordFlow({super.key});

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
