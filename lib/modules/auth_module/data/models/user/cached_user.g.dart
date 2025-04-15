// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheUserAdapter extends TypeAdapter<CacheUser> {
  @override
  final int typeId = 0;

  @override
  CacheUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CacheUser(
      id: fields[0] as int,
      name: fields[1] as String,
      email: fields[2] as String,
      hasValidSubscription: fields[3] as bool?,
      country: fields[4] as CountryCached?,
      city: fields[5] as CityCached?,
      gender: fields[6] as int?,
      age: fields[7] as int?,
      currentWeight: fields[8] as int?,
      height: fields[9] as int?,
      otpCode: fields[10] as int?,
      goals: (fields[11] as List?)?.cast<GoalCached>(),
      targetWeight: fields[12] as int?,
      bodyShape: fields[13] as BodyShapeCached?,
      bodyParts: (fields[14] as List?)?.cast<String>(),
      exerciseDays: (fields[15] as List?)?.cast<String>(),
      workoutTypes: (fields[16] as List?)?.cast<WorkoutTypeCached>(),
      equipments: (fields[17] as List?)?.cast<EquipmentCached>(),
      diet: fields[18] as DietCached?,
      recipeTypes: (fields[19] as List?)?.cast<RecipeTypeCached>(),
      foodsNotLiked: (fields[20] as List?)?.cast<FoodNotLikedCached>(),
      mealVariety: fields[21] as MealVarietyCached?,
      emailVerifiedAt: fields[22] as String?,
      isChecked: fields[23] as String?,
      isCompleted: fields[24] as String?,
      isActive: fields[25] as String?,
      countryKey: fields[26] as String?,
      haveExercisePlan: fields[27] as bool?,
      haveMealPlan: fields[28] as bool?,
      packageId: fields[29] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CacheUser obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.hasValidSubscription)
      ..writeByte(4)
      ..write(obj.country)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.gender)
      ..writeByte(7)
      ..write(obj.age)
      ..writeByte(8)
      ..write(obj.currentWeight)
      ..writeByte(9)
      ..write(obj.height)
      ..writeByte(10)
      ..write(obj.otpCode)
      ..writeByte(11)
      ..write(obj.goals)
      ..writeByte(12)
      ..write(obj.targetWeight)
      ..writeByte(13)
      ..write(obj.bodyShape)
      ..writeByte(14)
      ..write(obj.bodyParts)
      ..writeByte(15)
      ..write(obj.exerciseDays)
      ..writeByte(16)
      ..write(obj.workoutTypes)
      ..writeByte(17)
      ..write(obj.equipments)
      ..writeByte(18)
      ..write(obj.diet)
      ..writeByte(19)
      ..write(obj.recipeTypes)
      ..writeByte(20)
      ..write(obj.foodsNotLiked)
      ..writeByte(21)
      ..write(obj.mealVariety)
      ..writeByte(22)
      ..write(obj.emailVerifiedAt)
      ..writeByte(23)
      ..write(obj.isChecked)
      ..writeByte(24)
      ..write(obj.isCompleted)
      ..writeByte(25)
      ..write(obj.isActive)
      ..writeByte(26)
      ..write(obj.countryKey)
      ..writeByte(27)
      ..write(obj.haveExercisePlan)
      ..writeByte(28)
      ..write(obj.haveMealPlan)
      ..writeByte(29)
      ..write(obj.packageId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CountryCachedAdapter extends TypeAdapter<CountryCached> {
  @override
  final int typeId = 1;

  @override
  CountryCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountryCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CountryCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CityCachedAdapter extends TypeAdapter<CityCached> {
  @override
  final int typeId = 2;

  @override
  CityCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CityCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GoalCachedAdapter extends TypeAdapter<GoalCached> {
  @override
  final int typeId = 3;

  @override
  GoalCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GoalCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GoalCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoalCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BodyShapeCachedAdapter extends TypeAdapter<BodyShapeCached> {
  @override
  final int typeId = 4;

  @override
  BodyShapeCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BodyShapeCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BodyShapeCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BodyShapeCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MuscleFocusCachedAdapter extends TypeAdapter<MuscleFocusCached> {
  @override
  final int typeId = 5;

  @override
  MuscleFocusCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MuscleFocusCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MuscleFocusCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MuscleFocusCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WorkoutTypeCachedAdapter extends TypeAdapter<WorkoutTypeCached> {
  @override
  final int typeId = 6;

  @override
  WorkoutTypeCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutTypeCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WorkoutTypeCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutTypeCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EquipmentCachedAdapter extends TypeAdapter<EquipmentCached> {
  @override
  final int typeId = 7;

  @override
  EquipmentCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EquipmentCached(
      id: fields[0] as int,
      name: fields[1] as String,
      image: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EquipmentCached obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EquipmentCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DietCachedAdapter extends TypeAdapter<DietCached> {
  @override
  final int typeId = 8;

  @override
  DietCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DietCached(
      id: fields[0] as int,
      key: fields[1] as String,
      name: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DietCached obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.key)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DietCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RecipeTypeCachedAdapter extends TypeAdapter<RecipeTypeCached> {
  @override
  final int typeId = 9;

  @override
  RecipeTypeCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeTypeCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RecipeTypeCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeTypeCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FoodNotLikedCachedAdapter extends TypeAdapter<FoodNotLikedCached> {
  @override
  final int typeId = 10;

  @override
  FoodNotLikedCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FoodNotLikedCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FoodNotLikedCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodNotLikedCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MealVarietyCachedAdapter extends TypeAdapter<MealVarietyCached> {
  @override
  final int typeId = 11;

  @override
  MealVarietyCached read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealVarietyCached(
      id: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MealVarietyCached obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealVarietyCachedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
