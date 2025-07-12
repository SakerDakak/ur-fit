import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/data/comand.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/alerts.dart';
import 'package:urfit/core/presentation/views/widgets/adaptive_progress_indicator.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/repo/auth_helper.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';

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
      AuthHelper().setUserAndNavigate(context, result.user);
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
