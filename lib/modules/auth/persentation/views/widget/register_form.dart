import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/loading_helper.dart';
import 'package:urfit/core/presentation/utils/validators.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_states.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_screen.dart';
import 'package:urfit/modules/auth/persentation/views/register_otp_screen.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../../core/presentation/views/widgets/custom_buttons.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final agreeToTerms = ValueNotifier<bool>(false);

  late final AuthCubit authCubit;
  @override
  void initState() {
    authCubit = context.read<AuthCubit>();
    super.initState();
  }

  @override
  void dispose() {
    agreeToTerms.dispose();
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
              SizedBox(height: 32.px),
              CompactTextFormField(
                hintText: L10n.tr().enterFullName,
                title: L10n.tr().fullName,
                autoFillHints: [AutofillHints.name],
                controller: authCubit.nameController,
                validator: (v) => Validators.valueIsNumAtLeast(v, 3, L10n.tr().fullName),
              ),
              SizedBox(height: 24.px),
              CompactTextFormField(
                  hintText: L10n.tr().enterEmail,
                  title: L10n.tr().email,
                  controller: authCubit.emailController,
                  autoFillHints: [AutofillHints.email],
                  validator: Validators.emailValidator),
              SizedBox(height: 24.px),
              CompactPasswordTextFormField(
                hintText: L10n.tr().enterPassword,
                title: L10n.tr().password,
                controller: authCubit.passwordController,
                autoFillHints: [AutofillHints.newPassword],
                validator: Validators.moreThanSix,
              ),
              SizedBox(height: 16.px),
              CompactPasswordTextFormField(
                hintText: L10n.tr().enterPassword,
                title: L10n.tr().confirmPassword,
                controller: authCubit.confirmPasswordController,
                validator: (String? value) {
                  if (value != authCubit.passwordController.text) return L10n.tr().passwordsDoNotMatch;
                  return null;
                },
              ),
              SizedBox(height: 16.px),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.px),
                child: Row(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: agreeToTerms,
                      builder: (context, value, child) => TextButton(
                        onPressed: () => agreeToTerms.value = !value,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              L10n.tr().agreeTerms,
                              style: TStyle.bold_14,
                            ),
                            IgnorePointer(
                              child: Checkbox(
                                value: value, // acceptTerms,
                                onChanged: (val) => agreeToTerms.value = !value,
                                checkColor: Co.whiteColor,
                                focusColor: Theme.of(context).colorScheme.primary,
                                activeColor: Theme.of(context).colorScheme.primary,
                                side: BorderSide(color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    FittedBox(
                      child: TextButton(
                          onPressed: () {
                            context.push(ForgetPasswordScreen.route);
                          },
                          child: Text(
                            L10n.tr().forgetPassword,
                            style: TStyle.bold_14.copyWith(color: Theme.of(context).colorScheme.primary),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.px,
              ),
              BlocConsumer<AuthCubit, AuthStates>(
                listenWhen: (previous, current) => current is RegisterStates,
                listener: (context, state) {
                  if (state is RegisterLoadingState) {
                    LoadingHelper.startLoading();
                  } else {
                    LoadingHelper.stopLoading();
                  }
                  if (state is RegisterSuccessState) {
                    Alerts.showToast(L10n.tr().otpHasBeenSentToYourEmail, error: false);
                    final email = authCubit.emailController.text.trim();
                    context.push(RegisterOTPScreen.route(email));
                  } else if (state is RegisterErrorState) {
                    // Alerts.showToast(state.error?? '');
                  }
                },
                buildWhen: (previous, current) => current is! RegisterStates,
                builder: (context, state) => CustomElevatedButton(
                  text: L10n.tr().registerNewAccount,
                  isLoading: state is RegisterLoadingState,
                  onPressed: () {
                    if (_formKey.currentState?.validate() != true) return;
                    if (!agreeToTerms.value) {
                      return Alerts.showToast(L10n.tr().agreeTerms);
                    }
                    context.read<AuthCubit>().register();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
