import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/modules/auth/data/models/register_model.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';

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
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final agreeToTerms = ValueNotifier<bool>(false);

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
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
                controller: name,
                validator: (String? value) {
                  // print("validation : ${value}");
                  if (value!.isEmpty) {
                    return L10n.tr().fullNameIsRequired;
                  } else if (value.length < 3) {
                    return L10n.tr().fullNameMustBeAtLeast3Characters;
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 24.px),
              CompactTextFormField(
                hintText: L10n.tr().enterEmail,
                title: L10n.tr().email,
                controller: email,
                autoFillHints: [AutofillHints.email],
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
              SizedBox(height: 24.px),
              CompactPasswordTextFormField(
                hintText: L10n.tr().enterPassword,
                title: L10n.tr().password,
                controller: password,
                autoFillHints: [AutofillHints.newPassword],
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return L10n.tr().passwordIsRequired;
                  } else if (value.length < 6) {
                    return L10n.tr().passwordMustBeAtLeast6Characters;
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.px),
              CompactPasswordTextFormField(
                hintText: L10n.tr().enterPassword,
                title: L10n.tr().confirmPassword,
                controller: confirmPassword,
                validator: (String? value) {
                  if (value != password.text) return L10n.tr().passwordsDoNotMatch;
                  return null;
                },
              ),
              SizedBox(height: 16.px),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.px),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Text(
                          L10n.tr().agreeTerms,
                          style: TStyle.bold_14,
                        ),
                        onPressed: () {
                          /// TODO : Implement terms and conditions logic
                          // context.read<LoginBloc>().toggleTerms(!context.read<LoginBloc>().state.acceptTerms);
                        },
                      ),
                    ),
                    Checkbox(
                      value: true, // acceptTerms,
                      onChanged: (val) {
                        // context.read<LoginBloc>().toggleTerms(val!);
                      },
                      checkColor: Co.whiteColor,
                      focusColor: Theme.of(context).colorScheme.primary,
                      activeColor: Theme.of(context).colorScheme.primary,
                      side: BorderSide(color: Theme.of(context).colorScheme.primary),
                    ),
                    const Spacer(),
                    FittedBox(
                      child: TextButton(
                          onPressed: () {},
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
              CustomElevatedButton(
                text: L10n.tr().registerNewAccount,
                onPressed: () {
                  if (_formKey.currentState?.validate() != true) return;
                  if (!agreeToTerms.value) {
                    return Alerts.showToast(L10n.tr().agreeTerms);
                  }
                  final req = RegisterModel(
                    name: name.text.trim(),
                    email: email.text,
                    password: password.text,
                    password_confirmation: confirmPassword.text,
                    city_id: 0,
                    country_id: 0,
                  );
                  context.read<AuthCubit>().register(req);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
