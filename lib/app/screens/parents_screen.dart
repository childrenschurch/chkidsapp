
import 'package:ch_kids/app/screens/add_parent_screen.dart';
import 'package:ch_kids/app/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ParentsScreen extends ConsumerWidget {
  const ParentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parentsAsyncValue = ref.watch(parentsStreamProvider('testBranchId'));

    return Scaffold(
      body: parentsAsyncValue.when(
        data: (parents) {
          if (parents.isEmpty) {
            return const Center(child: Text('No parents found.'));
          }
          return ListView.builder(
            itemCount: parents.length,
            itemBuilder: (context, index) {
              final parent = parents[index];
              return ListTile(
                title: Text(parent.name),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddParentScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
