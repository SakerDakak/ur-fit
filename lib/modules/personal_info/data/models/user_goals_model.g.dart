// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_goals_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoalsSectionOneModel _$GoalsSectionOneModelFromJson(
        Map<String, dynamic> json) =>
    _GoalsSectionOneModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      sectionTwoType: $enumDecodeNullable(
          _$GoalsSectionTwoEnumEnumMap, json['sectionTwoType']),
      sectionOneType: $enumDecodeNullable(
          _$GoalsSectionOneEnumEnumMap, json['sectionOneType']),
    );

Map<String, dynamic> _$GoalsSectionOneModelToJson(
        _GoalsSectionOneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'sectionTwoType': _$GoalsSectionTwoEnumEnumMap[instance.sectionTwoType],
      'sectionOneType': _$GoalsSectionOneEnumEnumMap[instance.sectionOneType],
    };

const _$GoalsSectionTwoEnumEnumMap = {
  GoalsSectionTwoEnum.buildMuscles: 'buildMuscles',
  GoalsSectionTwoEnum.improveFitness: 'improveFitness',
};

const _$GoalsSectionOneEnumEnumMap = {
  GoalsSectionOneEnum.nutrition: 'nutrition',
  GoalsSectionOneEnum.newLook: 'newLook',
};
