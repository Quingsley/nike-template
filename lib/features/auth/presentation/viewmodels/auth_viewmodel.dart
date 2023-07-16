import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:nike_app/features/auth/data/models/app_user.dart';
import 'package:nike_app/features/auth/data/repositories/mock_auth_repository.dart';

class AuthViewModel {
  final MockAuthRepository repository;
  AuthViewModel(this.repository);
  Future<void> signIn(AppUser user) {
    return Future.delayed(const Duration(seconds: 1), () async {
      await repository.signInwithEmailAndPassword(user);
    });
  }

  Future<void> signUp(AppUser user) {
    return Future.delayed(const Duration(seconds: 1), () async {
      await repository.signInwithEmailAndPassword(user);
    });
  }

  Future<UserCredential> signInWithGoogle() {
    return repository.signInWithGoogle();
  }
}
