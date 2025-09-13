import 'package:flutter/material.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),

        // user image
        // CircleAvatar(
        //   radius: 32,
        //   backgroundImage: customImageView(Assets.imageProfileImage),
        // ),
        // const SizedBox(height: 12),

        // user name
        Text(
          user!.name.toString(),
          style: TStyle.bold_16,
        ),

        const SizedBox(height: 8),

        // email
        Text(
          user.email.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TStyle.regular_16.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
