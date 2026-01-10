// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileEditNotifierHash() =>
    r'8e1cab1a2cb224b48dc41adc296827face464fab';

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

abstract class _$ProfileEditNotifier
    extends BuildlessAutoDisposeNotifier<ProfileEditState> {
  late final String userId;

  ProfileEditState build(
    String userId,
  );
}

/// See also [ProfileEditNotifier].
@ProviderFor(ProfileEditNotifier)
const profileEditNotifierProvider = ProfileEditNotifierFamily();

/// See also [ProfileEditNotifier].
class ProfileEditNotifierFamily extends Family<ProfileEditState> {
  /// See also [ProfileEditNotifier].
  const ProfileEditNotifierFamily();

  /// See also [ProfileEditNotifier].
  ProfileEditNotifierProvider call(
    String userId,
  ) {
    return ProfileEditNotifierProvider(
      userId,
    );
  }

  @override
  ProfileEditNotifierProvider getProviderOverride(
    covariant ProfileEditNotifierProvider provider,
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
  String? get name => r'profileEditNotifierProvider';
}

/// See also [ProfileEditNotifier].
class ProfileEditNotifierProvider extends AutoDisposeNotifierProviderImpl<
    ProfileEditNotifier, ProfileEditState> {
  /// See also [ProfileEditNotifier].
  ProfileEditNotifierProvider(
    String userId,
  ) : this._internal(
          () => ProfileEditNotifier()..userId = userId,
          from: profileEditNotifierProvider,
          name: r'profileEditNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileEditNotifierHash,
          dependencies: ProfileEditNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProfileEditNotifierFamily._allTransitiveDependencies,
          userId: userId,
        );

  ProfileEditNotifierProvider._internal(
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
  ProfileEditState runNotifierBuild(
    covariant ProfileEditNotifier notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(ProfileEditNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileEditNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<ProfileEditNotifier, ProfileEditState>
      createElement() {
    return _ProfileEditNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileEditNotifierProvider && other.userId == userId;
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
mixin ProfileEditNotifierRef
    on AutoDisposeNotifierProviderRef<ProfileEditState> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ProfileEditNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<ProfileEditNotifier,
        ProfileEditState> with ProfileEditNotifierRef {
  _ProfileEditNotifierProviderElement(super.provider);

  @override
  String get userId => (origin as ProfileEditNotifierProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
