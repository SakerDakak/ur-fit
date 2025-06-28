import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/shared/widgets/compact_form_field.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/profile_module/screens/otp_screen.dart';

import '../../auth_module/bloc/authentication_bloc/authentication_bloc.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});
  static const route = '/changeEmailScreen';

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;

    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.changeEmail.tr()),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            Assets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.changeEmailPhrase.tr(),
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 32),
          CompactTextFormField(
            title: LocaleKeys.email.tr(),
            hintText: LocaleKeys.email.tr(),
            initialValue: user?.email.toString(),
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),
          const SizedBox(height: 32),
          CustomElevatedButton(
            text: LocaleKeys.confirm.tr(),
            onPressed: () => GoRouter.of(context).push(OtpScreen.route),
            padding: EdgeInsets.zero,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
