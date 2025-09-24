import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';

import '../../../../core/presentation/style/fonts.dart';

class HomeHeader extends StatelessWidget {
  final bool isGuest;
  const HomeHeader({
    super.key,
    required this.isGuest,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserModel?>(
      stream: Session().userStream,
      initialData: Session().currentUser,
      builder: (context, snapshot) {
        final user = snapshot.data;
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
      },
    );
  }
}
