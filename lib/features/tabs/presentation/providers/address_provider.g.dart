// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$futureAddressHash() => r'6f59f90bd34528cf09b8a0ad8b1fd1ef93c6f6fd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef FutureAddressRef = AutoDisposeFutureProviderRef<String>;

/// See also [futureAddress].
@ProviderFor(futureAddress)
const futureAddressProvider = FutureAddressFamily();

/// See also [futureAddress].
class FutureAddressFamily extends Family<AsyncValue<String>> {
  /// See also [futureAddress].
  const FutureAddressFamily();

  /// See also [futureAddress].
  FutureAddressProvider call({
    required LocationService locationService,
    required int lat,
    required int lng,
  }) {
    return FutureAddressProvider(
      locationService: locationService,
      lat: lat,
      lng: lng,
    );
  }

  @override
  FutureAddressProvider getProviderOverride(
    covariant FutureAddressProvider provider,
  ) {
    return call(
      locationService: provider.locationService,
      lat: provider.lat,
      lng: provider.lng,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'futureAddressProvider';
}

/// See also [futureAddress].
class FutureAddressProvider extends AutoDisposeFutureProvider<String> {
  /// See also [futureAddress].
  FutureAddressProvider({
    required this.locationService,
    required this.lat,
    required this.lng,
  }) : super.internal(
          (ref) => futureAddress(
            ref,
            locationService: locationService,
            lat: lat,
            lng: lng,
          ),
          from: futureAddressProvider,
          name: r'futureAddressProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$futureAddressHash,
          dependencies: FutureAddressFamily._dependencies,
          allTransitiveDependencies:
              FutureAddressFamily._allTransitiveDependencies,
        );

  final LocationService locationService;
  final int lat;
  final int lng;

  @override
  bool operator ==(Object other) {
    return other is FutureAddressProvider &&
        other.locationService == locationService &&
        other.lat == lat &&
        other.lng == lng;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locationService.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, lng.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
