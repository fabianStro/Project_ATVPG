// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotificationDataAdapter extends TypeAdapter<NotificationData> {
  @override
  final typeId = 1;

  @override
  NotificationData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotificationData(
      minBefore: fields[0] as String,
      notificationSound: fields[1] as String,
      notificationMethod: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.minBefore)
      ..writeByte(1)
      ..write(obj.notificationSound)
      ..writeByte(2)
      ..write(obj.notificationMethod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
