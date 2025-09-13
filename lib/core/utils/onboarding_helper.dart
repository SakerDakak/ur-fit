import 'package:urfit/core/data/services/storage_keys.dart';

/// مساعد لإدارة شاشة التعريف (Onboarding)
/// يحتوي على دوال مساعدة للتطوير والاختبار
class OnboardingHelper {
  OnboardingHelper._();

  /// إعادة تعيين حالة شاشة التعريف (للتطوير والاختبار فقط)
  /// يمكن استخدامها في التطوير لإعادة عرض شاشة التعريف
  static Future<void> resetOnboardingForTesting() async {
    await OnboardingService.resetOnboarding();
    print("تم إعادة تعيين حالة شاشة التعريف - ستعرض في المرة القادمة");
  }

  /// التحقق من حالة شاشة التعريف
  static bool getOnboardingStatus() {
    final isCompleted = OnboardingService.isOnboardingCompleted();
    print("حالة شاشة التعريف: ${isCompleted ? 'مكتملة' : 'غير مكتملة'}");
    return isCompleted;
  }

  /// إجبار إكمال شاشة التعريف (للتطوير والاختبار فقط)
  static Future<void> forceCompleteOnboarding() async {
    await OnboardingService.setOnboardingCompleted();
    print("تم إجبار إكمال شاشة التعريف");
  }
}
