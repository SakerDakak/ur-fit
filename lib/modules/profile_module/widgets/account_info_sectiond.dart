import 'package:flutter/material.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

import '../../../core/presentation/assets/assets_manager.dart';
import '../../../core/presentation/views/widgets/custom_image_view.dart';

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
        CircleAvatar(
          radius: 32,
          backgroundImage: customImageView(AssetsManager.profileImage),
        ),
        const SizedBox(height: 12),

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
