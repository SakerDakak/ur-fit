// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectionItemModelImpl _$$SelectionItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectionItemModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$SelectionItemModelImplToJson(
        _$SelectionItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
