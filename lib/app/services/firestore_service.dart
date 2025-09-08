import 'package:ch_kids/app/models/child_model.dart';
import 'package:ch_kids/app/models/parent_model.dart';
import 'package:ch_kids/app/models/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

final firestoreServiceProvider = Provider<FirestoreService>((ref) => FirestoreService());

final childrenStreamProvider = StreamProvider.autoDispose.family<List<ChildModel>, String>((ref, branchId) {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return firestoreService.getChildren(branchId);
});

final parentsStreamProvider = StreamProvider.autoDispose.family<List<ParentModel>, String>((ref, branchId) {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return firestoreService.getParents(branchId);
});

final servicesStreamProvider = StreamProvider.autoDispose.family<List<ServiceModel>, String>((ref, branchId) {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return firestoreService.getServices(branchId);
});

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  late Box<ChildModel> _childrenBox;
  late Box<ParentModel> _parentsBox;
  late Box<ServiceModel> _servicesBox;

  FirestoreService() {
    _openBoxes();
  }

  Future<void> _openBoxes() async {
    _childrenBox = await Hive.openBox<ChildModel>('children');
    _parentsBox = await Hive.openBox<ParentModel>('parents');
    _servicesBox = await Hive.openBox<ServiceModel>('services');
  }

  Future<void> addChild(String branchId, ChildModel child) async {
    try {
      final docRef = await _db.collection('branches').doc(branchId).collection('children').add({
        'firstName': child.firstName,
        'lastName': child.lastName,
        'gender': child.gender,
        'dob': child.dob,
        'className': child.className,
        'parentIds': child.parentIds,
        'allergies': child.allergies,
        'notes': child.notes,
        'photoUrl': child.photoUrl,
      });
      await _childrenBox.put(docRef.id, child);
    } catch (e) {
      print(e);
    }
  }

  Stream<List<ChildModel>> getChildren(String branchId) {
    _db.collection('branches').doc(branchId).collection('children').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        final data = doc.data();
        final child = ChildModel(
          id: doc.id,
          firstName: data['firstName'],
          lastName: data['lastName'],
          gender: data['gender'],
          dob: data['dob'],
          className: data['className'],
          parentIds: List<String>.from(data['parentIds'] ?? []),
          allergies: data['allergies'],
          notes: data['notes'],
          photoUrl: data['photoUrl'],
        );
        _childrenBox.put(doc.id, child);
      }
    });
    return Stream.value(_childrenBox.values.toList());
  }

  Future<void> addParent(String branchId, ParentModel parent) async {
    try {
      final docRef = await _db.collection('branches').doc(branchId).collection('parents').add({
        'name': parent.name,
        'gender': parent.gender,
        'phone': parent.phone,
        'email': parent.email,
        'relation': parent.relation,
        'childIds': parent.childIds,
      });
      await _parentsBox.put(docRef.id, parent);
    } catch (e) {
      print(e);
    }
  }

  Stream<List<ParentModel>> getParents(String branchId) {
    _db.collection('branches').doc(branchId).collection('parents').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        final data = doc.data();
        final parent = ParentModel(
          id: doc.id,
          name: data['name'],
          gender: data['gender'],
          phone: data['phone'],
          email: data['email'],
          relation: data['relation'],
          childIds: List<String>.from(data['childIds'] ?? []),
        );
        _parentsBox.put(doc.id, parent);
      }
    });
    return Stream.value(_parentsBox.values.toList());
  }

  Future<void> addService(String branchId, ServiceModel service) async {
    try {
      final docRef = await _db.collection('branches').doc(branchId).collection('services').add({
        'serviceName': service.serviceName,
        'date': service.date,
        'timeFrom': service.timeFrom,
        'timeTo': service.timeTo,
        'attendanceBoys': service.attendanceBoys,
        'attendanceGirls': service.attendanceGirls,
        'attendanceTotal': service.attendanceTotal,
        'offertory': service.offertory,
        'currency': service.currency,
        'teachersMen': service.teachersMen,
        'teachersLadies': service.teachersLadies,
        'teachersTotal': service.teachersTotal,
        'comments': service.comments,
        'createdBy': service.createdBy,
        'createdAt': service.createdAt,
      });
      await _servicesBox.put(docRef.id, service);
    } catch (e) {
      print(e);
    }
  }

  Stream<List<ServiceModel>> getServices(String branchId) {
    _db.collection('branches').doc(branchId).collection('services').snapshots().listen((snapshot) {
      for (var doc in snapshot.docs) {
        final data = doc.data();
        final service = ServiceModel(
          id: doc.id,
          serviceName: data['serviceName'],
          date: data['date'],
          timeFrom: data['timeFrom'],
          timeTo: data['timeTo'],
          attendanceBoys: data['attendanceBoys'],
          attendanceGirls: data['attendanceGirls'],
          attendanceTotal: data['attendanceTotal'],
          offertory: data['offertory'],
          currency: data['currency'],
          teachersMen: data['teachersMen'],
          teachersLadies: data['teachersLadies'],
          teachersTotal: data['teachersTotal'],
          comments: data['comments'],
          createdBy: data['createdBy'],
          createdAt: data['createdAt'],
        );
        _servicesBox.put(doc.id, service);
      }
    });
    return Stream.value(_servicesBox.values.toList());
  }
}