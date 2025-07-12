import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/data/comand.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/adaptive_progress_indicator.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/personal_info/screens/start_personal_info_screen.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({super.key});

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  late final Command authCommand;

  Future<void> googleSignIn() async {
    final res = await di<AuthRepo>().getGoogleAuth();
    res.fold((error) {
      Alerts.showToast(error.message);
    }, (result) async {
      final user = result.user;
      Session().currentUser = result.user;
      await TokenService.setToken(result.token);
      if (!mounted) return;
      Alerts.showToast(result.message ?? '', error: false);
      if (user.gender == GenderEnum.female) context.read<AppCubit>().setFemaleTheme();
      if (user.hasCompleteProfile) {
        context.go(MainPage.routeWithBool(false));
      } else {
        context.pushReplacement(StartPersonalInfoScreen.route);
      }
    });
  }

  @override
  void initState() {
    authCommand = Command(googleSignIn);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          L10n.tr().or,
          style: TStyle.regular_16,
        ),
        SizedBox(
          height: 24.px,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListenableBuilder(
              listenable: authCommand,
              builder: (context, child) => authCommand.running ? const AdaptiveProgressIndicator() : child!,
              child: IconButton(
                  onPressed: () {
                    authCommand.execute();
                  },
                  icon: SvgPicture.asset(
                    Assets.iconsGoogle,
                    width: 33.px,
                    height: 33.px,
                  )),
            ),
            // IconButton(
            //     onPressed: () {},
            //     icon: SvgPicture.asset(
            //       Assets.iconsFacebook,
            //       width: 33.px,
            //       height: 33.px,
            //     )),
            // if (Platform.isIOS)
            //   IconButton(
            //       onPressed: () {},
            //       icon: SvgPicture.asset(
            //         Assets.iconsApple,
            //         width: 33.px,
            //         height: 33.px,
            //       )),
          ],
        ),
      ],
    );
  }
}
