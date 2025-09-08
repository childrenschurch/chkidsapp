
import 'package:ch_kids/app/models/child_model.dart';
import 'package:ch_kids/app/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddChildScreen extends ConsumerStatefulWidget {
  const AddChildScreen({super.key});

  @override
  ConsumerState<AddChildScreen> createState() => _AddChildScreenState();
}

class _AddChildScreenState extends ConsumerState<AddChildScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _classNameController = TextEditingController();
  final _allergiesController = TextEditingController();
  final _notesController = TextEditingController();
  DateTime? _dob;

  @override
  Widget build(BuildContext context) {
    final firestoreService = ref.watch(firestoreServiceProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Add Child')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
                validator: (value) => value!.isEmpty ? 'Please enter a first name' : null,
              ),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
                validator: (value) => value!.isEmpty ? 'Please enter a last name' : null,
              ),
              TextFormField(
                controller: _classNameController,
                decoration: const InputDecoration(labelText: 'Class'),
              ),
              TextFormField(
                controller: _allergiesController,
                decoration: const InputDecoration(labelText: 'Allergies'),
              ),
              TextFormField(
                controller: _notesController,
                decoration: const InputDecoration(labelText: 'Notes'),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Text(_dob == null ? 'No date chosen' : '${_dob!.toLocal()}'.split(' ')[0]),
                  const Spacer(),
                  TextButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Select date'),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final newChild = ChildModel(
                        id: '', // Firestore will generate this
                        firstName: _firstNameController.text,
                        lastName: _lastNameController.text,
                        gender: '', // Need to add a gender picker
                        dob: Timestamp.fromDate(_dob!),
                        className: _classNameController.text,
                        allergies: _allergiesController.text,
                        notes: _notesController.text,
                      );
                      await firestoreService.addChild('testBranchId', newChild);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Save'),
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
      initialDate: _dob ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _dob) {
      setState(() {
        _dob = picked;
      });
    }
  }
}
