import 'dart:async';
import 'package:urfit/di.dart';
import 'package:urfit/modules/workout_module/data/services/workout_progress_local_service.dart';

/// خدمة إدارة مسح البيانات عند منتصف الليل
class MidnightDataCleanupService {
  static Timer? _timer;
  static bool _isInitialized = false;

  /// تهيئة الخدمة وبدء المراقبة
  static void initialize() {
    if (_isInitialized) return;

    _isInitialized = true;
    _scheduleNextCleanup();
  }

  /// جدولة عملية المسح التالية
  static void _scheduleNextCleanup() {
    // حساب الوقت حتى منتصف الليل التالي
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day + 1);
    final timeUntilMidnight = midnight.difference(now);

    _timer?.cancel();
    _timer = Timer(timeUntilMidnight, () {
      _performCleanup();
      _scheduleNextCleanup(); // جدولة المسح التالي
    });
  }

  /// تنفيذ عملية المسح
  static void _performCleanup() async {
    try {
      await di<WorkoutProgressLocalService>().clearTodayWorkoutProgress();
    } catch (_) {}
  }

  /// إيقاف الخدمة
  static void dispose() {
    _timer?.cancel();
    _timer = null;
    _isInitialized = false;
  }

  /// إجبار تنفيذ المسح الآن (للاستخدام في الاختبارات)
  static Future<void> forceCleanup() async {
    _performCleanup();
  }
}
