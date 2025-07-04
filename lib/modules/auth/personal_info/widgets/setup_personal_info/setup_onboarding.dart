
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:urfit/modules/auth/personal_info/controller/cubit/setup_personal_info_cubit.dart';

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
            Assets.imageSetupPersonalInfoOnboarding,
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
                '${L10n.tr().welcome}  ${user!.name}',
                style: CustomTextStyle.bold_24.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),

              const SizedBox(height: 16),

              // welcome message
              Text(
                L10n.tr().welcomingPhrase1,
                style: CustomTextStyle.bold_24,
              ),

              const SizedBox(height: 16),

              // setup instructions
              Text(
                L10n.tr().welcomingPhrase2,
                style: CustomTextStyle.medium_16,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // start setup button
              CustomElevatedButton(
                text: L10n.tr().start,
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
              //     L10n.tr().later,
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
