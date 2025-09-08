
class UserModel {
  final String uid;
  final String? displayName;
  final String? email;
  final List<String> linkedBranchIds;
  final Map<String, String> rolesByBranch;
  final bool isSystemAdmin;

  UserModel({
    required this.uid,
    this.displayName,
    this.email,
    this.linkedBranchIds = const [],
    this.rolesByBranch = const {},
    this.isSystemAdmin = false,
  });
}
