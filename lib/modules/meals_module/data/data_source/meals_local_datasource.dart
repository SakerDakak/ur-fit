import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/di.dart';
import '../models/cached_nutrition.dart';

class MealsLocalDatasource {
  static const String _nutritionDataKey = "nutritionData";

  // إضافة بيانات غذائية جديدة
  Future<void> addData(NutritionData data) async {
    try {
      final prefs = di<SharedPreferences>();
      final existingData = getAllData();

      // إضافة البيانات الجديدة مع التاريخ الحالي
      data.dateAdded = DateTime.now();
      existingData.add(data);

      // تحويل البيانات إلى JSON وحفظها
      final jsonData = existingData
          .map((item) => {
                'id': item.id,
                'calories': item.calories,
                'carbs': item.carbs,
                'protein': item.protein,
                'dateAdded': item.dateAdded.toIso8601String(),
              })
          .toList();

      await prefs.setString(_nutritionDataKey, jsonEncode(jsonData));
      print("تم حفظ البيانات الغذائية بنجاح");
    } catch (e) {
      print("خطأ في حفظ البيانات الغذائية: $e");
      throw Exception("فشل في حفظ البيانات الغذائية");
    }
  }

  // الحصول على جميع البيانات مع تنظيف البيانات القديمة
  List<NutritionData> getAllData() {
    try {
      final prefs = di<SharedPreferences>();
      final jsonString = prefs.getString(_nutritionDataKey);

      if (jsonString == null || jsonString.isEmpty) {
        return [];
      }

      final List<dynamic> jsonData = jsonDecode(jsonString);
      final List<NutritionData> nutritionData = [];
      final now = DateTime.now();

      for (var item in jsonData) {
        final data = NutritionData()
          ..id = item['id']
          ..calories = item['calories'].toDouble()
          ..carbs = item['carbs'].toDouble()
          ..protein = item['protein'].toDouble()
          ..dateAdded = DateTime.parse(item['dateAdded']);

        // التحقق من أن البيانات ليست قديمة (أكثر من يوم)
        if (_isSameDay(data.dateAdded, now)) {
          nutritionData.add(data);
        }
      }

      // حفظ البيانات المحدثة (بدون البيانات القديمة)
      if (nutritionData.length != jsonData.length) {
        _saveUpdatedData(nutritionData);
      }

      return nutritionData;
    } catch (e) {
      print("خطأ في قراءة البيانات الغذائية: $e");
      return [];
    }
  }

  // حفظ البيانات المحدثة
  Future<void> _saveUpdatedData(List<NutritionData> data) async {
    try {
      final prefs = di<SharedPreferences>();
      final jsonData = data
          .map((item) => {
                'id': item.id,
                'calories': item.calories,
                'carbs': item.carbs,
                'protein': item.protein,
                'dateAdded': item.dateAdded.toIso8601String(),
              })
          .toList();

      await prefs.setString(_nutritionDataKey, jsonEncode(jsonData));
    } catch (e) {
      print("خطأ في حفظ البيانات المحدثة: $e");
    }
  }

  // التحقق من أن التاريخين في نفس اليوم
  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  // مسح جميع البيانات يدوياً
  Future<void> clearAllData() async {
    try {
      final prefs = di<SharedPreferences>();
      await prefs.remove(_nutritionDataKey);
      print("تم مسح جميع البيانات الغذائية");
    } catch (e) {
      print("خطأ في مسح البيانات: $e");
      throw Exception("فشل في مسح البيانات");
    }
  }
}
