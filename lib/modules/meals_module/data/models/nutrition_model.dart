import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_model.freezed.dart';
part 'nutrition_model.g.dart';

@freezed
class NutritionModel with _$NutritionModel {
  const factory NutritionModel({
    required String name,
    required num amount,
    required String unit,
  }) = _Nutrition;

  factory NutritionModel.fromJson(Map<String, dynamic> json) =>
      _$NutritionModelFromJson(json);
}

@freezed
class NutritionsModel with _$NutritionsModel {
  const factory NutritionsModel({
    required List<NutritionModel> nutrients,
  }) = _Nutritions;

  factory NutritionsModel.fromJson(Map<String, dynamic> json) =>
      _$NutritionsModelFromJson(json);
}