import 'package:hive_flutter/hive_flutter.dart';
import '../models/cached_nutrition.dart';

class MealsLocalDatasource {
  static const String _boxName = "nutritionDataBox";

  // // Initialize Hive and open the box
  // static Future<void> init() async {
  //   await Hive.openBox<NutritionData>(_boxName);
  // }

  // Add data to Hive
   Future<void> addData(NutritionData data) async {
    final box = Hive.box<NutritionData>(_boxName);
    data.dateAdded = DateTime.now(); // Ensure the dateAdded is updated
    await box.put(data.id, data);
  }

  // Get all data and reset if the day has changed
   List<NutritionData> getAllData() {
    final box = Hive.box<NutritionData>(_boxName);
    final now = DateTime.now();
    final List<NutritionData> updatedData = [];

    for (var key in box.keys) {
      final NutritionData? data = box.get(key);
      if (data != null) {
        // Check if the dateAdded is not today
        if (!_isSameDay(data.dateAdded, now)) {
          box.delete(key); // Update in Hive
        }
        updatedData.add(data);
      }
    }

    return updatedData;
  }

  // Utility to check if two dates are on the same day
   bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  // Manually clear all data
   Future<void> clearAllData() async {
    final box = Hive.box<NutritionData>(_boxName);
    await box.clear();
  }
}
