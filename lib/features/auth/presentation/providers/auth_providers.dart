import 'package:nike_app/features/auth/data/repositories/mock_auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@riverpod
MockAuthRepository mockAuthRepository(MockAuthRepositoryRef ref) {
  return MockAuthRepository(ref);
}
