// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StaticPageModel _$StaticPageModelFromJson(Map<String, dynamic> json) =>
    _StaticPageModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$StaticPageModelToJson(_StaticPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'key': instance.key,
    };
