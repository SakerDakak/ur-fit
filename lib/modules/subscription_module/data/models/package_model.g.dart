// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageImpl _$$PackageImplFromJson(Map<String, dynamic> json) =>
    _$PackageImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      duration: (json['duration'] as num).toInt(),
      price: json['price'] as String,
      type: $enumDecode(_$PlanTypeEnumMap, json['type']),
      is_active: (json['is_active'] as num).toInt(),
      image: json['image'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PackageImplToJson(_$PackageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'price': instance.price,
      'type': _$PlanTypeEnumMap[instance.type]!,
      'is_active': instance.is_active,
      'image': instance.image,
      'description': instance.description,
    };

const _$PlanTypeEnumMap = {
  PlanType.exercise: 'exercise',
  PlanType.diet: 'diet',
  PlanType.both: 'both',
};
