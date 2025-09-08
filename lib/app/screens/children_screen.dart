
import 'package:ch_kids/app/screens/add_child_screen.dart';
import 'package:ch_kids/app/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChildrenScreen extends ConsumerWidget {
  const ChildrenScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final childrenAsyncValue = ref.watch(childrenStreamProvider('testBranchId'));

    return Scaffold(
      body: childrenAsyncValue.when(
        data: (children) {
          if (children.isEmpty) {
            return const Center(child: Text('No children found.'));
          }
          return ListView.builder(
            itemCount: children.length,
            itemBuilder: (context, index) {
              final child = children[index];
              return ListTile(
                title: Text('${child.firstName} ${child.lastName}'),
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
            MaterialPageRoute(builder: (context) => const AddChildScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
