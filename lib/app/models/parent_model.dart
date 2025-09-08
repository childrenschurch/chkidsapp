
import 'package:hive/hive.dart';

part 'parent_model.g.dart';

@HiveType(typeId: 1)
class ParentModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String gender;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String email;
  @HiveField(5)
  final String relation;
  @HiveField(6)
  final List<String> childIds;

  ParentModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.phone,
    required this.email,
    required this.relation,
    this.childIds = const [],
  });
}
