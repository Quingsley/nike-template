import 'dart:async';

import 'package:nike_app/features/auth/data/models/app_user.dart';
import 'package:nike_app/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  Future<void> signIn(AppUser user) async {
    var repository = ref.read(mockAuthRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () async => await repository.signInwithEmailAndPassword(user));
  }

  @override
  FutureOr<void> build() {}
}
