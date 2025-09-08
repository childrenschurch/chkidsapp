import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:cloud_firestore/cloud_firestore.dart'; // Removed for now

import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Stream<User?> get userChanges => _auth.userChanges();

  Future<UserCredential> signInWithEmail(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential> signUpWithEmail(String email, String password) async {
    return await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  Future<UserCredential> signInAnonymously() async {
    return await _auth.signInAnonymously();
  }

  Future<User?> signInWithGoogle() async {
    try {
      print('Starting Google sign-in...');
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        print('Google sign-in cancelled by user.');
        return null;
      }
      print('Google user: ${googleUser.email}, id: ${googleUser.id}');
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      print(
          'Google auth: accessToken=${googleAuth.accessToken}, idToken=${googleAuth.idToken}');
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      print('Signing in with Firebase credential...');
      UserCredential result = await _auth.signInWithCredential(credential);
      User? user = result.user;
      print('Firebase user: ${user?.uid}, email: ${user?.email}');
      if (user == null) {
        print('No Firebase user after sign-in.');
        return null;
      }
      if (user.email == null) {
        print('Firebase user email is null! Cannot continue.');
        await _auth.signOut();
        return null;
      }
      // Removed Firestore related code for now.
      return user;
    } catch (e, stack) {
      print('signInWithGoogle error: ${e.toString()}');
      print('Stack trace: ${stack.toString()}');
      rethrow;
    }
  }

  User? get currentUser => _auth.currentUser;
}
