
import 'package:ch_kids/app/constants/strings.dart';
import 'package:ch_kids/app/models/service_model.dart';
import 'package:ch_kids/app/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewServiceScreen extends ConsumerStatefulWidget {
  const NewServiceScreen({super.key});

  @override
  ConsumerState<NewServiceScreen> createState() => _NewServiceScreenState();
}

class _NewServiceScreenState extends ConsumerState<NewServiceScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _serviceName;
  DateTime? _serviceDate;
  TimeOfDay? _timeFrom;
  TimeOfDay? _timeTo;
  int _boys = 0;
  int _girls = 0;
  int _men = 0;
  int _ladies = 0;
  double _offertory = 0.0;
  String _currency = 'UGX';
  String _comments = '';

  @override
  Widget build(BuildContext context) {
    final firestoreService = ref.watch(firestoreServiceProvider);
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.newService),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                value: _serviceName,
                hint: const Text(AppStrings.serviceName),
                onChanged: (value) => setState(() => _serviceName = value),
                items: ['First', 'Second', 'Third']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Text(_serviceDate == null
                      ? 'No date chosen'
                      : '${_serviceDate!.toLocal()}'.split(' ')[0]),
                  const Spacer(),
                  TextButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Select date'),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(_timeFrom == null ? 'No time chosen' : _timeFrom!.format(context)),
                  const Spacer(),
                  TextButton(
                    onPressed: () => _selectTimeFrom(context),
                    child: const Text('Select time from'),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(_timeTo == null ? 'No time chosen' : _timeTo!.format(context)),
                  const Spacer(),
                  TextButton(
                    onPressed: () => _selectTimeTo(context),
                    child: const Text('Select time to'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('${AppStrings.attendance}: ${_boys + _girls}'),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: AppStrings.boys),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => setState(() => _boys = int.tryParse(value) ?? 0),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: AppStrings.girls),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => setState(() => _girls = int.tryParse(value) ?? 0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('${AppStrings.teachers}: ${_men + _ladies}'),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: AppStrings.men),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => setState(() => _men = int.tryParse(value) ?? 0),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: AppStrings.ladies),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => setState(() => _ladies = int.tryParse(value) ?? 0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: AppStrings.offertory),
                keyboardType: TextInputType.number,
                onChanged: (value) =>
                    setState(() => _offertory = double.tryParse(value) ?? 0.0),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: AppStrings.comments),
                maxLines: 3,
                onChanged: (value) => setState(() => _comments = value),
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final newService = ServiceModel(
                        id: '', // Firestore will generate this
                        serviceName: _serviceName!,
                        date: Timestamp.fromDate(_serviceDate!),
                        timeFrom: _timeFrom!.format(context),
                        timeTo: _timeTo!.format(context),
                        attendanceBoys: _boys,
                        attendanceGirls: _girls,
                        attendanceTotal: _boys + _girls,
                        offertory: _offertory,
                        currency: _currency,
                        teachersMen: _men,
                        teachersLadies: _ladies,
                        teachersTotal: _men + _ladies,
                        comments: _comments,
                        createdBy: user!.uid,
                        createdAt: Timestamp.now(),
                      );
                      await firestoreService.addService('testBranchId', newService);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(AppStrings.save),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _serviceDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _serviceDate) {
      setState(() {
        _serviceDate = picked;
      });
    }
  }

  Future<void> _selectTimeFrom(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _timeFrom ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _timeFrom) {
      setState(() {
        _timeFrom = picked;
      });
    }
  }

  Future<void> _selectTimeTo(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _timeTo ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _timeTo) {
      setState(() {
        _timeTo = picked;
      });
    }
  }
}
