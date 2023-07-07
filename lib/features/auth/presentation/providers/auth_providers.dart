import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_app/features/auth/data/repositories/mock_auth_repository.dart';
import 'package:nike_app/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@riverpod
MockAuthRepository mockAuthRepository(MockAuthRepositoryRef ref) {
  return MockAuthRepository(ref);
}

@riverpod
AuthViewModel authViewModel(AuthViewModelRef ref) {
  var repository = ref.read(mockAuthRepositoryProvider);
  return AuthViewModel(repository);
}

final isLoadingStateProvider = StateProvider<bool>((ref) => false);
