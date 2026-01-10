// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_report_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherReportDetailNotifierHash() =>
    r'63a7d091899afaa072548aaee9a364b1fe4ca624';

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

abstract class _$WeatherReportDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<WeatherReportDetailState> {
  late final String reportId;

  FutureOr<WeatherReportDetailState> build(
    String reportId,
  );
}

/// See also [WeatherReportDetailNotifier].
@ProviderFor(WeatherReportDetailNotifier)
const weatherReportDetailNotifierProvider = WeatherReportDetailNotifierFamily();

/// See also [WeatherReportDetailNotifier].
class WeatherReportDetailNotifierFamily
    extends Family<AsyncValue<WeatherReportDetailState>> {
  /// See also [WeatherReportDetailNotifier].
  const WeatherReportDetailNotifierFamily();

  /// See also [WeatherReportDetailNotifier].
  WeatherReportDetailNotifierProvider call(
    String reportId,
  ) {
    return WeatherReportDetailNotifierProvider(
      reportId,
    );
  }

  @override
  WeatherReportDetailNotifierProvider getProviderOverride(
    covariant WeatherReportDetailNotifierProvider provider,
  ) {
    return call(
      provider.reportId,
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
  String? get name => r'weatherReportDetailNotifierProvider';
}

/// See also [WeatherReportDetailNotifier].
class WeatherReportDetailNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WeatherReportDetailNotifier,
        WeatherReportDetailState> {
  /// See also [WeatherReportDetailNotifier].
  WeatherReportDetailNotifierProvider(
    String reportId,
  ) : this._internal(
          () => WeatherReportDetailNotifier()..reportId = reportId,
          from: weatherReportDetailNotifierProvider,
          name: r'weatherReportDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherReportDetailNotifierHash,
          dependencies: WeatherReportDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              WeatherReportDetailNotifierFamily._allTransitiveDependencies,
          reportId: reportId,
        );

  WeatherReportDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.reportId,
  }) : super.internal();

  final String reportId;

  @override
  FutureOr<WeatherReportDetailState> runNotifierBuild(
    covariant WeatherReportDetailNotifier notifier,
  ) {
    return notifier.build(
      reportId,
    );
  }

  @override
  Override overrideWith(WeatherReportDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherReportDetailNotifierProvider._internal(
        () => create()..reportId = reportId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        reportId: reportId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WeatherReportDetailNotifier,
      WeatherReportDetailState> createElement() {
    return _WeatherReportDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherReportDetailNotifierProvider &&
        other.reportId == reportId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, reportId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WeatherReportDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<WeatherReportDetailState> {
  /// The parameter `reportId` of this provider.
  String get reportId;
}

class _WeatherReportDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WeatherReportDetailNotifier,
        WeatherReportDetailState> with WeatherReportDetailNotifierRef {
  _WeatherReportDetailNotifierProviderElement(super.provider);

  @override
  String get reportId =>
      (origin as WeatherReportDetailNotifierProvider).reportId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
