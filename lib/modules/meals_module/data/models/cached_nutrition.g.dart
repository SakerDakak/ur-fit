// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_nutrition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NutritionDataAdapter extends TypeAdapter<NutritionData> {
  @override
  final int typeId = 3;

  @override
  NutritionData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NutritionData()
      ..id = fields[0] as String
      ..calories = fields[1] as double
      ..carbs = fields[2] as double
      ..protein = fields[3] as double
      ..dateAdded = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, NutritionData obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.calories)
      ..writeByte(2)
      ..write(obj.carbs)
      ..writeByte(3)
      ..write(obj.protein)
      ..writeByte(4)
      ..write(obj.dateAdded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutritionDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
