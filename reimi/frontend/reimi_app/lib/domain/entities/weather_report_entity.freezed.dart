// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportEntity {
  String get id;
  String get userId;
  String get comment;
  WeatherType get weather;
  FeelingType get feeling;
  ForecastType get forecast;
  double get latitude;
  double get longitude;
  @IsoDateTimeConverter()
  DateTime get createdAt;

  /// Create a copy of WeatherReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportEntityCopyWith<WeatherReportEntity> get copyWith =>
      _$WeatherReportEntityCopyWithImpl<WeatherReportEntity>(
          this as WeatherReportEntity, _$identity);

  /// Serializes this WeatherReportEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, comment, weather,
      feeling, forecast, latitude, longitude, createdAt);

  @override
  String toString() {
    return 'WeatherReportEntity(id: $id, userId: $userId, comment: $comment, weather: $weather, feeling: $feeling, forecast: $forecast, latitude: $latitude, longitude: $longitude, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportEntityCopyWith<$Res> {
  factory $WeatherReportEntityCopyWith(
          WeatherReportEntity value, $Res Function(WeatherReportEntity) _then) =
      _$WeatherReportEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String comment,
      WeatherType weather,
      FeelingType feeling,
      ForecastType forecast,
      double latitude,
      double longitude,
      @IsoDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$WeatherReportEntityCopyWithImpl<$Res>
    implements $WeatherReportEntityCopyWith<$Res> {
  _$WeatherReportEntityCopyWithImpl(this._self, this._then);

  final WeatherReportEntity _self;
  final $Res Function(WeatherReportEntity) _then;

  /// Create a copy of WeatherReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? comment = null,
    Object? weather = null,
    Object? feeling = null,
    Object? forecast = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      feeling: null == feeling
          ? _self.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as FeelingType,
      forecast: null == forecast
          ? _self.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastType,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherReportEntity].
extension WeatherReportEntityPatterns on WeatherReportEntity {
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
    TResult Function(_WeatherReportEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportEntity() when $default != null:
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
    TResult Function(_WeatherReportEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportEntity():
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
    TResult? Function(_WeatherReportEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportEntity() when $default != null:
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
            String userId,
            String comment,
            WeatherType weather,
            FeelingType feeling,
            ForecastType forecast,
            double latitude,
            double longitude,
            @IsoDateTimeConverter() DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportEntity() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.comment,
            _that.weather,
            _that.feeling,
            _that.forecast,
            _that.latitude,
            _that.longitude,
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
            String userId,
            String comment,
            WeatherType weather,
            FeelingType feeling,
            ForecastType forecast,
            double latitude,
            double longitude,
            @IsoDateTimeConverter() DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportEntity():
        return $default(
            _that.id,
            _that.userId,
            _that.comment,
            _that.weather,
            _that.feeling,
            _that.forecast,
            _that.latitude,
            _that.longitude,
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
            String userId,
            String comment,
            WeatherType weather,
            FeelingType feeling,
            ForecastType forecast,
            double latitude,
            double longitude,
            @IsoDateTimeConverter() DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportEntity() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.comment,
            _that.weather,
            _that.feeling,
            _that.forecast,
            _that.latitude,
            _that.longitude,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _WeatherReportEntity implements WeatherReportEntity {
  const _WeatherReportEntity(
      {required this.id,
      required this.userId,
      required this.comment,
      required this.weather,
      required this.feeling,
      required this.forecast,
      required this.latitude,
      required this.longitude,
      @IsoDateTimeConverter() required this.createdAt});
  factory _WeatherReportEntity.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportEntityFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String comment;
  @override
  final WeatherType weather;
  @override
  final FeelingType feeling;
  @override
  final ForecastType forecast;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @IsoDateTimeConverter()
  final DateTime createdAt;

  /// Create a copy of WeatherReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportEntityCopyWith<_WeatherReportEntity> get copyWith =>
      __$WeatherReportEntityCopyWithImpl<_WeatherReportEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherReportEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, comment, weather,
      feeling, forecast, latitude, longitude, createdAt);

  @override
  String toString() {
    return 'WeatherReportEntity(id: $id, userId: $userId, comment: $comment, weather: $weather, feeling: $feeling, forecast: $forecast, latitude: $latitude, longitude: $longitude, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportEntityCopyWith<$Res>
    implements $WeatherReportEntityCopyWith<$Res> {
  factory _$WeatherReportEntityCopyWith(_WeatherReportEntity value,
          $Res Function(_WeatherReportEntity) _then) =
      __$WeatherReportEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String comment,
      WeatherType weather,
      FeelingType feeling,
      ForecastType forecast,
      double latitude,
      double longitude,
      @IsoDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$WeatherReportEntityCopyWithImpl<$Res>
    implements _$WeatherReportEntityCopyWith<$Res> {
  __$WeatherReportEntityCopyWithImpl(this._self, this._then);

  final _WeatherReportEntity _self;
  final $Res Function(_WeatherReportEntity) _then;

  /// Create a copy of WeatherReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? comment = null,
    Object? weather = null,
    Object? feeling = null,
    Object? forecast = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? createdAt = null,
  }) {
    return _then(_WeatherReportEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      weather: null == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      feeling: null == feeling
          ? _self.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as FeelingType,
      forecast: null == forecast
          ? _self.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as ForecastType,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
