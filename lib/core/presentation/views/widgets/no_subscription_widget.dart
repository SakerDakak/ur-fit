import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';

import '../../../../modules/subscription_module/data/models/package_model.dart';

/// Widget لعرض حالة عدم وجود اشتراك مع زر للانتقال إلى الاشتراكات
class NoSubscriptionWidget extends StatelessWidget {
  final String? message;
  final PlanType planType;
  final bool showIcon;

  const NoSubscriptionWidget({
    super.key,
    this.message,
    this.planType = PlanType.both,
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
              // أيقونة الاشتراك
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primary
                      .withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.card_membership_outlined,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 24),
            ],

            // العنوان الرئيسي
            Text(
              message ?? L10n.tr().noSubscription,
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
              _getDescriptionText(),
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            // زر الانتقال إلى الاشتراكات
            CustomElevatedButton(
              text: L10n.tr().subscribeNow,
              onPressed: () {
                GoRouter.of(context).push(
                  SubscriptionPlansScreen.routeWzExtra,
                  extra: planType,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// الحصول على النص التوضيحي حسب نوع الخطة
  String _getDescriptionText() {
    switch (planType) {
      case PlanType.exercise:
        return L10n.tr().subscribeToAccessExercises;
      case PlanType.diet:
        return L10n.tr().subscribeToAccessMeals;
      case PlanType.both:
        return L10n.tr().subscribeToAccessAllFeatures;
    }
  }
}

/// Widget لعرض حالة انتهاء صلاحية الاشتراك
class ExpiredSubscriptionWidget extends StatelessWidget {
  final String? message;
  final PlanType planType;

  const ExpiredSubscriptionWidget({
    super.key,
    this.message,
    this.planType = PlanType.both,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppConst.kHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // أيقونة انتهاء الصلاحية
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.orange.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.schedule,
                size: 60,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 24),

            // العنوان الرئيسي
            Text(
              message ?? "انتهت صلاحية الاشتراك",
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
              "جدد اشتراكك للمتابعة",
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            // زر تجديد الاشتراك
            CustomElevatedButton(
              text: "جدد الاشتراك",
              onPressed: () {
                GoRouter.of(context).push(
                  SubscriptionPlansScreen.routeWzExtra,
                  extra: planType,
                );
              },
            ),

            const SizedBox(height: 16),

            // زر عرض تاريخ انتهاء الصلاحية
            TextButton(
              onPressed: () {
                _showExpirationInfo(context);
              },
              child: Text(
                "عرض تفاصيل الاشتراك",
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// عرض معلومات انتهاء الصلاحية
  void _showExpirationInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "تفاصيل الاشتراك",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "انتهت صلاحية اشتراكك. جدد اشتراكك للاستمرار في الاستفادة من جميع الميزات.",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Text(
              "مزايا التجديد:",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "• استمرار الوصول إلى التمارين والوجبات المخصصة\n• تتبع التقدم المستمر\n• دعم الخبراء",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("إغلاق"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              GoRouter.of(context).push(
                SubscriptionPlansScreen.routeWzExtra,
                extra: planType,
              );
            },
            child: const Text("جدد الآن"),
          ),
        ],
      ),
    );
  }
}
