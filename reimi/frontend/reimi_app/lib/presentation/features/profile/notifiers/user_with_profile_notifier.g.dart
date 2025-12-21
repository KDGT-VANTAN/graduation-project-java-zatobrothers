// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_with_profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userWithProfileNotifierHash() =>
    r'a116e60ed4733fa5c3037378bf3f673932838209';

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

abstract class _$UserWithProfileNotifier
    extends BuildlessAutoDisposeAsyncNotifier<UserWithProfileModel?> {
  late final String userId;

  FutureOr<UserWithProfileModel?> build(
    String userId,
  );
}

/// See also [UserWithProfileNotifier].
@ProviderFor(UserWithProfileNotifier)
const userWithProfileNotifierProvider = UserWithProfileNotifierFamily();

/// See also [UserWithProfileNotifier].
class UserWithProfileNotifierFamily
    extends Family<AsyncValue<UserWithProfileModel?>> {
  /// See also [UserWithProfileNotifier].
  const UserWithProfileNotifierFamily();

  /// See also [UserWithProfileNotifier].
  UserWithProfileNotifierProvider call(
    String userId,
  ) {
    return UserWithProfileNotifierProvider(
      userId,
    );
  }

  @override
  UserWithProfileNotifierProvider getProviderOverride(
    covariant UserWithProfileNotifierProvider provider,
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
  String? get name => r'userWithProfileNotifierProvider';
}

/// See also [UserWithProfileNotifier].
class UserWithProfileNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserWithProfileNotifier,
        UserWithProfileModel?> {
  /// See also [UserWithProfileNotifier].
  UserWithProfileNotifierProvider(
    String userId,
  ) : this._internal(
          () => UserWithProfileNotifier()..userId = userId,
          from: userWithProfileNotifierProvider,
          name: r'userWithProfileNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userWithProfileNotifierHash,
          dependencies: UserWithProfileNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserWithProfileNotifierFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserWithProfileNotifierProvider._internal(
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
  FutureOr<UserWithProfileModel?> runNotifierBuild(
    covariant UserWithProfileNotifier notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(UserWithProfileNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserWithProfileNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<UserWithProfileNotifier,
      UserWithProfileModel?> createElement() {
    return _UserWithProfileNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserWithProfileNotifierProvider && other.userId == userId;
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
mixin UserWithProfileNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<UserWithProfileModel?> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserWithProfileNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserWithProfileNotifier,
        UserWithProfileModel?> with UserWithProfileNotifierRef {
  _UserWithProfileNotifierProviderElement(super.provider);

  @override
  String get userId => (origin as UserWithProfileNotifierProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
