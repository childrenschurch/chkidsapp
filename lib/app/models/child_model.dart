
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

part 'child_model.g.dart';

@HiveType(typeId: 0)
class ChildModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String lastName;
  @HiveField(3)
  final String gender;
  @HiveField(4)
  final Timestamp dob;
  @HiveField(5)
  final String className;
  @HiveField(6)
  final List<String> parentIds;
  @HiveField(7)
  final String allergies;
  @HiveField(8)
  final String notes;
  @HiveField(9)
  final String photoUrl;

  ChildModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dob,
    required this.className,
    this.parentIds = const [],
    this.allergies = '',
    this.notes = '',
    this.photoUrl = '',
  });
}
