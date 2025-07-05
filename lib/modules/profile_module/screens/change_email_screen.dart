import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/compact_form_field.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/profile_module/screens/otp_screen.dart';

import '../../auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});
  static const route = '/changeEmailScreen';

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().changeEmail),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            Assets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            L10n.tr().changeEmailPhrase,
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 32),
          CompactTextFormField(
            title: L10n.tr().email,
            hintText: L10n.tr().email,
            initialValue: user?.email.toString(),
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),
          const SizedBox(height: 32),
          CustomElevatedButton(
            text: L10n.tr().confirm,
            onPressed: () => GoRouter.of(context).push(OtpScreen.route),
            padding: EdgeInsets.zero,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
