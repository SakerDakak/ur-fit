import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_flow.dart';
import 'package:urfit/modules/auth/persentation/views/widget/social_media_widget.dart';
import 'package:urfit/service_locator.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../../core/presentation/views/widgets/custom_buttons.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final shouldRemember = ValueNotifier<bool>(false);
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  _login() async {
    LoadingHelper.startLoading();
    AppConst.latestFunctionCalled = _login;
    final user = await sl<AuthenticationRepo>()
        .login(email: email.text, password: password.text, remember: shouldRemember.value);
    user.fold((l) async {
      print("l.message : ${l.message}");
      LoadingHelper.stopLoading();
    }, (u) async {
      Session().getUser();
    });
  }

  @override
  void dispose() {
    shouldRemember.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: AutofillGroup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 32.px,
              ),
              CompactTextFormField(
                controller: email,
                hintText: L10n.tr().enterEmail,
                autoFillHints: [AutofillHints.email],
                title: L10n.tr().email,
                validator: (String? value) {
                  // print("validation : ${value}");
                  if (value!.isEmpty) {
                    return L10n.tr().emailIsRequired;
                  } else if (!value.contains('@') && !value.contains('.')) {
                    return L10n.tr().emailMustBeValid;
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 24.px,
              ),
              CompactPasswordTextFormField(
                controller: password,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return L10n.tr().passwordIsRequired;
                  } else if (value.length < 6) {
                    return L10n.tr().passwordMustBeAtLeast6Characters;
                  }
                  return null;
                },
                hintText: L10n.tr().enterPassword,
                autoFillHints: [AutofillHints.password],
                title: L10n.tr().password,
              ),
              SizedBox(
                height: 16.px,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.px),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    ValueListenableBuilder(
                      valueListenable: shouldRemember,
                      builder: (context, value, child) => TextButton(
                        onPressed: () {
                          shouldRemember.value = !value;
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft,
                        ),
                        child: Row(
                          children: [
                            AbsorbPointer(
                              child: Checkbox(
                                value: value,
                                onChanged: (val) {},
                                checkColor: AppColors.whiteColor,
                                focusColor: Theme.of(context).colorScheme.primary,
                                activeColor: Theme.of(context).colorScheme.primary,
                                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                            Text(
                              L10n.tr().rememberMe,
                              style: CustomTextStyle.regular_16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          context.push(ForgetPasswordFlow.route);
                        },
                        child: Text(
                          L10n.tr().forgetPassword,
                          style: CustomTextStyle.regular_16.copyWith(color: Theme.of(context).colorScheme.primary),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 24.px,
              ),
              CustomElevatedButton(
                  text: L10n.tr().signIn,
                  onPressed: () {
                    if (_formKey.currentState?.validate() != true) return;
                    TextInput.finishAutofillContext(shouldSave: shouldRemember.value);
                    _login();
                  }),
              SizedBox(
                height: 24.px,
              ),
              SocialMediaWidget(),
              SizedBox(
                height: 24.px,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
