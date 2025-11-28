import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/di.dart';

/// خدمة التخزين المحلي لقيم المياه والنوم والخطوات المعدلة يدوياً
class HealthLocalService {
  static const String _waterAdjustmentsKey = "water_adjustments";
  static const String _sleepAdjustmentsKey = "sleep_adjustments";
  static const String _stepsAdjustmentsKey = "steps_adjustments";

  /// حفظ تعديل المياه لليوم الحالي
  /// [originalValue] القيمة الأصلية من Health Connect
  /// [newValue] القيمة الجديدة التي أدخلها المستخدم
  static Future<void> saveWaterAdjustment(
      DateTime date, double originalValue, double newValue) async {
    try {
      final prefs = di<SharedPreferences>();
      final dateKey = _getDateKey(date);
      final adjustment = newValue - originalValue;

      final existingData = getAllWaterAdjustments();
      existingData[dateKey] = adjustment;

      await prefs.setString(_waterAdjustmentsKey, jsonEncode(existingData));
    } catch (e) {
      print("خطأ في حفظ تعديل المياه: $e");
    }
  }

  /// حفظ تعديل النوم لليوم الحالي
  /// [originalValue] القيمة الأصلية من Health Connect (بالدقائق)
  /// [newValue] القيمة الجديدة التي أدخلها المستخدم (بالساعات)
  static Future<void> saveSleepAdjustment(
      DateTime date, double originalValueInMinutes, double newValueInHours) async {
    try {
      final prefs = di<SharedPreferences>();
      final dateKey = _getDateKey(date);
      // تحويل الساعات إلى دقائق
      final newValueInMinutes = newValueInHours * 60;
      final adjustment = newValueInMinutes - originalValueInMinutes;

      print("=== HealthLocalService.saveSleepAdjustment ===");
      print("dateKey: $dateKey");
      print("newValueInMinutes: $newValueInMinutes");
      print("originalValueInMinutes: $originalValueInMinutes");
      print("adjustment: $adjustment");

      final existingData = getAllSleepAdjustments();
      existingData[dateKey] = adjustment;

      await prefs.setString(_sleepAdjustmentsKey, jsonEncode(existingData));
      
      // التحقق من الحفظ
      final savedData = getAllSleepAdjustments();
      print("تم الحفظ - البيانات المحفوظة: $savedData");
      print("القيمة المحفوظة لليوم: ${savedData[dateKey]}");
    } catch (e) {
      print("خطأ في حفظ تعديل النوم: $e");
    }
  }

  /// حفظ تعديل الخطوات لليوم الحالي
  /// [originalValue] القيمة الأصلية من Health Connect
  /// [newValue] القيمة الجديدة التي أدخلها المستخدم
  static Future<void> saveStepsAdjustment(
      DateTime date, int originalValue, int newValue) async {
    try {
      final prefs = di<SharedPreferences>();
      final dateKey = _getDateKey(date);
      final adjustment = (newValue - originalValue).toDouble();

      print("=== HealthLocalService.saveStepsAdjustment ===");
      print("dateKey: $dateKey");
      print("originalValue: $originalValue");
      print("newValue: $newValue");
      print("adjustment: $adjustment");

      final existingData = getAllStepsAdjustments();
      existingData[dateKey] = adjustment;

      await prefs.setString(_stepsAdjustmentsKey, jsonEncode(existingData));
      
      // التحقق من الحفظ
      final savedData = getAllStepsAdjustments();
      print("تم الحفظ - البيانات المحفوظة: $savedData");
      print("القيمة المحفوظة لليوم: ${savedData[dateKey]}");
    } catch (e) {
      print("خطأ في حفظ تعديل الخطوات: $e");
    }
  }

  /// الحصول على تعديل المياه لليوم المحدد
  static double getWaterAdjustment(DateTime date) {
    try {
      final dateKey = _getDateKey(date);
      final adjustments = getAllWaterAdjustments();
      return adjustments[dateKey] ?? 0.0;
    } catch (e) {
      print("خطأ في قراءة تعديل المياه: $e");
      return 0.0;
    }
  }

  /// الحصول على تعديل النوم لليوم المحدد (بالدقائق)
  static double getSleepAdjustment(DateTime date) {
    try {
      final dateKey = _getDateKey(date);
      final adjustments = getAllSleepAdjustments();
      final adjustment = adjustments[dateKey] ?? 0.0;
      print("=== HealthLocalService.getSleepAdjustment ===");
      print("dateKey: $dateKey");
      print("جميع التعديلات: $adjustments");
      print("التعديل لليوم: $adjustment");
      return adjustment;
    } catch (e) {
      print("خطأ في قراءة تعديل النوم: $e");
      return 0.0;
    }
  }

