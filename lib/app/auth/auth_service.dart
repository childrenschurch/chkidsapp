import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get userChanges => _auth.userChanges();

  Future<void> signOut() async {
    await _auth.signOut();
    await GoogleSignIn.instance.signOut();
  }

  Future<UserCredential> signInAnonymously() async {
    return await _auth.signInAnonymously();
  }

  /// Links a signed-in Google user to Firebase Auth.
  ///
  /// Usage:
  ///   Listen to GoogleSignIn.instance.onCurrentUserChanged in your UI.
  ///   When a GoogleSignInAccount is available, call:
  ///     await AuthService.signInWithGoogleAccount(googleUser);
  /// This will sign in to Firebase using the Google idToken.
  static Future<User?> signInWithGoogleAccount(
      GoogleSignInAccount googleUser) async {
    try {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken == null) {
        print(
            '[AuthService] Google authentication missing idToken. googleAuth: $googleAuth');
        return null;
      }
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;
      UserCredential result = await _auth.signInWithCredential(credential);
      return result.user;
    } catch (e, stack) {
      print('[AuthService] signInWithGoogleAccount error: ${e.toString()}');
      print('[AuthService] Stack trace: ${stack.toString()}');
      return null;
    }
  }

  User? get currentUser => FirebaseAuth.instance.currentUser;
}
