
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';


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
            color: Co.whiteColor,
          ),
        ),
        Expanded(
          child: Text(
            L10n.tr().subscribeNow,
            textAlign: TextAlign.center,
            style: TStyle.bold_16,
          ),
        )
      ],
    );
  }
}
