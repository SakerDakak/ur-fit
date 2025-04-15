// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaticPageModelImpl _$$StaticPageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StaticPageModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$StaticPageModelImplToJson(
        _$StaticPageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'key': instance.key,
    };
