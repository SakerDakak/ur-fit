// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_features_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFeaturesImpl _$$UserFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$UserFeaturesImpl(
      search_results_table: json['search_results_table'] as bool?,
      recently_opened_files: json['recently_opened_files'] as bool?,
      search_history: json['search_history'] as bool?,
      highlights_and_notes: json['highlights_and_notes'] as bool?,
      gpt: json['gpt'] as bool?,
      my_folders: json['my_folders'] as bool?,
      contracts: json['contracts'] as bool?,
    );

Map<String, dynamic> _$$UserFeaturesImplToJson(_$UserFeaturesImpl instance) =>
    <String, dynamic>{
      'search_results_table': instance.search_results_table,
      'recently_opened_files': instance.recently_opened_files,
      'search_history': instance.search_history,
      'highlights_and_notes': instance.highlights_and_notes,
      'gpt': instance.gpt,
      'my_folders': instance.my_folders,
      'contracts': instance.contracts,
    };
