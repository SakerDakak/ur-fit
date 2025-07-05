import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

import '../../../../../core/presentation/style/colors.dart';
import '../../../../../core/presentation/views/widgets/compact_form_field.dart';
import '../../../../../core/presentation/views/widgets/custom_buttons.dart';

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
            hintText: L10n.tr().enterFullName,
            title: L10n.tr().fullName,
            onChanged: (String? value) {
              /// TODO : Implement first name change logic
              // context.read<LoginBloc>().onChangeFirstName(value!);
            },
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
          SizedBox(
            height: 24.px,
          ),
          CompactTextFormField(
            hintText: L10n.tr().enterEmail,
            title: L10n.tr().email,
            onChanged: (String? value) {
              /// TODO : Implement email change logic
              // context.read<LoginBloc>().onChangeEmail(value!);
            },
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
            hintText: L10n.tr().enterPassword,
            title: L10n.tr().password,
            onChanged: (String? value) {
              /// TODO : Implement new password change logic
              // context.read<LoginBloc>().onChangeNewPassword(value!);
            },
            validator: (String? value) {
              if (value!.isEmpty) {
                return L10n.tr().passwordIsRequired;
              } else if (value.length < 6) {
                return L10n.tr().passwordMustBeAtLeast6Characters;
              }
              return null;
            },
          ),
          SizedBox(
            height: 16.px,
          ),
          CompactPasswordTextFormField(
            hintText: L10n.tr().enterPassword,
            title: L10n.tr().confirmPassword,
            onChanged: (String? value) {
              /// TODO : Implement confirm password change logic
              // context.read<LoginBloc>().onChangeNewPasswordConfirm(value!);
            },
            validator: (String? value) {
              if (value!.isEmpty) {
                return L10n.tr().passwordIsRequired;
              } else if (value.length < 6) {
                return L10n.tr().passwordMustBeAtLeast6Characters;
              } else if (false
                  // value != context.read<LoginBloc>().state.newPassword
                  ) {
                return L10n.tr().passwordsDoNotMatch;
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
                FittedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      L10n.tr().agreeTerms,
                      style: CustomTextStyle.bold_14,
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
                  checkColor: AppColors.whiteColor,
                  focusColor: Theme.of(context).colorScheme.primary,
                  activeColor: Theme.of(context).colorScheme.primary,
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                ),
                Spacer(),
                FittedBox(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        L10n.tr().forgetPassword,
                        style: CustomTextStyle.bold_14.copyWith(color: Theme.of(context).colorScheme.primary),
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
            onPressed: () {}, // terms ? () => context.read<LoginBloc>().registerNow() : null,
          )
        ],
      ),
    );
  }
}
