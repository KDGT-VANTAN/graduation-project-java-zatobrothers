// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileDetailNotifierHash() =>
    r'7847c8cc80a1005ad8f8fd3d453289917f05e047';

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

abstract class _$ProfileDetailNotifier
    extends BuildlessAutoDisposeNotifier<ProfileDetailState> {
  late final String userId;

  ProfileDetailState build(
    String userId,
  );
}

/// See also [ProfileDetailNotifier].
@ProviderFor(ProfileDetailNotifier)
const profileDetailNotifierProvider = ProfileDetailNotifierFamily();

/// See also [ProfileDetailNotifier].
class ProfileDetailNotifierFamily extends Family<ProfileDetailState> {
  /// See also [ProfileDetailNotifier].
  const ProfileDetailNotifierFamily();

  /// See also [ProfileDetailNotifier].
  ProfileDetailNotifierProvider call(
    String userId,
  ) {
    return ProfileDetailNotifierProvider(
      userId,
    );
  }

  @override
  ProfileDetailNotifierProvider getProviderOverride(
    covariant ProfileDetailNotifierProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'profileDetailNotifierProvider';
}

/// See also [ProfileDetailNotifier].
class ProfileDetailNotifierProvider extends AutoDisposeNotifierProviderImpl<
    ProfileDetailNotifier, ProfileDetailState> {
  /// See also [ProfileDetailNotifier].
  ProfileDetailNotifierProvider(
    String userId,
  ) : this._internal(
          () => ProfileDetailNotifier()..userId = userId,
          from: profileDetailNotifierProvider,
          name: r'profileDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileDetailNotifierHash,
          dependencies: ProfileDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProfileDetailNotifierFamily._allTransitiveDependencies,
          userId: userId,
        );

  ProfileDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  ProfileDetailState runNotifierBuild(
    covariant ProfileDetailNotifier notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(ProfileDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileDetailNotifierProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ProfileDetailNotifier, ProfileDetailState>
      createElement() {
    return _ProfileDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileDetailNotifierProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileDetailNotifierRef
    on AutoDisposeNotifierProviderRef<ProfileDetailState> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ProfileDetailNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ProfileDetailNotifier,
        ProfileDetailState> with ProfileDetailNotifierRef {
  _ProfileDetailNotifierProviderElement(super.provider);

  @override
  String get userId => (origin as ProfileDetailNotifierProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
