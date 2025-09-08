// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServiceModelAdapter extends TypeAdapter<ServiceModel> {
  @override
  final int typeId = 2;

  @override
  ServiceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServiceModel(
      id: fields[0] as String,
      serviceName: fields[1] as String,
      date: fields[2] as Timestamp,
      timeFrom: fields[3] as String,
      timeTo: fields[4] as String,
      attendanceBoys: fields[5] as int,
      attendanceGirls: fields[6] as int,
      attendanceTotal: fields[7] as int,
      offertory: fields[8] as double,
      currency: fields[9] as String,
      teachersMen: fields[10] as int,
      teachersLadies: fields[11] as int,
      teachersTotal: fields[12] as int,
      comments: fields[13] as String,
      createdBy: fields[14] as String,
      createdAt: fields[15] as Timestamp,
    );
  }

  @override
  void write(BinaryWriter writer, ServiceModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.serviceName)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.timeFrom)
      ..writeByte(4)
      ..write(obj.timeTo)
      ..writeByte(5)
      ..write(obj.attendanceBoys)
      ..writeByte(6)
      ..write(obj.attendanceGirls)
      ..writeByte(7)
      ..write(obj.attendanceTotal)
      ..writeByte(8)
      ..write(obj.offertory)
      ..writeByte(9)
      ..write(obj.currency)
      ..writeByte(10)
      ..write(obj.teachersMen)
      ..writeByte(11)
      ..write(obj.teachersLadies)
      ..writeByte(12)
      ..write(obj.teachersTotal)
      ..writeByte(13)
      ..write(obj.comments)
      ..writeByte(14)
      ..write(obj.createdBy)
      ..writeByte(15)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
