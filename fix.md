PS C:\Users\dell\flutter projects\chkids\ch_kids> flutter run -d chrome
Resolving dependencies...
Downloading packages...
_fe_analyzer_shared 67.0.0 (88.0.0 available)
_flutterfire_internals 1.3.35 (1.3.61 available)
analyzer 6.4.1 (8.1.1 available)
build 2.4.1 (4.0.0 available)
build_config 1.1.2 (1.2.0 available)
build_resolvers 2.4.2 (3.0.4 available)
build_runner 2.4.13 (2.8.0 available)
build_runner_core 7.3.2 (9.3.2 available)
characters 1.4.0 (1.4.1 available)
cloud_firestore 4.17.5 (6.0.1 available)                                                                                                                                          
cloud_firestore_platform_interface 6.2.5 (7.0.1 available)                                                                                                                        
cloud_firestore_web 3.12.5 (5.0.1 available)                                                                                                                                      
dart_style 2.3.6 (3.1.2 available)                                                                                                                                                
firebase_analytics 10.10.7 (12.0.1 available)                                                                                                                                     
firebase_analytics_platform_interface 3.10.8 (5.0.1 available)                                                                                                                    
firebase_analytics_web 0.5.7+7 (0.6.0+1 available)                                                                                                                                
firebase_auth 4.16.0 (6.0.2 available)                                                                                                                                            
firebase_auth_platform_interface 7.3.0 (8.1.1 available)                                                                                                                          
firebase_auth_web 5.8.13 (6.0.2 available)                                                                                                                                        
firebase_core 2.32.0 (4.1.0 available)                                                                                                                                            
firebase_core_platform_interface 5.4.2 (6.0.0 available)                                                                                                                          
firebase_core_web 2.24.0 (3.1.0 available)                                                                                                                                        
firebase_crashlytics 3.5.7 (5.0.1 available)                                                                                                                                      
firebase_crashlytics_platform_interface 3.6.35 (3.8.12 available)                                                                                                                 
firebase_storage 11.6.5 (13.0.1 available)                                                                                                                                        
firebase_storage_platform_interface 5.1.22 (5.2.12 available)                                                                                                                     
firebase_storage_web 3.6.22 (3.10.19 available)                                                                                                                                   
google_fonts 5.1.0 (6.3.1 available)                                                                                                                                              
google_sign_in 6.3.0 (7.1.1 available)                                                                                                                                            
google_sign_in_android 6.2.1 (7.0.5 available)                                                                                                                                    
google_sign_in_ios 5.9.0 (6.1.0 available)                                                                                                                                        
google_sign_in_platform_interface 2.5.0 (3.0.0 available)                                                                                                                         
google_sign_in_web 0.12.4+4 (1.0.0 available)                                                                                                                                     
intl 0.18.1 (0.20.2 available)                                                                                                                                                    
js 0.6.7 (0.7.2 available)                                                                                                                                                        
material_color_utilities 0.11.1 (0.13.0 available)                                                                                                                                
meta 1.16.0 (1.17.0 available)                                                                                                                                                    
shelf_web_socket 2.0.1 (3.0.0 available)                                                                                                                                          
source_gen 1.5.0 (4.0.1 available)                                                                                                                                                
source_helper 1.3.5 (1.3.8 available)                                                                                                                                             
test_api 0.7.6 (0.7.7 available)                                                                                                                                                  
uuid 3.0.7 (4.5.1 available)                                                                                                                                                      
Got dependencies!
42 packages have newer versions incompatible with dependency constraints.
Try `flutter pub outdated` for more information.
Launching lib\main.dart on Chrome in debug mode...
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:26:10: Error: Type 'PromiseJsImpl' not found.                            
external PromiseJsImpl<void> applyActionCode(AuthJsImpl auth, String oobCode);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:38:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<ActionCodeInfo> checkActionCode(
^^^^^^^^^^^^^                                                                                                                                                              
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:42:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> confirmPasswordReset(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:55:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> setPersistence(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:59:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> createUserWithEmailAndPassword(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:70:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> deleteUser(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:75:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<List> fetchSignInMethodsForEmail(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:82:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl?> getRedirectResult(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:87:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> sendSignInLinkToEmail(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:94:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> sendPasswordResetEmail(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:101:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> signInWithCredential(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:107:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> signInAnonymously(AuthJsImpl auth);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:110:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> signInWithCustomToken(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:116:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> signInWithEmailAndPassword(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:123:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> signInWithEmailLink(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:130:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<ConfirmationResultJsImpl> signInWithPhoneNumber(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:137:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> signInWithPopup(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:143:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> signInWithRedirect(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:149:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<String> verifyPasswordResetCode(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:155:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> linkWithCredential(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:161:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<ConfirmationResultJsImpl> linkWithPhoneNumber(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:168:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> linkWithPopup(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:174:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> linkWithRedirect(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:180:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> reauthenticateWithCredential(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:186:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<ConfirmationResultJsImpl> reauthenticateWithPhoneNumber(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:193:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> reauthenticateWithPopup(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:199:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> reauthenticateWithRedirect(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:205:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> sendEmailVerification([
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:211:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> verifyBeforeUpdateEmail(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:218:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserJsImpl> unlink(UserJsImpl user, String providerId);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:221:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> updateEmail(UserJsImpl user, String newEmail);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:224:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> updatePassword(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:230:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> updatePhoneNumber(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:236:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> updateProfile(                                                                                                                                         
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:276:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> signOut();
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:311:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> delete();
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:312:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<String> getIdToken([bool? opt_forceRefresh]);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:313:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<IdTokenResultImpl> getIdTokenResult(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:315:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> reload();
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:468:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<String> verifyPhoneNumber(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:489:12: Error: Type 'PromiseJsImpl' not found.                           
external PromiseJsImpl<String> verify();
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:500:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<num> render();
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:506:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> confirm(String verificationCode);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:705:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> enroll(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:707:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<MultiFactorSessionJsImpl> getSession();
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:708:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> unenroll(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:735:12: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<UserCredentialJsImpl> resolveSignIn(
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth_interop.dart:790:19: Error: Type 'PromiseJsImpl' not found.
external static PromiseJsImpl<TotpSecretJsImpl> generateSecret(                                                                                                                   
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:23:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<void> deleteObject(ReferenceJsImpl ref);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:26:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<String> getDownloadURL(ReferenceJsImpl ref);
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:29:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<String> getBlob(ReferenceJsImpl ref,
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:33:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<List<String>> getBytes(ReferenceJsImpl ref,
^^^^^^^^^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:37:10: Error: Type 'PromiseJsImpl' not found.
external PromiseJsImpl<FullMetadataJsImpl> getMetadata(ReferenceJsImpl ref);
^^^^^^^^^^^^^
external PromiseJsImpl<ListResultJsImpl> listAll(ReferenceJsImpl ref);                                                                                                              
^^^^^^^^^^^^^                                                                                                                                                              
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:52:10: Error: Type 'PromiseJsImpl' not found.                      
external PromiseJsImpl<FullMetadataJsImpl> updateMetadata(                                                                                                                          
^^^^^^^^^^^^^                                                                                                                                                              
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:141:16: Error: Type 'PromiseJsImpl' not found.                     
implements PromiseJsImpl<UploadTaskSnapshotJsImpl> {                                                                                                                            
^^^^^^^^^^^^^                                                                                                                                                        
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage_interop.dart:150:12: Error: Type 'PromiseJsImpl' not found.                     
external PromiseJsImpl<void> then([Func1? onResolve, Func1? onReject]);                                                                                                           
^^^^^^^^^^^^^                                                                                                                                                            
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/utils/utils.dart:11:23: Error: Method not found: 'dartify'.                                
return core_interop.dartify(jsObject);                                                                                                                                            
^^^^^^^                                                                                                                                                       
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/utils/utils.dart:19:23: Error: Method not found: 'jsify'.                                  
return core_interop.jsify(dartObject, customJsify);                                                                                                                               
^^^^^
../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:116:28: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future<void> delete() => handleThenable(jsObject.delete());
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:126:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(jsObject.getIdToken(forceRefresh));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:132:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.linkWithCredential(jsObject, credential))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:139:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.                                                                             
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:148:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.linkWithPopup(jsObject, provider.jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:153:59: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future<void> linkWithRedirect(AuthProvider provider) => handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:160:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:171:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.reauthenticateWithPhoneNumber(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:179:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:186:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:190:28: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future<void> reload() => handleThenable(jsObject.reload());
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:212:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.                                                                             
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:219:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.verifyBeforeUpdateEmail(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:224:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.unlink(jsObject, providerId))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:229:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.updateEmail(jsObject, newEmail));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:235:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.updatePassword(jsObject, newPassword));                                                                                                           
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:240:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.updatePhoneNumber(jsObject, phoneCredential));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:244:7: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.updateProfile(jsObject, profile));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:251:12: Error: The method 'handleThenable' isn't defined for the type 'User'.
- 'User' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  return handleThenable(promise).then(IdTokenResult._fromJsObject);
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:455:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.applyActionCode(jsObject, oobCode));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:461:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').         
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.checkActionCode(jsObject, code));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:465:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:485:21: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  final u = await handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:498:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.fetchSignInMethodsForEmail(jsObject, email))
  ^^^^^^^^^^^^^^                                                                                                                                                                
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:511:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.getRedirectResult(jsObject)).then(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:526:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.sendSignInLinkToEmail(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:562:12: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  return handleThenable(auth_interop.setPersistence(jsObject, instance));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:586:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.sendPasswordResetEmail(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:593:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.                                                                             
  handleThenable(auth_interop.signInWithCredential(jsObject, credential))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:602:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.signInAnonymously(jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:613:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.signInWithCustomToken(jsObject, token))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:640:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.signInWithEmailAndPassword(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:646:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.                                                                             
  handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:662:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.signInWithPhoneNumber(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:670:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.signInWithPopup(jsObject, provider.jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:674:55: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future signInWithRedirect(AuthProvider provider) => handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:678:23: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future signOut() => handleThenable(jsObject.signOut());                                                                                                                           
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:696:7: Error: The method 'handleThenable' isn't defined for the type 'Auth'.
- 'Auth' is from 'package:firebase_auth_web/src/interop/auth.dart' ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(auth_interop.verifyPasswordResetCode(jsObject, code));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:989:7: Error: The method 'handleThenable' isn't defined for the type
  'PhoneAuthProvider'.
- 'PhoneAuthProvider' is from 'package:firebase_auth_web/src/interop/auth.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(jsObject.verifyPhoneNumber(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:1016:30: Error: The method 'handleThenable' isn't defined for the type
  'ApplicationVerifier<T>'.
- 'ApplicationVerifier' is from 'package:firebase_auth_web/src/interop/auth.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future<String> verify() => handleThenable(jsObject.verify());
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:1072:27: Error: The method 'handleThenable' isn't defined for the type
  'RecaptchaVerifier'.
- 'RecaptchaVerifier' is from 'package:firebase_auth_web/src/interop/auth.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future<num> render() => handleThenable(jsObject.render());
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart:1093:7: Error: The method 'handleThenable' isn't defined for the type
  'ConfirmationResult'.
- 'ConfirmationResult' is from 'package:firebase_auth_web/src/interop/auth.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/auth.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(jsObject.confirm(verificationCode))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart:52:7: Error: The method 'handleThenable' isn't defined for the type      
  'MultiFactorUser'.
- 'MultiFactorUser' is from 'package:firebase_auth_web/src/interop/multi_factor.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(jsObject.getSession())
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart:63:12: Error: The method 'handleThenable' isn't defined for the type     
  'MultiFactorUser'.
- 'MultiFactorUser' is from 'package:firebase_auth_web/src/interop/multi_factor.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  return handleThenable(jsObject.enroll(assertion.jsObject, displayName));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart:75:12: Error: The method 'handleThenable' isn't defined for the type     
  'MultiFactorUser'.
- 'MultiFactorUser' is from 'package:firebase_auth_web/src/interop/multi_factor.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.                                                                             
  return handleThenable(jsObject.unenroll(multiFactorInfoId));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart:150:12: Error: The method 'handleThenable' isn't defined for the type    
  'MultiFactorResolver'.
- 'MultiFactorResolver' is from 'package:firebase_auth_web/src/interop/multi_factor.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  return handleThenable(jsObject.resolveSignIn(assertion.jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_auth_web-5.8.13/lib/src/interop/multi_factor.dart:230:12: Error: Method not found: 'handleThenable'.
  return handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:129:22: Error: The method 'handleThenable' isn't defined for the type      
  'StorageReference'.
- 'StorageReference' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  Future delete() => handleThenable(storage_interop.deleteObject(jsObject));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:134:15: Error: The method 'handleThenable' isn't defined for the type      
  'StorageReference'.
- 'StorageReference' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  await handleThenable(storage_interop.getDownloadURL(jsObject));
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:140:7: Error: The method 'handleThenable' isn't defined for the type       
  'StorageReference'.
- 'StorageReference' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(storage_interop.getMetadata(jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:154:7: Error: The method 'handleThenable' isn't defined for the type       
  'StorageReference'.
- 'StorageReference' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(storage_interop.list(jsObject, options?.jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:169:7: Error: The method 'handleThenable' isn't defined for the type       
  'StorageReference'.
- 'StorageReference' is from 'package:firebase_storage_web/src/interop/storage.dart'                                                                                               
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(storage_interop.listAll(jsObject))
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:193:11: Error: The method 'handleThenable' isn't defined for the type      
  'StorageReference'.
- 'StorageReference' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  await handleThenable(
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:263:42: Error: Method not found: 'jsify'.
  (customMetadata != null) ? jsify(customMetadata) : null));
  ^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:300:9: Error: The method 'handleThenable' isn't defined for the type       
  'UploadTask'.
- 'UploadTask' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'handleThenable'.
  handleThenable(jsObject).then(UploadTaskSnapshot.getInstance);                                                                                                              
  ^^^^^^^^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:437:42: Error: Method not found: 'jsify'.
  (customMetadata != null) ? jsify(customMetadata) : null));
  ^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:486:38: Error: The method 'dartify' isn't defined for the type
  '_SettableMetadataBase<T>'.
- '_SettableMetadataBase' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'dartify'.
  Map<String, dynamic>? metadata = dartify(jsObject.customMetadata);
  ^^^^^^^
  ../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart:495:31: Error: The method 'jsify' isn't defined for the type
  '_SettableMetadataBase<T>'.
- '_SettableMetadataBase' is from 'package:firebase_storage_web/src/interop/storage.dart'
  ('../../../AppData/Local/Pub/Cache/hosted/pub.dev/firebase_storage_web-3.6.22/lib/src/interop/storage.dart').
  Try correcting the name to the name of an existing method, or defining a method named 'jsify'.
  jsObject.customMetadata = jsify(m);
  ^^^^^                                                                                                                                                 
  Waiting for connection from debug service on Chrome...             28.5s
  Failed to compile application.                                                                                                                                                      
  PS C:\Users\dell\flutter projects\chkids\ch_kids> flutter pub outdated
  Showing outdated packages.
  [*] indicates versions that are not the latest available.

Package Name                             Current    Upgradable  Resolvable  Latest

direct dependencies:
cloud_firestore                          *4.17.5    *4.17.5     6.0.1       6.0.1                                                                                                   
firebase_analytics                       *10.10.7   *10.10.7    12.0.1      12.0.1                                                                                                  
firebase_auth                            *4.16.0    *4.16.0     6.0.2       6.0.2                                                                                                   
firebase_core                            *2.32.0    *2.32.0     4.1.0       4.1.0                                                                                                   
firebase_crashlytics                     *3.5.7     *3.5.7      5.0.1       5.0.1                                                                                                   
firebase_storage                         *11.6.5    *11.6.5     13.0.1      13.0.1                                                                                                  
google_fonts                             *5.1.0     *5.1.0      6.3.1       6.3.1                                                                                                   
google_sign_in                           *6.3.0     *6.3.0      7.1.1       7.1.1                                                                                                   
intl                                     *0.18.1    *0.18.1     0.20.2      0.20.2                                                                                                  
uuid                                     *3.0.7     *3.0.7      4.5.1       4.5.1

dev_dependencies:
build_runner                             *2.4.13    *2.4.13     *2.4.13     2.8.0

transitive dependencies:
_flutterfire_internals                   *1.3.35    *1.3.35     1.3.61      1.3.61                                                                                                  
characters                               *1.4.0     *1.4.0      *1.4.0      1.4.1
cloud_firestore_platform_interface       *6.2.5     *6.2.5      7.0.1       7.0.1                                                                                                   
cloud_firestore_web                      *3.12.5    *3.12.5     5.0.1       5.0.1                                                                                                   
firebase_analytics_platform_interface    *3.10.8    *3.10.8     5.0.1       5.0.1                                                                                                   
firebase_analytics_web                   *0.5.7+7   *0.5.7+7    0.6.0+1     0.6.0+1                                                                                                 
firebase_auth_platform_interface         *7.3.0     *7.3.0      8.1.1       8.1.1                                                                                                   
firebase_auth_web                        *5.8.13    *5.8.13     6.0.2       6.0.2                                                                                                   
firebase_core_platform_interface         *5.4.2     *5.4.2      6.0.0       6.0.0                                                                                                   
firebase_core_web                        *2.24.0    *2.24.0     3.1.0       3.1.0                                                                                                   
firebase_crashlytics_platform_interface  *3.6.35    *3.6.35     3.8.12      3.8.12                                                                                                  
firebase_storage_platform_interface      *5.1.22    *5.1.22     5.2.12      5.2.12                                                                                                  
firebase_storage_web                     *3.6.22    *3.6.22     3.10.19     3.10.19  
google_sign_in_android                   *6.2.1     *6.2.1      7.0.5       7.0.5                                                                                                   
google_sign_in_ios                       *5.9.0     *5.9.0      6.1.0       6.1.0                                                                                                   
google_sign_in_platform_interface        *2.5.0     *2.5.0      3.0.0       3.0.0                                                                                                   
google_sign_in_web                       *0.12.4+4  *0.12.4+4   1.0.0       1.0.0                                                                                                   
js                                       *0.6.7     *0.6.7      0.7.2       0.7.2    (discontinued)
material_color_utilities                 *0.11.1    *0.11.1     *0.11.1     0.13.0
meta                                     *1.16.0    *1.16.0     *1.16.0     1.17.0
sprintf                                  -          -           7.0.0       7.0.0                                                                                                   
test_api                                 *0.7.6     *0.7.6      *0.7.6      0.7.7

transitive dev_dependencies:
_fe_analyzer_shared                      *67.0.0    *67.0.0     *67.0.0     88.0.0
analyzer                                 *6.4.1     *6.4.1      *6.4.1      8.1.1
build                                    *2.4.1     *2.4.1      *2.4.1      4.0.0
build_config                             *1.1.2     *1.1.2      *1.1.2      1.2.0
build_resolvers                          *2.4.2     *2.4.2      *2.4.2      3.0.4
build_runner_core                        *7.3.2     *7.3.2      *7.3.2      9.3.2
dart_style                               *2.3.6     *2.3.6      *2.3.6      3.1.2
shelf_web_socket                         *2.0.1     *2.0.1      *2.0.1      3.0.0
source_gen                               *1.5.0     *1.5.0      *1.5.0      4.0.1
source_helper                            *1.3.5     *1.3.5      *1.3.5      1.3.8

27  dependencies are constrained to versions that are older than a resolvable version.
To update these dependencies, edit pubspec.yaml, or run `flutter pub upgrade --major-versions`.

js
Package js has been discontinued. See https://dart.dev/go/package-discontinue
PS C:\Users\dell\flutter projects\chkids\ch_kids>