import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/modules/auth_module/bloc/authentication_bloc/authentication_bloc.dart';

import '../../../core/assets_manager.dart';
import '../../../core/shared/widgets/custom_image_view.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final user =context.read<AuthenticationBloc>().currentUser;
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
          style: CustomTextStyle.bold_16,
        ),

        const SizedBox(height: 8),

        // email
        Text(
          user.email.toString(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyle.regular_16.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
