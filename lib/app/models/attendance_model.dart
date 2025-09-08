
import 'package:cloud_firestore/cloud_firestore.dart';

class AttendanceModel {
  final String id;
  final String childId;
  final String status;
  final String markedBy;
  final Timestamp markedAt;

  AttendanceModel({
    required this.id,
    required this.childId,
    required this.status,
    required this.markedBy,
    required this.markedAt,
  });
}
