// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiscountValue _$DiscountValueFromJson(Map<String, dynamic> json) =>
    _DiscountValue(
      discount_value_price: json['discount_value_price'] as num,
      final_price: json['final_price'] as num,
    );

Map<String, dynamic> _$DiscountValueToJson(_DiscountValue instance) =>
    <String, dynamic>{
      'discount_value_price': instance.discount_value_price,
      'final_price': instance.final_price,
    };
