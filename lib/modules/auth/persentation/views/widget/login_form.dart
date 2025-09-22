import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/validators.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/modules/auth/data/repo/auth_helper.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_states.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_screen.dart';
import 'package:urfit/modules/auth/persentation/views/widget/social_media_widget.dart';

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

  late final AuthCubit authCubit;
  @override
  void initState() {
    authCubit = context.read<AuthCubit>();
    super.initState();
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
                  controller: authCubit.emailController,
                  hintText: L10n.tr().enterEmail,
                  autoFillHints: [AutofillHints.email],
                  title: L10n.tr().email,
                  validator: Validators.emailValidator),
              SizedBox(
                height: 24.px,
              ),
              CompactPasswordTextFormField(
                controller: authCubit.loginPasswordController,
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
              Row(
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
                              checkColor: Co.whiteColor,
                              focusColor: Theme.of(context).colorScheme.primary,
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ),
                          Text(
                            L10n.tr().rememberMe,
                            style: TStyle.regular_16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        context.push(ForgetPasswordScreen.route);
                      },
                      child: Text(
                        L10n.tr().forgetPassword,
                        style: TStyle.regular_16.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      )),
                ],
              ),
              SizedBox(
                height: 24.px,
              ),
              BlocConsumer<AuthCubit, AuthStates>(
                listenWhen: (previous, current) => current is LoginStates,
                listener: (context, state) {
                  if (state is LoginSuccessState) {
                    AuthHelper.setUserAndNavigate(context, state.user);
                  } else if (state is LoginErrorState) {
                    // عرض رسالة الخطأ من الباك إند
                    Alerts.showToast(
                        state.error ?? L10n.tr().somethingWentWrong,
                        error: true);
                  }
                },
                builder: (context, state) => CustomElevatedButton(
                    text: L10n.tr().signIn,
                    isLoading: state is LoginLoadingState,
                    onPressed: () {
                      if (_formKey.currentState?.validate() != true) return;
                      TextInput.finishAutofillContext(
                          shouldSave: shouldRemember.value);
                      context.read<AuthCubit>().login(shouldRemember.value);
                    }),
              ),
              SizedBox(
                height: 24.px,
              ),
              const SocialMediaWidget(),
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
