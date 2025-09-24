import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class SubscriptionScreenAppBar extends StatelessWidget {
  const SubscriptionScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;
    final hasValidSubscription = user?.hasValidSubscription == true;

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
            hasValidSubscription
                ? L10n.tr().mySubscription
                : L10n.tr().subscribeNow,
            textAlign: TextAlign.center,
            style: TStyle.bold_16,
          ),
        ),
        const SizedBox(width: 40),
      ],
    );
  }
}
