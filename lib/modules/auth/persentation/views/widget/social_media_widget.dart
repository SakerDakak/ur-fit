import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

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
            IconButton(
                onPressed: () {
                  // context.read<LoginBloc>().add(GoogleLoginEvent());
                },
                icon: SvgPicture.asset(
                  Assets.iconsGoogle,
                  width: 33.px,
                  height: 33.px,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Assets.iconsFacebook,
                  width: 33.px,
                  height: 33.px,
                )),
            if (Platform.isIOS)
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Assets.iconsApple,
                    width: 33.px,
                    height: 33.px,
                  )),
          ],
        ),
      ],
    );
  }
}
