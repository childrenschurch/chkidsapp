
import 'package:ch_kids/app/auth/auth_service.dart';
import 'package:ch_kids/app/constants/strings.dart';
import 'package:ch_kids/app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.appName,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              AppStrings.ministryName,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () async {
                final user = await authService.signInWithGoogle();
                if (user != null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                }
              },
              child: const Text(AppStrings.googleSignIn),
            ),
          ],
        ),
      ),
    );
  }
}
