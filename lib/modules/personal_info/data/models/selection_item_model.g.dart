// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SelectionItemModel _$SelectionItemModelFromJson(Map<String, dynamic> json) =>
    _SelectionItemModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SelectionItemModelToJson(_SelectionItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
