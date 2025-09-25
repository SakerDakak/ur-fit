import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

/// Widget لعرض حالة عدم دعم الباقة للتغذية
class PackageNotSupportNutritionWidget extends StatelessWidget {
  final String? message;
  final bool showIcon;

  const PackageNotSupportNutritionWidget({
    super.key,
    this.message,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConst.kHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showIcon) ...[
              // أيقونة عدم الدعم
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.orange.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.block_outlined,
                  size: 60,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 24),
            ],

            // العنوان الرئيسي
            Text(
              message ?? L10n.tr().packageDoesNotSupportNutrition,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 12),

            // النص التوضيحي
            Text(
              L10n.tr().packageDoesNotSupportNutritionDescription,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
