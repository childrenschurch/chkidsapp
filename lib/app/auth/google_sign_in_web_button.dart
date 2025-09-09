import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ch_kids/app/auth/auth_service.dart';
import 'package:ch_kids/app/screens/home_screen.dart';

class GoogleSignInWebButton extends StatelessWidget {
  const GoogleSignInWebButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the new event-based authenticate() flow for web
    final googleSignIn = GoogleSignIn.instance;
    if (kIsWeb && googleSignIn.supportsAuthenticate()) {
      return ElevatedButton.icon(
        icon: Icon(Icons.login),
        label: Text('Sign in with Google'),
        onPressed: () async {
          try {
            final googleUser = await googleSignIn.authenticate();
            final user = await AuthService.signInWithGoogleAccount(googleUser);
            if (user != null && context.mounted) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Firebase sign-in failed.')),
              );
            }
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Google sign-in failed: $e')),
            );
          }
        },
      );
    } else {
      // For non-web or if authenticate is not supported, show disabled button
      return ElevatedButton.icon(
        icon: Icon(Icons.login),
        label: Text('Sign in with Google (unsupported)'),
        onPressed: null,
      );
    }
  }
}
