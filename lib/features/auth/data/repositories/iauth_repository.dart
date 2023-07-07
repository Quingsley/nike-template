import 'package:nike_app/features/auth/data/models/app_user.dart';

abstract class IAuthRepository {
  Future<void> signInwithEmailAndPassword(AppUser user);
  Future<bool> signUpWithEmailAndPassword(AppUser user);
  Future<bool> signInWithGoogle();
  Future<bool> signInUpGoogle();
}