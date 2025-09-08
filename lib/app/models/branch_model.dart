
import 'package:cloud_firestore/cloud_firestore.dart';

class BranchModel {
  final String id;
  final String name;
  final String country;
  final String town;
  final String defaultCurrency;
  final String contactEmail;
  final Timestamp createdAt;

  BranchModel({
    required this.id,
    required this.name,
    required this.country,
    required this.town,
    required this.defaultCurrency,
    required this.contactEmail,
    required this.createdAt,
  });
}
