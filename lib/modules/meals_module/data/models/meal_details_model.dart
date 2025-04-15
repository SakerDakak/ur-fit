import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urfit/modules/meals_module/data/models/nutrition_model.dart';

part 'meal_details_model.freezed.dart';
part 'meal_details_model.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool dairyFree,
    required bool veryHealthy,
    required bool cheap,
    required bool veryPopular,
    required bool sustainable,
    required bool lowFodmap,
    required int weightWatcherSmartPoints,
    required String gaps,
    int? preparationMinutes,
    int? cookingMinutes,
    required int aggregateLikes,
    required int healthScore,
    required String creditsText,
    required String sourceName,
    required double pricePerServing,
    required List<Ingredient> extendedIngredients,
    required int id,
    required String title,
    required int readyInMinutes,
    required int servings,
    required String sourceUrl,
    required String image,
    required String imageType,
    required NutritionsModel nutrition,
    required String summary,
    required List<String> cuisines,
    required List<String> dishTypes,
    required List<String> diets,
    required List<String> occasions,
    required List<AnalyzedInstruction> analyzedInstructions,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, Object?> json) => _$RecipeFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required int id,
    required String aisle,
    required String? image,
    required String consistency,
    required String name,
    required String? nameClean,
    required String original,
    required String originalName,
    required double amount,
    required String unit,
    required List<String> meta,
    required Measures measures,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, Object?> json) => _$IngredientFromJson(json);
}

@freezed
class Measures with _$Measures {
  const factory Measures({
    required Measure us,
    required Measure metric,
  }) = _Measures;

  factory Measures.fromJson(Map<String, Object?> json) => _$MeasuresFromJson(json);
}

@freezed
class Measure with _$Measure {
  const factory Measure({
    required double amount,
    required String unitShort,
    required String unitLong,
  }) = _Measure;

  factory Measure.fromJson(Map<String, Object?> json) => _$MeasureFromJson(json);
}

@freezed
class AnalyzedInstruction with _$AnalyzedInstruction {
  const factory AnalyzedInstruction({
    required String name,
    required List<InstructionStep> steps,
  }) = _AnalyzedInstruction;

  factory AnalyzedInstruction.fromJson(Map<String, Object?> json) => _$AnalyzedInstructionFromJson(json);
}

@freezed
class InstructionStep with _$InstructionStep {
  const factory InstructionStep({
    required int number,
    required String step,
    required List<IngredientStep> ingredients,
    required List<Equipment> equipment,
    Length? length,
  }) = _InstructionStep;

  factory InstructionStep.fromJson(Map<String, Object?> json) => _$InstructionStepFromJson(json);
}

@freezed
class IngredientStep with _$IngredientStep {
  const factory IngredientStep({
    required int id,
    required String name,
    required String localizedName,
    required String? image,
  }) = _IngredientStep;

  factory IngredientStep.fromJson(Map<String, Object?> json) => _$IngredientStepFromJson(json);
}

@freezed
class Equipment with _$Equipment {
  const factory Equipment({
    required int id,
    required String name,
    required String localizedName,
    required String image,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, Object?> json) => _$EquipmentFromJson(json);
}

@freezed
class Length with _$Length {
  const factory Length({
    required int number,
    required String unit,
  }) = _Length;

  factory Length.fromJson(Map<String, Object?> json) => _$LengthFromJson(json);
}
