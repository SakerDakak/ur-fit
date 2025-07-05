// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPersonalInfoModelImpl _$$UserPersonalInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPersonalInfoModelImpl(
      gender: $enumDecodeNullable(_$GenderEnumEnumMap, json['gender']),
      age: (json['age'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toDouble(),
      current_weight: (json['current_weight'] as num?)?.toDouble(),
      selectedGaols: (json['selectedGaols'] as List<dynamic>)
          .map((e) => UserGoalsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetWeight: (json['targetWeight'] as num?)?.toDouble(),
      diet_id: (json['diet_id'] as num?)?.toInt(),
      likedMealsIds: (json['likedMealsIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      notLikedMealsIds: (json['notLikedMealsIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      mealsVariantsId: (json['mealsVariantsId'] as num?)?.toInt(),
      workoutTypesIds: (json['workoutTypesIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      muscleFocusIds: (json['muscleFocusIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      exciseDays: (json['exciseDays'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      equipmentsIds: (json['equipmentsIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      numOfDailyMeals: json['numOfDailyMeals'] as String?,
      mealVarietyLevel: (json['mealVarietyLevel'] as num?)?.toInt(),
      weaklyTrainingCount: (json['weaklyTrainingCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserPersonalInfoModelImplToJson(
        _$UserPersonalInfoModelImpl instance) =>
    <String, dynamic>{
      'gender': _$GenderEnumEnumMap[instance.gender],
      'age': instance.age,
      'height': instance.height,
      'current_weight': instance.current_weight,
      'selectedGaols': instance.selectedGaols,
      'targetWeight': instance.targetWeight,
      'diet_id': instance.diet_id,
      'likedMealsIds': instance.likedMealsIds,
      'notLikedMealsIds': instance.notLikedMealsIds,
      'mealsVariantsId': instance.mealsVariantsId,
      'workoutTypesIds': instance.workoutTypesIds,
      'muscleFocusIds': instance.muscleFocusIds,
      'exciseDays': instance.exciseDays,
      'equipmentsIds': instance.equipmentsIds,
      'numOfDailyMeals': instance.numOfDailyMeals,
      'mealVarietyLevel': instance.mealVarietyLevel,
      'weaklyTrainingCount': instance.weaklyTrainingCount,
    };

const _$GenderEnumEnumMap = {
  GenderEnum.male: 'male',
  GenderEnum.female: 'female',
};
