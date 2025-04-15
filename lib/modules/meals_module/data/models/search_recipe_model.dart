import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipe_model.freezed.dart';

part 'search_recipe_model.g.dart';


@freezed
class SearchRecipeModel with _$SearchRecipeModel {
  const factory SearchRecipeModel({
    String? query,
    String? type,
    num? maxReadyTime,
    List<String>? includeIngredients,
    num? minCalories,
    num? maxCalories,
    int? number,
  }) = _SearchRecipe;

  factory SearchRecipeModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRecipeModelFromJson(json);
}
