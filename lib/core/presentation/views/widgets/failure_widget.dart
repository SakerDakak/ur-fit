import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.message, this.onRetry});
  final String message;
  final Function()? onRetry;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message,
          style: TStyle.bold_16.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        if (onRetry != null)
          ElevatedButton(
            onPressed: onRetry,
            child: Text(
              L10n.tr().retry,
              style: TStyle.bold_16.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
      ],
    );
  }
}
