import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/routes/routes.dart';
import 'package:urfit/core/shared/widgets/compact_form_field.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/core/utils/constants.dart';

import '../../auth_module/bloc/authentication_bloc.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationBloc>().currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('تغير البريد الالكترونى'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset(
            AppAssets.imageLogo,
            width: 150,
          ),
          const SizedBox(height: 16),
          Text(
            'اعادة تعين البريد الالكترونى الخاص بك.',
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 32),
          CompactTextFormField(
            title: 'البريد الالكترونى',
            hintText: 'البريد الالكترونى',
            initialValue: user?.email.toString(),
            padding: EdgeInsets.zero,
            borderColor: AppColors.strockColor,
            titleStyle: CustomTextStyle.regular_14,
          ),
          const SizedBox(height: 32),
          CustomElevatedButton(
            text: 'تغير',
            onPressed: () => GoRouter.of(context).push(Routes.otpScreenNew),
            padding: EdgeInsets.zero,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
