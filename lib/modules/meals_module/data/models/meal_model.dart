import 'package:freezed_annotation/freezed_annotation.dart';

import 'nutrition_model.dart';

part 'meal_model.freezed.dart';
part 'meal_model.g.dart';

@freezed
abstract class MealModel with _$MealModel {
  const factory MealModel({
    required int id,
    required String? title,
    required String? image,
    required String? imageType,
    required NutritionsModel? nutrition,

  }) = _Meal;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);
}



