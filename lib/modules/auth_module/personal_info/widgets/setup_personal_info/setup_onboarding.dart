import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/shared/widgets/custom_buttons.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/app_assets.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';

import '../../../../../core/routes/routes.dart';

class SetupPersonalInfoOnboarding extends StatelessWidget {
  const SetupPersonalInfoOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    final user = context.read<AuthenticationBloc>().currentUser;
    return Stack(
      children: [
        // image
        Positioned(
          left: -20,
          right: -20,
          top: 40,
          child: Image.asset(
            AppAssets.imageSetupPersonalInfoOnboarding,
          ),
        ),

        // content
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // user name
              Text(
                '${LocaleKeys.welcome.tr()}  ${user!.name}',
                style: CustomTextStyle.bold_24.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(height: 16),

              // welcome message
              Text(
                LocaleKeys.welcomingPhrase1.tr(),
                style: CustomTextStyle.bold_24,
              ),

              const SizedBox(height: 16),

              // setup instructions
              Text(
                LocaleKeys.welcomingPhrase2.tr(),
                style: CustomTextStyle.medium_16,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // start setup button
              CustomElevatedButton(
                text: LocaleKeys.start.tr(),
                onPressed: () => cubit.goToNextPage(),
              ),

              const SizedBox(height: 10),

              // skip button
              // TextButton(
              //   onPressed: () {
              //     context.pushNamed(Routes.authenticationScreen);
              //     context
              //         .read<AuthenticationBloc>()
              //         .add(LoggedIn(token: 'token'));
              //   },
              //   child: Text(
              //     LocaleKeys.later.tr(),
              //     style: CustomTextStyle.bold_16.copyWith(
              //       color: Theme.of(context).colorScheme.primary,
              //     ),
              //   ),
              // ),

              const SizedBox(height: 30),
            ],
          ),
        )
      ],
    );
  }
}