  /// الحصول على تعديل الخطوات لليوم المحدد
  static int getStepsAdjustment(DateTime date) {
    try {
      final dateKey = _getDateKey(date);
      final adjustments = getAllStepsAdjustments();
      final adjustment = adjustments[dateKey] ?? 0.0;
      print("=== HealthLocalService.getStepsAdjustment ===");
      print("dateKey: $dateKey");
      print("جميع التعديلات: $adjustments");
      print("التعديل لليوم: $adjustment");
      return adjustment.toInt();
    } catch (e) {
      print("خطأ في قراءة تعديل الخطوات: $e");
      return 0;
    }
  }

  /// الحصول على جميع تعديلات المياه
  static Map<String, double> getAllWaterAdjustments() {
    try {
      final prefs = di<SharedPreferences>();
      final jsonString = prefs.getString(_waterAdjustmentsKey);

      if (jsonString == null || jsonString.isEmpty) {
        return {};
      }

      final Map<String, dynamic> jsonData = jsonDecode(jsonString);
      final Map<String, double> adjustments = {};

      jsonData.forEach((key, value) {
        adjustments[key] = (value as num).toDouble();
      });

      return adjustments;
    } catch (e) {
      print("خطأ في قراءة تعديلات المياه: $e");
      return {};
    }
  }

  /// الحصول على جميع تعديلات النوم
  static Map<String, double> getAllSleepAdjustments() {
    try {
      final prefs = di<SharedPreferences>();
      final jsonString = prefs.getString(_sleepAdjustmentsKey);

      if (jsonString == null || jsonString.isEmpty) {
        return {};
      }

      final Map<String, dynamic> jsonData = jsonDecode(jsonString);
      final Map<String, double> adjustments = {};

      jsonData.forEach((key, value) {
        adjustments[key] = (value as num).toDouble();
      });

      return adjustments;
    } catch (e) {
      print("خطأ في قراءة تعديلات النوم: $e");
      return {};
    }
  }

  /// الحصول على جميع تعديلات الخطوات
  static Map<String, double> getAllStepsAdjustments() {
    try {
      final prefs = di<SharedPreferences>();
      final jsonString = prefs.getString(_stepsAdjustmentsKey);

      if (jsonString == null || jsonString.isEmpty) {
        return {};
      }

      final Map<String, dynamic> jsonData = jsonDecode(jsonString);
      final Map<String, double> adjustments = {};

      jsonData.forEach((key, value) {
        adjustments[key] = (value as num).toDouble();
      });

      return adjustments;
    } catch (e) {
      print("خطأ في قراءة تعديلات الخطوات: $e");
      return {};
    }
  }

  /// تنظيف البيانات القديمة (أكثر من 30 يوم)
  static Future<void> cleanOldData() async {
    try {
      final prefs = di<SharedPreferences>();
      final now = DateTime.now();
      final cutoffDate = now.subtract(const Duration(days: 30));

      // تنظيف تعديلات المياه
      final waterAdjustments = getAllWaterAdjustments();
      final cleanedWater = <String, double>{};
      waterAdjustments.forEach((dateKey, value) {
        final date = _parseDateKey(dateKey);
        if (date != null && date.isAfter(cutoffDate)) {
          cleanedWater[dateKey] = value;
        }
      });
      await prefs.setString(_waterAdjustmentsKey, jsonEncode(cleanedWater));

      // تنظيف تعديلات النوم
      final sleepAdjustments = getAllSleepAdjustments();
      final cleanedSleep = <String, double>{};
      sleepAdjustments.forEach((dateKey, value) {
        final date = _parseDateKey(dateKey);
        if (date != null && date.isAfter(cutoffDate)) {
          cleanedSleep[dateKey] = value;
        }
      });
      await prefs.setString(_sleepAdjustmentsKey, jsonEncode(cleanedSleep));

      // تنظيف تعديلات الخطوات
      final stepsAdjustments = getAllStepsAdjustments();
      final cleanedSteps = <String, double>{};
      stepsAdjustments.forEach((dateKey, value) {
        final date = _parseDateKey(dateKey);
        if (date != null && date.isAfter(cutoffDate)) {
          cleanedSteps[dateKey] = value;
        }
      });
      await prefs.setString(_stepsAdjustmentsKey, jsonEncode(cleanedSteps));
    } catch (e) {
      print("خطأ في تنظيف البيانات القديمة: $e");
    }
  }

  /// تحويل التاريخ إلى مفتاح نصي
  static String _getDateKey(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  /// تحويل المفتاح النصي إلى تاريخ
  static DateTime? _parseDateKey(String dateKey) {
    try {
      final parts = dateKey.split('-');
      if (parts.length == 3) {
        return DateTime(
          int.parse(parts[0]),
          int.parse(parts[1]),
          int.parse(parts[2]),
        );
      }
    } catch (e) {
      print("خطأ في تحليل مفتاح التاريخ: $e");
    }
    return null;
  }
}

