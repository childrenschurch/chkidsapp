
import 'package:ch_kids/app/models/parent_model.dart';
import 'package:ch_kids/app/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddParentScreen extends ConsumerStatefulWidget {
  const AddParentScreen({super.key});

  @override
  ConsumerState<AddParentScreen> createState() => _AddParentScreenState();
}

class _AddParentScreenState extends ConsumerState<AddParentScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _relationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firestoreService = ref.watch(firestoreServiceProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Add Parent')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) => value!.isEmpty ? 'Please enter a name' : null,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Phone'),
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextFormField(
                controller: _relationController,
                decoration: const InputDecoration(labelText: 'Relation'),
              ),
              const SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final newParent = ParentModel(
                        id: '', // Firestore will generate this
                        name: _nameController.text,
                        gender: '', // Need to add a gender picker
                        phone: _phoneController.text,
                        email: _emailController.text,
                        relation: _relationController.text,
                      );
                      await firestoreService.addParent('testBranchId', newParent);
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
}
