// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutritionImpl _$$NutritionImplFromJson(Map<String, dynamic> json) =>
    _$NutritionImpl(
      name: json['name'] as String,
      amount: json['amount'] as num,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$NutritionImplToJson(_$NutritionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'unit': instance.unit,
    };

_$NutritionsImpl _$$NutritionsImplFromJson(Map<String, dynamic> json) =>
    _$NutritionsImpl(
      nutrients: (json['nutrients'] as List<dynamic>)
          .map((e) => NutritionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NutritionsImplToJson(_$NutritionsImpl instance) =>
    <String, dynamic>{
      'nutrients': instance.nutrients,
    };
