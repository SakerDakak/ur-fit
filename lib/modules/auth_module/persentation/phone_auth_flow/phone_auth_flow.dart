import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/style/fonts.dart';
import '../../../../core/shared/widgets/custom_appbar.dart';
import '../../../../core/style/colors.dart';
import '../../bloc/authentication_bloc.dart';
import '../../bloc/login_bloc.dart';
import 'login_screen.dart';
import 'otp_screen.dart';

class PhoneAuthFlowPages extends StatelessWidget {
  const PhoneAuthFlowPages({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        // print('stateeee ${state.verificationId}');
        return Scaffold(

          backgroundColor: AppColors.backGround,

          body: !state.verificationId.isNotEmpty
              ? const LoginScreen()
              : const OTPScreen(),
        );
      },
    );
  }
}
