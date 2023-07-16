import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_app/features/auth/data/models/app_user.dart';
import 'package:nike_app/features/auth/data/repositories/iauth_repository.dart';
import 'package:nike_app/features/auth/presentation/providers/auth_providers.dart';
import 'package:nike_app/features/home/presentation/pages/home_screen.dart';
import 'package:nike_app/routes/app_routes.dart';

class MockAuthRepository implements IAuthRepository {
  final Ref ref;
  MockAuthRepository(this.ref);

  @override
  Future<bool> signInUpGoogle() {
    // TODO: implement signInUpGoogle
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
// Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await ref
        .read(firebaseAuthProvider)
        .signInWithCredential(credential);
  }

  @override
  Future<void> signInwithEmailAndPassword(AppUser user) async {
    if (user.email == 'jeromejuma25@gmail.com') {
      ref.read(goRouterProvider).go(HomeScreen.route);
    } else {
      throw Exception('Invalid user');
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword(AppUser user) async {
    if (user.email == 'jeromejuma25@gmail.com') {
      ref.read(goRouterProvider).go(HomeScreen.route);
    } else {
      throw Exception('Invalid user');
    }
  }
}
