// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$passwordValidatorHash() => r'fc5a76bf75c1e3d74d6752f36ca361169bfe5c4a';

/// See also [passwordValidator].
@ProviderFor(passwordValidator)
final passwordValidatorProvider = AutoDisposeProvider<MultiValidator>.internal(
  passwordValidator,
  name: r'passwordValidatorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$passwordValidatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PasswordValidatorRef = AutoDisposeProviderRef<MultiValidator>;
String _$emailValidatorHash() => r'e13c9bd912f237b64ebe4907eb84f4fc719d9746';

/// See also [emailValidator].
@ProviderFor(emailValidator)
final emailValidatorProvider = AutoDisposeProvider<MultiValidator>.internal(
  emailValidator,
  name: r'emailValidatorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$emailValidatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EmailValidatorRef = AutoDisposeProviderRef<MultiValidator>;
String _$userNameValidatorHash() => r'150414f810f2de3c2d18edbdcc00563aa9fb6b4b';

/// See also [userNameValidator].
@ProviderFor(userNameValidator)
final userNameValidatorProvider = AutoDisposeProvider<MultiValidator>.internal(
  userNameValidator,
  name: r'userNameValidatorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userNameValidatorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserNameValidatorRef = AutoDisposeProviderRef<MultiValidator>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
