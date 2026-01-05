// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_observation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherObservationEntity {
  String get id;
  String get weatherReportId;
  double? get temperature;
  double? get humidity;
  double? get pressure;
  double? get windSpeed;
  WindDirection? get windDir;
  DateTime get createdAt;

  /// Create a copy of WeatherObservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherObservationEntityCopyWith<WeatherObservationEntity> get copyWith =>
      _$WeatherObservationEntityCopyWithImpl<WeatherObservationEntity>(
          this as WeatherObservationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherObservationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weatherReportId, weatherReportId) ||
                other.weatherReportId == weatherReportId) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, weatherReportId, temperature,
      humidity, pressure, windSpeed, windDir, createdAt);

  @override
  String toString() {
    return 'WeatherObservationEntity(id: $id, weatherReportId: $weatherReportId, temperature: $temperature, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, windDir: $windDir, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherObservationEntityCopyWith<$Res> {
  factory $WeatherObservationEntityCopyWith(WeatherObservationEntity value,
          $Res Function(WeatherObservationEntity) _then) =
      _$WeatherObservationEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String weatherReportId,
      double? temperature,
      double? humidity,
      double? pressure,
      double? windSpeed,
      WindDirection? windDir,
      DateTime createdAt});
}

/// @nodoc
class _$WeatherObservationEntityCopyWithImpl<$Res>
    implements $WeatherObservationEntityCopyWith<$Res> {
  _$WeatherObservationEntityCopyWithImpl(this._self, this._then);

  final WeatherObservationEntity _self;
  final $Res Function(WeatherObservationEntity) _then;

  /// Create a copy of WeatherObservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weatherReportId = null,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
    Object? windDir = freezed,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weatherReportId: null == weatherReportId
          ? _self.weatherReportId
          : weatherReportId // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDir: freezed == windDir
          ? _self.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as WindDirection?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherObservationEntity].
extension WeatherObservationEntityPatterns on WeatherObservationEntity {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherObservationEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherObservationEntity() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherObservationEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherObservationEntity():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WeatherObservationEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherObservationEntity() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String weatherReportId,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDir,
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherObservationEntity() when $default != null:
        return $default(
            _that.id,
            _that.weatherReportId,
            _that.temperature,
            _that.humidity,
            _that.pressure,
            _that.windSpeed,
            _that.windDir,
            _that.createdAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String weatherReportId,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDir,
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherObservationEntity():
        return $default(
            _that.id,
            _that.weatherReportId,
            _that.temperature,
            _that.humidity,
            _that.pressure,
            _that.windSpeed,
            _that.windDir,
            _that.createdAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String weatherReportId,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDir,
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherObservationEntity() when $default != null:
        return $default(
            _that.id,
            _that.weatherReportId,
            _that.temperature,
            _that.humidity,
            _that.pressure,
            _that.windSpeed,
            _that.windDir,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherObservationEntity implements WeatherObservationEntity {
  const _WeatherObservationEntity(
      {required this.id,
      required this.weatherReportId,
      this.temperature,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windDir,
      required this.createdAt});

  @override
  final String id;
  @override
  final String weatherReportId;
  @override
  final double? temperature;
  @override
  final double? humidity;
  @override
  final double? pressure;
  @override
  final double? windSpeed;
  @override
  final WindDirection? windDir;
  @override
  final DateTime createdAt;

  /// Create a copy of WeatherObservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherObservationEntityCopyWith<_WeatherObservationEntity> get copyWith =>
      __$WeatherObservationEntityCopyWithImpl<_WeatherObservationEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherObservationEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weatherReportId, weatherReportId) ||
                other.weatherReportId == weatherReportId) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, weatherReportId, temperature,
      humidity, pressure, windSpeed, windDir, createdAt);

  @override
  String toString() {
    return 'WeatherObservationEntity(id: $id, weatherReportId: $weatherReportId, temperature: $temperature, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, windDir: $windDir, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherObservationEntityCopyWith<$Res>
    implements $WeatherObservationEntityCopyWith<$Res> {
  factory _$WeatherObservationEntityCopyWith(_WeatherObservationEntity value,
          $Res Function(_WeatherObservationEntity) _then) =
      __$WeatherObservationEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String weatherReportId,
      double? temperature,
      double? humidity,
      double? pressure,
      double? windSpeed,
      WindDirection? windDir,
      DateTime createdAt});
}

/// @nodoc
class __$WeatherObservationEntityCopyWithImpl<$Res>
    implements _$WeatherObservationEntityCopyWith<$Res> {
  __$WeatherObservationEntityCopyWithImpl(this._self, this._then);

  final _WeatherObservationEntity _self;
  final $Res Function(_WeatherObservationEntity) _then;

  /// Create a copy of WeatherObservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? weatherReportId = null,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
    Object? windDir = freezed,
    Object? createdAt = null,
  }) {
    return _then(_WeatherObservationEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weatherReportId: null == weatherReportId
          ? _self.weatherReportId
          : weatherReportId // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: freezed == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: freezed == windSpeed
          ? _self.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDir: freezed == windDir
          ? _self.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as WindDirection?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
