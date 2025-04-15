// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_user_features.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedUserFeatureAdapter extends TypeAdapter<CachedUserFeature> {
  @override
  final int typeId = 2;

  @override
  CachedUserFeature read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedUserFeature(
      search_results_table: fields[0] as bool?,
      recently_opened_files: fields[1] as bool?,
      search_history: fields[2] as bool?,
      highlights_and_notes: fields[3] as bool?,
      gpt: fields[4] as bool?,
      my_folders: fields[5] as bool?,
      contracts: fields[6] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, CachedUserFeature obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.search_results_table)
      ..writeByte(1)
      ..write(obj.recently_opened_files)
      ..writeByte(2)
      ..write(obj.search_history)
      ..writeByte(3)
      ..write(obj.highlights_and_notes)
      ..writeByte(4)
      ..write(obj.gpt)
      ..writeByte(5)
      ..write(obj.my_folders)
      ..writeByte(6)
      ..write(obj.contracts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedUserFeatureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
