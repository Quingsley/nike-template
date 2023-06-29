// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tabViewModelHash() => r'8362152e64d21c5ee959d65d4fc5232bf0f09659';

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

typedef TabViewModelRef = AutoDisposeProviderRef<TabsViewModel>;

/// See also [tabViewModel].
@ProviderFor(tabViewModel)
const tabViewModelProvider = TabViewModelFamily();

/// See also [tabViewModel].
class TabViewModelFamily extends Family<TabsViewModel> {
  /// See also [tabViewModel].
  const TabViewModelFamily();

  /// See also [tabViewModel].
  TabViewModelProvider call({
    required LocationService locationService,
  }) {
    return TabViewModelProvider(
      locationService: locationService,
    );
  }

  @override
  TabViewModelProvider getProviderOverride(
    covariant TabViewModelProvider provider,
  ) {
    return call(
      locationService: provider.locationService,
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
  String? get name => r'tabViewModelProvider';
}

/// See also [tabViewModel].
class TabViewModelProvider extends AutoDisposeProvider<TabsViewModel> {
  /// See also [tabViewModel].
  TabViewModelProvider({
    required this.locationService,
  }) : super.internal(
          (ref) => tabViewModel(
            ref,
            locationService: locationService,
          ),
          from: tabViewModelProvider,
          name: r'tabViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tabViewModelHash,
          dependencies: TabViewModelFamily._dependencies,
          allTransitiveDependencies:
              TabViewModelFamily._allTransitiveDependencies,
        );

  final LocationService locationService;

  @override
  bool operator ==(Object other) {
    return other is TabViewModelProvider &&
        other.locationService == locationService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locationService.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
