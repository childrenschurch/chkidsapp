import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        '784800493341-mdut9ptokfvr5mjhu431do14haghb33s.apps.googleusercontent.com',
  );

  Stream<User?> get userChanges => _auth.userChanges();

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
  }

  Future<UserCredential> signInAnonymously() async {
    return await _auth.signInAnonymously();
  }

  /// Call this from your UI for all platforms. On web, use GoogleSignInButton widget for the button.
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
        print(
            '[AuthService] Google authentication object is null. googleUser: $googleUser');
        return null;
      }
      if (googleAuth.accessToken == null) {
        print(
            '[AuthService] Google authentication missing accessToken. googleAuth: $googleAuth');
        return null;
      }
      if (googleAuth.idToken == null) {
        print(
            '[AuthService] Google authentication missing idToken. googleAuth: $googleAuth, accessToken: ${googleAuth.accessToken}');
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
        print('[AuthService] Credential used: $credential');
        return null;
      }
      User? user = result.user;
      if (user == null) {
        print('[AuthService] No Firebase user after sign-in. result: $result');
        return null;
      }
      print(
          '[AuthService] Firebase user: uid=${user.uid}, email=${user.email}');
      if (user.email == null) {
        print('[AuthService] Firebase user email is null! user: $user');
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
