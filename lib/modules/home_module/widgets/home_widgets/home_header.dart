import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/shared/widgets/custom_image_view.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc/authentication_bloc.dart';

import '../../../../core/assets_manager.dart';
import '../../../../core/style/fonts.dart';

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
              Text('${LocaleKeys.homeWelcome.tr()}${isGuest ? LocaleKeys.guest.tr() : user?.name}',
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
