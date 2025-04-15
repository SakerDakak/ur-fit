import 'package:hive/hive.dart';

part 'cached_nutrition.g.dart';

@HiveType(typeId: 3)
class NutritionData extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late double calories;

  @HiveField(2)
  late double carbs;

  @HiveField(3)
  late double protein;

  @HiveField(4)
  late DateTime dateAdded;
}
