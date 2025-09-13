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
              const CircleAvatar(
                radius: 20,
                child: Icon(Icons.person),
              ),
              SizedBox(width: 8.px),
              Text('${isGuest ? L10n.tr().guest : user?.name}',
                  style: TStyle.semiBold_14.copyWith(color: Colors.white)),
              const Spacer(),
            ],
          ),
        ),
        SizedBox(height: 16.px),
      ],
    );
  }
}
