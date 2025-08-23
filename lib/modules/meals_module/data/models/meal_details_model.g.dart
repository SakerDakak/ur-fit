// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      dairyFree: json['dairyFree'] as bool,
      veryHealthy: json['veryHealthy'] as bool,
      cheap: json['cheap'] as bool,
      veryPopular: json['veryPopular'] as bool,
      sustainable: json['sustainable'] as bool,
      lowFodmap: json['lowFodmap'] as bool,
      weightWatcherSmartPoints:
          (json['weightWatcherSmartPoints'] as num).toInt(),
      gaps: json['gaps'] as String,
      preparationMinutes: (json['preparationMinutes'] as num?)?.toInt(),
      cookingMinutes: (json['cookingMinutes'] as num?)?.toInt(),
      aggregateLikes: (json['aggregateLikes'] as num).toInt(),
      healthScore: (json['healthScore'] as num).toInt(),
      creditsText: json['creditsText'] as String,
      sourceName: json['sourceName'] as String,
      pricePerServing: (json['pricePerServing'] as num).toDouble(),
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      readyInMinutes: (json['readyInMinutes'] as num).toInt(),
      servings: (json['servings'] as num).toInt(),
      sourceUrl: json['sourceUrl'] as String,
      image: json['image'] as String,
      imageType: json['imageType'] as String,
      nutrition:
          NutritionsModel.fromJson(json['nutrition'] as Map<String, dynamic>),
      summary: json['summary'] as String,
      cuisines:
          (json['cuisines'] as List<dynamic>).map((e) => e as String).toList(),
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      diets: (json['diets'] as List<dynamic>).map((e) => e as String).toList(),
      occasions:
          (json['occasions'] as List<dynamic>).map((e) => e as String).toList(),
      analyzedInstructions: (json['analyzedInstructions'] as List<dynamic>)
          .map((e) => AnalyzedInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'dairyFree': instance.dairyFree,
      'veryHealthy': instance.veryHealthy,
      'cheap': instance.cheap,
      'veryPopular': instance.veryPopular,
      'sustainable': instance.sustainable,
      'lowFodmap': instance.lowFodmap,
      'weightWatcherSmartPoints': instance.weightWatcherSmartPoints,
      'gaps': instance.gaps,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregateLikes': instance.aggregateLikes,
      'healthScore': instance.healthScore,
      'creditsText': instance.creditsText,
      'sourceName': instance.sourceName,
      'pricePerServing': instance.pricePerServing,
      'extendedIngredients': instance.extendedIngredients,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'imageType': instance.imageType,
      'nutrition': instance.nutrition,
      'summary': instance.summary,
      'cuisines': instance.cuisines,
      'dishTypes': instance.dishTypes,
      'diets': instance.diets,
      'occasions': instance.occasions,
      'analyzedInstructions': instance.analyzedInstructions,
    };

_Ingredient _$IngredientFromJson(Map<String, dynamic> json) => _Ingredient(
      id: (json['id'] as num).toInt(),
      aisle: json['aisle'] as String,
      image: json['image'] as String?,
      consistency: json['consistency'] as String,
      name: json['name'] as String,
      nameClean: json['nameClean'] as String?,
      original: json['original'] as String,
      originalName: json['originalName'] as String,
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
      meta: (json['meta'] as List<dynamic>).map((e) => e as String).toList(),
      measures: Measures.fromJson(json['measures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IngredientToJson(_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aisle': instance.aisle,
      'image': instance.image,
      'consistency': instance.consistency,
      'name': instance.name,
      'nameClean': instance.nameClean,
      'original': instance.original,
      'originalName': instance.originalName,
      'amount': instance.amount,
      'unit': instance.unit,
      'meta': instance.meta,
      'measures': instance.measures,
    };

_Measures _$MeasuresFromJson(Map<String, dynamic> json) => _Measures(
      us: Measure.fromJson(json['us'] as Map<String, dynamic>),
      metric: Measure.fromJson(json['metric'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MeasuresToJson(_Measures instance) => <String, dynamic>{
      'us': instance.us,
      'metric': instance.metric,
    };

_Measure _$MeasureFromJson(Map<String, dynamic> json) => _Measure(
      amount: (json['amount'] as num).toDouble(),
      unitShort: json['unitShort'] as String,
      unitLong: json['unitLong'] as String,
    );

Map<String, dynamic> _$MeasureToJson(_Measure instance) => <String, dynamic>{
      'amount': instance.amount,
      'unitShort': instance.unitShort,
      'unitLong': instance.unitLong,
    };

_AnalyzedInstruction _$AnalyzedInstructionFromJson(Map<String, dynamic> json) =>
    _AnalyzedInstruction(
      name: json['name'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => InstructionStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnalyzedInstructionToJson(
        _AnalyzedInstruction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
    };

_InstructionStep _$InstructionStepFromJson(Map<String, dynamic> json) =>
    _InstructionStep(
      number: (json['number'] as num).toInt(),
      step: json['step'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => IngredientStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipment: (json['equipment'] as List<dynamic>)
          .map((e) => Equipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      length: json['length'] == null
          ? null
          : Length.fromJson(json['length'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InstructionStepToJson(_InstructionStep instance) =>
    <String, dynamic>{
      'number': instance.number,
      'step': instance.step,
      'ingredients': instance.ingredients,
      'equipment': instance.equipment,
      'length': instance.length,
    };

_IngredientStep _$IngredientStepFromJson(Map<String, dynamic> json) =>
    _IngredientStep(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      localizedName: json['localizedName'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$IngredientStepToJson(_IngredientStep instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'image': instance.image,
    };

_Equipment _$EquipmentFromJson(Map<String, dynamic> json) => _Equipment(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      localizedName: json['localizedName'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$EquipmentToJson(_Equipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'image': instance.image,
    };

_Length _$LengthFromJson(Map<String, dynamic> json) => _Length(
      number: (json['number'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$LengthToJson(_Length instance) => <String, dynamic>{
      'number': instance.number,
      'unit': instance.unit,
    };
