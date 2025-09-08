
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
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.deepPurple), // Example: A playful, friendly color
            ),
            const SizedBox(height: 16),
            const Text(
              AppStrings.ministryName,
              style: TextStyle(fontSize: 18, color: Colors.deepPurpleAccent), // Consistent branding
            ),
            const SizedBox(height: 60), // Added a bit more space
            ElevatedButton.icon(
              icon: Image.asset('assets/images/google_logo.png', height: 24.0, width: 24.0), // Assuming you have a Google logo in assets
              label: const Text(AppStrings.googleSignIn),
              onPressed: () async {
                final user = await authService.signInWithGoogle();
                if (user != null && context.mounted) { // Added context.mounted check
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // A bright, cheerful blue
                foregroundColor: Colors.white, // White text for good contrast
                minimumSize: const Size(250, 60), // Making the button larger
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5, // A touch of playfulness
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Nice rounded corners
                ),
                elevation: 5.0, // A subtle shadow to make it pop
              ),
            ),
            const SizedBox(height: 20), // Space below button
            TextButton(
              onPressed: () {
                // TODO: Implement Email/Password Sign In Navigation or UI
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Email/Password sign-in coming soon!')),
                );
              },
              child: const Text(
                'Or sign in with Email',
                style: TextStyle(color: Colors.deepPurple, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Ensure you have a Google logo at 'assets/images/google_logo.png'
// And update your pubspec.yaml to include the assets folder:
// flutter:
//   assets:
//     - assets/images/
