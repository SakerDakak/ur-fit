import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),

        // user avatar circle
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
            border: Border.all(
              color:
                  Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
              width: 2,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              Assets.iconsProfile,
              width: 40,
              height: 40,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // user name
        Text(
          user!.name.toString(),
          style: TStyle.bold_16,
          textAlign: TextAlign.center,
        ),
        // email
        Text(
          user.email.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TStyle.regular_16.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),

        const SizedBox(height: 8),
      ],
    );
  }
}
