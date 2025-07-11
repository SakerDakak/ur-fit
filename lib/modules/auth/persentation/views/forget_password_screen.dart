import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/assets_manager.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/core/presentation/utils/validators.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_otp_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});
  static const String route = "/forgetPasswordScreen";

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future forgetPassword() async {
    LoadingHelper.startLoading();
    final email = emailController.text.trim();
    final response = await di<AuthRepo>().forgetPassword(email: email);
    LoadingHelper.stopLoading();
    response.fold(
      (error) {
        ///
      },
      (success) {
        Alerts.showToast(L10n.tr().otpHasBeenSentToYourEmail, error: false);
        context.push(ForgetPasswordOtpScreen.routeWzEmail(email));
      },
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: SvgPicture.asset(
                AssetsManager.emailLarge,
                height: 48.px,
                width: 48.px,
                fit: BoxFit.cover,
              )),
              SizedBox(
                height: 24.px,
              ),
              Center(
                child: Text(
                  L10n.tr().resetPassword,
                  style: TStyle.bold_24,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  L10n.tr().enterEmailForVerification,
                  style: TStyle.bold_16,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 32.px,
              ),
              Form(
                key: _formKey,
                child: CompactTextFormField(
                  hintText: L10n.tr().enterEmail,
                  controller: emailController,
                  autoFillHints: [AutofillHints.email],
                  title: L10n.tr().email,
                  validator: Validators.emailValidator,
                ),
              ),
              SizedBox(
                height: 32.px,
              ),
              CustomElevatedButton(
                  text: L10n.tr().send,
                  onPressed: () {
                    if (_formKey.currentState!.validate() != true) return;

                    forgetPassword();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
