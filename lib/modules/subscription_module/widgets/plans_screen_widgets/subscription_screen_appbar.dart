import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/generated/locale_keys.g.dart';

class SubscriptionScreenAppBar extends StatelessWidget {
  const SubscriptionScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          iconSize: 24,
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.whiteColor,
          ),
        ),
        Expanded(
          child: Text(
            LocaleKeys.subscribeNow.tr(),
            textAlign: TextAlign.center,
            style: CustomTextStyle.bold_16,
          ),
        )
      ],
    );
  }
}
