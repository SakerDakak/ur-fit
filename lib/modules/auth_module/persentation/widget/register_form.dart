import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/routes/routes.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/generated/locale_keys.g.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/shared/widgets/compact_form_field.dart';
import '../../../../core/shared/widgets/custom_buttons.dart';
import '../../bloc/login_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 32.px,
          ),
          CompactTextFormField(
            hintText: LocaleKeys.enterFullName.tr(),
            title: LocaleKeys.fullName.tr(),
            onChanged: (String? value) {
              context.read<LoginBloc>().add(OnChangeFirstNameEvent(value!));
            },
            validator: (String? value) {
              // print("validation : ${value}");
              if (value!.isEmpty) {
                return LocaleKeys.fullNameIsRequired.tr();
              } else if (value.length < 3) {
                return LocaleKeys.fullNameMustBeAtLeast3Characters.tr();
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 24.px,
          ),
          CompactTextFormField(
            hintText: LocaleKeys.enterEmail.tr(),
            title: LocaleKeys.email.tr(),
            onChanged: (String? value) {
              context.read<LoginBloc>().add(OnChangeEmailEvent(value!));
            },
            validator: (String? value) {
              // print("validation : ${value}");
              if (value!.isEmpty) {
                return LocaleKeys.emailIsRequired.tr();
              } else if (!value.contains('@') && !value.contains('.')) {
                return LocaleKeys.emailMustBeValid.tr();
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 24.px,
          ),
          CompactPasswordTextFormField(
            hintText: LocaleKeys.enterPassword.tr(),
            title: LocaleKeys.password.tr(),
            onChanged: (String? value) {
              context.read<LoginBloc>().add(OnChangeNewPasswordEvent(value!));
            },
            validator: (String? value) {
              if (value!.isEmpty) {
                return LocaleKeys.passwordIsRequired.tr();
              } else if (value.length < 6) {
                return LocaleKeys.passwordMustBeAtLeast6Characters.tr();
              }
              return null;
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          CompactPasswordTextFormField(
            hintText: LocaleKeys.enterPassword.tr(),
            title: LocaleKeys.confirmPassword.tr(),
            onChanged: (String? value) {
              context
                  .read<LoginBloc>()
                  .add(OnChangeNewPasswordConfirmEvent(value!));
            },
            validator: (String? value) {
              if (value!.isEmpty) {
                return LocaleKeys.passwordIsRequired.tr();
              } else if (value.length < 6) {
                return LocaleKeys.passwordMustBeAtLeast6Characters.tr();
              } else if (value != context.read<LoginBloc>().state.newPassword) {
                return LocaleKeys.passwordsDoNotMatch.tr();
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.px),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocSelector<LoginBloc, LoginState, bool>(
                  selector: (state) => state.acceptTerms,
                  builder: (context, acceptTerms) {
                    return Checkbox(
                      value: acceptTerms,
                      onChanged: (val) {
                        context.read<LoginBloc>().add(ToggleTerms(val!));
                      },
                      checkColor: AppColors.whiteColor,
                      focusColor: Theme.of(context).colorScheme.primary,
                      activeColor: Theme.of(context).colorScheme.primary,
                      side: BorderSide(
                          color: Theme.of(context).colorScheme.primary),
                    );
                  },
                ),
                FittedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      LocaleKeys.agreeTerms.tr(),
                      style: CustomTextStyle.bold_14,
                    ),
                    onPressed: () {
                      context.read<LoginBloc>().add(ToggleTerms(
                          !context.read<LoginBloc>().state.acceptTerms));
                    },
                  ),
                ),
                Spacer(),
                FittedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.forgetPassword.tr(),
                        style: CustomTextStyle.bold_14.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.px,
          ),
          BlocSelector<LoginBloc, LoginState, bool>(
            selector: (state) {
              return state.acceptTerms &&
                  state.firstName.isNotEmpty &&
                  state.email.isNotEmpty &&
                  state.newPassword.isNotEmpty &&
                  state.confirmPassword.isNotEmpty;
            },
            builder: (context, terms) {
              return CustomElevatedButton(
                text: LocaleKeys.registerNewAccount.tr(),
                onPressed: terms
                    ? () => context.read<LoginBloc>().add(RegisterNowEvent())
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
