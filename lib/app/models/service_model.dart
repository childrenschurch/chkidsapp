
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

part 'service_model.g.dart';

@HiveType(typeId: 2)
class ServiceModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String serviceName;
  @HiveField(2)
  final Timestamp date;
  @HiveField(3)
  final String timeFrom;
  @HiveField(4)
  final String timeTo;
  @HiveField(5)
  final int attendanceBoys;
  @HiveField(6)
  final int attendanceGirls;
  @HiveField(7)
  final int attendanceTotal;
  @HiveField(8)
  final double offertory;
  @HiveField(9)
  final String currency;
  @HiveField(10)
  final int teachersMen;
  @HiveField(11)
  final int teachersLadies;
  @HiveField(12)
  final int teachersTotal;
  @HiveField(13)
  final String comments;
  @HiveField(14)
  final String createdBy;
  @HiveField(15)
  final Timestamp createdAt;

  ServiceModel({
    required this.id,
    required this.serviceName,
    required this.date,
    required this.timeFrom,
    required this.timeTo,
    required this.attendanceBoys,
    required this.attendanceGirls,
    required this.attendanceTotal,
    required this.offertory,
    required this.currency,
    required this.teachersMen,
    required this.teachersLadies,
    required this.teachersTotal,
    required this.comments,
    required this.createdBy,
    required this.createdAt,
  });
}
