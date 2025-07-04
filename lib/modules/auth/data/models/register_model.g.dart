// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterImpl _$$RegisterImplFromJson(Map<String, dynamic> json) =>
    _$RegisterImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      country_id: (json['country_id'] as num?)?.toInt(),
      city_id: (json['city_id'] as num?)?.toInt(),
      password: json['password'] as String?,
      password_confirmation: json['password_confirmation'] as String?,
    );

Map<String, dynamic> _$$RegisterImplToJson(_$RegisterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'country_id': instance.country_id,
      'city_id': instance.city_id,
      'password': instance.password,
      'password_confirmation': instance.password_confirmation,
    };
