import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

/// Widget لعرض حالة عدم وجود تمرين اليوم
class NoWorkoutTodayWidget extends StatelessWidget {
  final String? message;
  final bool showIcon;

  const NoWorkoutTodayWidget({
    super.key,
    this.message,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        children: [
          if (showIcon) ...[
            // أيقونة عدم وجود تمرين
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.fitness_center_outlined,
                size: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
          ],

          // العنوان الرئيسي
          Text(
            message ?? L10n.tr().noWorkoutToday,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 8),

          // النص التوضيحي
          Text(
            "استمتع بيوم راحة أو قم بتمارين خفيفة حسب رغبتك",
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
    );
  }
}
