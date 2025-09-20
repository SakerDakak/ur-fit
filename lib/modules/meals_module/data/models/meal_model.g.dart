// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meal _$MealFromJson(Map<String, dynamic> json) => _Meal(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      nutrition: json['nutrition'] == null
          ? null
          : NutritionsModel.fromJson(json['nutrition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MealToJson(_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imageType': instance.imageType,
      'nutrition': instance.nutrition,
    };
