// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
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

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
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

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
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

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
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

_$MeasuresImpl _$$MeasuresImplFromJson(Map<String, dynamic> json) =>
    _$MeasuresImpl(
      us: Measure.fromJson(json['us'] as Map<String, dynamic>),
      metric: Measure.fromJson(json['metric'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeasuresImplToJson(_$MeasuresImpl instance) =>
    <String, dynamic>{
      'us': instance.us,
      'metric': instance.metric,
    };

_$MeasureImpl _$$MeasureImplFromJson(Map<String, dynamic> json) =>
    _$MeasureImpl(
      amount: (json['amount'] as num).toDouble(),
      unitShort: json['unitShort'] as String,
      unitLong: json['unitLong'] as String,
    );

Map<String, dynamic> _$$MeasureImplToJson(_$MeasureImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unitShort': instance.unitShort,
      'unitLong': instance.unitLong,
    };

_$AnalyzedInstructionImpl _$$AnalyzedInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyzedInstructionImpl(
      name: json['name'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => InstructionStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalyzedInstructionImplToJson(
        _$AnalyzedInstructionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
    };

_$InstructionStepImpl _$$InstructionStepImplFromJson(
        Map<String, dynamic> json) =>
    _$InstructionStepImpl(
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

Map<String, dynamic> _$$InstructionStepImplToJson(
        _$InstructionStepImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'step': instance.step,
      'ingredients': instance.ingredients,
      'equipment': instance.equipment,
      'length': instance.length,
    };

_$IngredientStepImpl _$$IngredientStepImplFromJson(Map<String, dynamic> json) =>
    _$IngredientStepImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      localizedName: json['localizedName'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$IngredientStepImplToJson(
        _$IngredientStepImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'image': instance.image,
    };

_$EquipmentImpl _$$EquipmentImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      localizedName: json['localizedName'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$EquipmentImplToJson(_$EquipmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'image': instance.image,
    };

_$LengthImpl _$$LengthImplFromJson(Map<String, dynamic> json) => _$LengthImpl(
      number: (json['number'] as num).toInt(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$LengthImplToJson(_$LengthImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'unit': instance.unit,
    };
