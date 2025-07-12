import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/personal_info/screens/personal_info_layout_screen.dart';

class StartPersonalInfoScreen extends StatelessWidget {
  const StartPersonalInfoScreen({super.key});
  static const route = '/StartPersonalInfoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                    '${L10n.tr().welcome}  ${Session().currentUser?.name}',
                    style: TStyle.bold_24.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
        
                  const SizedBox(height: 16),
        
                  // welcome message
                  Text(
                    L10n.tr().welcomingPhrase1,
                    style: TStyle.bold_24,
                  ),
        
                  const SizedBox(height: 16),
        
                  // setup instructions
                  Text(
                    L10n.tr().welcomingPhrase2,
                    style: TStyle.medium_16,
                    textAlign: TextAlign.center,
                  ),
        
                  const SizedBox(height: 20),
        
                  // start setup button
                  CustomElevatedButton(
                    text: L10n.tr().start,
                    onPressed: () => context.push(PresonalInfoLayoutScreen.route),
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
        ),
      ),
    );
  }
}
