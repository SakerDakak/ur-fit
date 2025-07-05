import 'package:flutter/material.dart';

class ForgetPasswordFlow extends StatelessWidget {
  const ForgetPasswordFlow({super.key});
  static const route = "/forgetPasswordFlow";

  @override
  Widget build(BuildContext context) {
    /// TODO : Implement logic to check if the user is logged in or not
    return SizedBox();
    // return BlocBuilder<LoginBloc, LoginState>(
    //   builder: (context, state) {
    //     return Scaffold(
    //         backgroundColor: AppColors.backGround,
    //         body: !state.verificationId.isNotEmpty ? const ForgetPasswordEmailScreen() : const OTPScreen());
    //   },
    // );
  }
}
