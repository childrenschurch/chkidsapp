
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

class TimestampAdapter extends TypeAdapter<Timestamp> {
  @override
  final int typeId = 100; // Unique typeId

  @override
  Timestamp read(BinaryReader reader) {
    final millis = reader.readInt();
    return Timestamp.fromMillisecondsSinceEpoch(millis);
  }

  @override
  void write(BinaryWriter writer, Timestamp obj) {
    writer.writeInt(obj.millisecondsSinceEpoch);
  }
}
