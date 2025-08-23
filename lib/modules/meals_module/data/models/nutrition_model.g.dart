// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Nutrition _$NutritionFromJson(Map<String, dynamic> json) => _Nutrition(
      name: json['name'] as String,
      amount: json['amount'] as num,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$NutritionToJson(_Nutrition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'unit': instance.unit,
    };

_Nutritions _$NutritionsFromJson(Map<String, dynamic> json) => _Nutritions(
      nutrients: (json['nutrients'] as List<dynamic>)
          .map((e) => NutritionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NutritionsToJson(_Nutritions instance) =>
    <String, dynamic>{
      'nutrients': instance.nutrients,
    };
