
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/custom_image_view.dart';
import 'package:urfit/modules/auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';

import '../../../../core/presentation/assets/assets_manager.dart';
import '../../../../core/presentation/style/fonts.dart';

class HomeHeader extends StatelessWidget {
  final bool isGuest;
  const HomeHeader({
    super.key, required this.isGuest,
  });

  @override
  Widget build(BuildContext context) {
    final user =context.read<AuthenticationBloc>().currentUser;
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
              Text('${L10n.tr().homeWelcome}${isGuest ? L10n.tr().guest : user?.name}',
                  style: CustomTextStyle.semiBold_14
                      .copyWith(color: Colors.white)),
              SizedBox(width: 8.px),
              CircleAvatar(
                radius: 20,
                backgroundImage: customImageView( AssetsManager.profileImage),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.px),
      ],
    );
  }
}
