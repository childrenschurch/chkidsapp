
import 'package:ch_kids/app/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServicesHistoryScreen extends ConsumerWidget {
  const ServicesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servicesAsyncValue = ref.watch(servicesStreamProvider('testBranchId'));

    return Scaffold(
      appBar: AppBar(title: const Text('Services History')),
      body: servicesAsyncValue.when(
        data: (services) {
          if (services.isEmpty) {
            return const Center(child: Text('No services found.'));
          }
          return ListView.builder(
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              return ListTile(
                title: Text(service.serviceName),
                subtitle: Text(service.date.toDate().toString().split(' ')[0]),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
