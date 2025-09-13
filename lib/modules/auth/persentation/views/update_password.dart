import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/core/presentation/utils/validators.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';

import '../../../../core/presentation/assets/app_assets.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/utils/constants.dart';
import '../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key, required this.email});
  static const route = "/updatePassword/:email";
  static String routeWzEmail(String email) => "/updatePassword/$email";
  final String email;
  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
          children: [
            SvgPicture.asset(
              Assets.imageLogo,
              width: 150,
            ),
            const SizedBox(height: 16),
            Text(
              L10n.tr().resetPassord,
              textAlign: TextAlign.center,
              style: TStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 32),

            // new password field
            CompactPasswordTextFormField(
              title: L10n.tr().newPassword,
              hintText: 'xxxxxx',
              padding: EdgeInsets.zero,
              borderColor: Co.strockColor,
              titleStyle: TStyle.regular_14,
              validator: Validators.moreThanSix,
              controller: passwordController,
            ),

            const SizedBox(height: 16),

            // confirm new password field
            CompactPasswordTextFormField(
              title: L10n.tr().confirmPassword,
              hintText: 'xxxxxx',
              padding: EdgeInsets.zero,
              borderColor: Co.strockColor,
              titleStyle: TStyle.regular_14,
              controller: confirmPasswordController,
              validator: (value) {
                if (value != passwordController.text) {
                  return L10n.tr().passwordsDoNotMatch;
                }
                return null;
              },
            ),

            const SizedBox(height: 32),

            // change button
            CustomElevatedButton(
              text: L10n.tr().send,
              onPressed: () async {
                if (_formKey.currentState?.validate() != true) return;
                LoadingHelper.startLoading();
                try {
                  final respo = await di<AuthRepo>()
                      .updatePassword(password: passwordController.text, email: widget.email);
                  respo.fold((l) {}, (r) {
                    Alerts.showToast(r ?? '', error: false);
                    context.go(AuthScreen.route);
                  });
                } catch (e) {
                  print("Error updating password: $e");
                } finally {
                  LoadingHelper.stopLoading();
                }
              },
              padding: EdgeInsets.zero,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
