import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:cloud_firestore/cloud_firestore.dart'; // Removed for now

import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        '784800493341-dc0e57fol6e6rojpoctoe7iq56vobq1s.apps.googleusercontent.com',
  );

  Stream<User?> get userChanges => _auth.userChanges();

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  Future<UserCredential> signInAnonymously() async {
    return await _auth.signInAnonymously();
  }

  Future<User?> signInWithGoogle() async {
    try {
      print('[AuthService] Starting Google sign-in...');
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        print(
            '[AuthService] Google sign-in cancelled by user or popup blocked.');
        return null;
      }
      print(
          '[AuthService] Google user: email=${googleUser.email}, id=${googleUser.id}');
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;
      if (googleAuth == null) {
        print('[AuthService] Google authentication object is null.');
        return null;
      }
      if (googleAuth.accessToken == null) {
        print('[AuthService] Google authentication missing accessToken.');
        return null;
      }
      if (googleAuth.idToken == null) {
        print('[AuthService] Google authentication missing idToken.');
        return null;
      }
      print(
          '[AuthService] Google auth: accessToken=${googleAuth.accessToken}, idToken=${googleAuth.idToken}');
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      print('[AuthService] Signing in with Firebase credential...');
      UserCredential result;
      try {
        result = await _auth.signInWithCredential(credential);
      } catch (e) {
        print(
            '[AuthService] Firebase signInWithCredential failed: ${e.toString()}');
        return null;
      }
      User? user = result.user;
      if (user == null) {
        print('[AuthService] No Firebase user after sign-in.');
        return null;
      }
      print(
          '[AuthService] Firebase user: uid=${user.uid}, email=${user.email}');
      if (user.email == null) {
        print('[AuthService] Firebase user email is null! Cannot continue.');
        await _auth.signOut();
        return null;
      }
      print('[AuthService] Google sign-in successful!');
      return user;
    } catch (e, stack) {
      print('[AuthService] signInWithGoogle error: ${e.toString()}');
      print('[AuthService] Stack trace: ${stack.toString()}');
      return null;
    }
  }

  User? get currentUser => _auth.currentUser;
}
