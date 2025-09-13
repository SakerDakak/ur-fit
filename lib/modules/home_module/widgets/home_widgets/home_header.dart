import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/custom_image_view.dart';

import '../../../../core/presentation/style/fonts.dart';

class HomeHeader extends StatelessWidget {
  final bool isGuest;
  const HomeHeader({
    super.key,
    required this.isGuest,
  });

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    return Column(
      children: [
        SizedBox(height: 64.px),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.px),
          child: Row(
            children: [
              // SvgPicture.asset(
              //   AssetsManager.notification,
              //   alignment: Alignment.topCenter,
              // ),
              Spacer(),
              Text('${L10n.tr().homeWelcome} ${isGuest ? L10n.tr().guest : user?.name}',
                  style: TStyle.semiBold_14.copyWith(color: Colors.white)),
              SizedBox(width: 8.px),
              CircleAvatar(
                radius: 20,
                backgroundImage: customImageView(Session().currentUser?.gender == GenderEnum.female
                    ? Assets.imageFemaleProfile
                    : Assets.imageProfileImage),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.px),
      ],
    );
  }
}
