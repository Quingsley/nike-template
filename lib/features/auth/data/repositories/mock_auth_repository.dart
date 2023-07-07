import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_app/features/auth/data/models/app_user.dart';
import 'package:nike_app/features/auth/data/repositories/iauth_repository.dart';
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
  Future<bool> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
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
