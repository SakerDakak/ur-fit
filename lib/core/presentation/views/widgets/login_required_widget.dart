import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';

/// Widget لعرض حالة عدم تسجيل الدخول مع زر للانتقال إلى صفحة تسجيل الدخول
class LoginRequiredWidget extends StatelessWidget {
  final String? message;
  final bool showIcon;

  const LoginRequiredWidget({
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
              // أيقونة تسجيل الدخول
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
                  Icons.login_outlined,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 24),
            ],

            // العنوان الرئيسي
            Text(
              message ?? L10n.tr().loginRequired,
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
              L10n.tr().pleaseLoginToAccessMeals,
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

            // زر الانتقال إلى تسجيل الدخول
            CustomElevatedButton(
              text: L10n.tr().signIn,
              onPressed: () {
                GoRouter.of(context).push(AuthScreen.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
