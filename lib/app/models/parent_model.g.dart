// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParentModelAdapter extends TypeAdapter<ParentModel> {
  @override
  final int typeId = 1;

  @override
  ParentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ParentModel(
      id: fields[0] as String,
      name: fields[1] as String,
      gender: fields[2] as String,
      phone: fields[3] as String,
      email: fields[4] as String,
      relation: fields[5] as String,
      childIds: (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ParentModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.relation)
      ..writeByte(6)
      ..write(obj.childIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
