// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChildModelAdapter extends TypeAdapter<ChildModel> {
  @override
  final int typeId = 0;

  @override
  ChildModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChildModel(
      id: fields[0] as String,
      firstName: fields[1] as String,
      lastName: fields[2] as String,
      gender: fields[3] as String,
      dob: fields[4] as Timestamp,
      className: fields[5] as String,
      parentIds: (fields[6] as List).cast<String>(),
      allergies: fields[7] as String,
      notes: fields[8] as String,
      photoUrl: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChildModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.dob)
      ..writeByte(5)
      ..write(obj.className)
      ..writeByte(6)
      ..write(obj.parentIds)
      ..writeByte(7)
      ..write(obj.allergies)
      ..writeByte(8)
      ..write(obj.notes)
      ..writeByte(9)
      ..write(obj.photoUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
