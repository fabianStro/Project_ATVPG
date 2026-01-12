// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcastAttribute.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BroadcastAttributeAdapter extends TypeAdapter<BroadcastAttribute> {
  @override
  final typeId = 0;

  @override
  BroadcastAttribute read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BroadcastAttribute(
      id: (fields[0] as num).toInt(),
      title: fields[1] as String,
      genre: fields[2] as String,
      imagePath: fields[3] as String,
      description: fields[4] as String,
      isFavorite: fields[5] == null ? false : fields[5] as bool,
      isMyAnime: fields[6] == null ? false : fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, BroadcastAttribute obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.genre)
      ..writeByte(3)
      ..write(obj.imagePath)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.isFavorite)
      ..writeByte(6)
      ..write(obj.isMyAnime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BroadcastAttributeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
