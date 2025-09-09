import 'package:ch_kids/app/auth/auth_service.dart';
import 'package:ch_kids/app/constants/strings.dart';
import 'package:ch_kids/app/screens/home_screen.dart';
import 'package:ch_kids/app/auth/google_sign_in_web_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.appName,
              style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            const SizedBox(height: 16),
            const Text(
              AppStrings.ministryName,
              style: TextStyle(fontSize: 18, color: Colors.deepPurpleAccent),
            ),
            const SizedBox(height: 60),
            GoogleSignInWebButton(),
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
