import 'package:firebase_auth/firebase_auth.dart';
import 'package:nike_app/features/auth/data/models/app_user.dart';

abstract class IAuthRepository {
  Future<void> signInwithEmailAndPassword(AppUser user);
  Future<void> signUpWithEmailAndPassword(AppUser user);
  Future<UserCredential> signInWithGoogle();
  Future<bool> signInUpGoogle();
}
