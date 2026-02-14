// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_weather_report_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostWeatherReportDto {
  String get comment;
  WeatherType get weatherType;
  FeelingType get feelingType;
  ForecastType get forecastType;
  MediaType get mediaType;
  String get weatherPhoto;
  double get latitude;
  double get longitude;
  double? get temperature;
  double? get humidity;
  double? get pressure;
  double? get windSpeed;
  WindDirection? get windDirection;

  /// Create a copy of PostWeatherReportDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostWeatherReportDtoCopyWith<PostWeatherReportDto> get copyWith =>
      _$PostWeatherReportDtoCopyWithImpl<PostWeatherReportDto>(
          this as PostWeatherReportDto, _$identity);

  /// Serializes this PostWeatherReportDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostWeatherReportDto &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.weatherType, weatherType) ||
                other.weatherType == weatherType) &&
            (identical(other.feelingType, feelingType) ||
                other.feelingType == feelingType) &&
            (identical(other.forecastType, forecastType) ||
                other.forecastType == forecastType) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.weatherPhoto, weatherPhoto) ||
                other.weatherPhoto == weatherPhoto) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      weatherPhoto,
      latitude,
      longitude,
      temperature,
      humidity,
      pressure,
      windSpeed,
      windDirection);

  @override
  String toString() {
    return 'PostWeatherReportDto(comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, weatherPhoto: $weatherPhoto, latitude: $latitude, longitude: $longitude, temperature: $temperature, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, windDirection: $windDirection)';
  }
}

/// @nodoc
abstract mixin class $PostWeatherReportDtoCopyWith<$Res> {
  factory $PostWeatherReportDtoCopyWith(PostWeatherReportDto value,
          $Res Function(PostWeatherReportDto) _then) =
      _$PostWeatherReportDtoCopyWithImpl;
  @useResult
  $Res call(
      {String comment,
      WeatherType weatherType,
      FeelingType feelingType,
      ForecastType forecastType,
      MediaType mediaType,
      String weatherPhoto,
      double latitude,
      double longitude,
      double? temperature,
      double? humidity,
      double? pressure,
      double? windSpeed,
      WindDirection? windDirection});
}

/// @nodoc
class _$PostWeatherReportDtoCopyWithImpl<$Res>
    implements $PostWeatherReportDtoCopyWith<$Res> {
  _$PostWeatherReportDtoCopyWithImpl(this._self, this._then);

  final PostWeatherReportDto _self;
  final $Res Function(PostWeatherReportDto) _then;

  /// Create a copy of PostWeatherReportDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? weatherType = null,
    Object? feelingType = null,
    Object? forecastType = null,
    Object? mediaType = null,
    Object? weatherPhoto = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
  }) {
    return _then(_self.copyWith(
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      weatherType: null == weatherType
          ? _self.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      feelingType: null == feelingType
          ? _self.feelingType
          : feelingType // ignore: cast_nullable_to_non_nullable
              as FeelingType,
      forecastType: null == forecastType
          ? _self.forecastType
          : forecastType // ignore: cast_nullable_to_non_nullable
              as ForecastType,
      mediaType: null == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      weatherPhoto: null == weatherPhoto
          ? _self.weatherPhoto
          : weatherPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
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
      windDirection: freezed == windDirection
          ? _self.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as WindDirection?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PostWeatherReportDto].
extension PostWeatherReportDtoPatterns on PostWeatherReportDto {
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
    TResult Function(_PostWeatherReportDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostWeatherReportDto() when $default != null:
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
    TResult Function(_PostWeatherReportDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostWeatherReportDto():
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
    TResult? Function(_PostWeatherReportDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostWeatherReportDto() when $default != null:
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
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String weatherPhoto,
            double latitude,
            double longitude,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDirection)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostWeatherReportDto() when $default != null:
        return $default(
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.weatherPhoto,
            _that.latitude,
            _that.longitude,
            _that.temperature,
            _that.humidity,
            _that.pressure,
            _that.windSpeed,
            _that.windDirection);
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
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String weatherPhoto,
            double latitude,
            double longitude,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDirection)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostWeatherReportDto():
        return $default(
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.weatherPhoto,
            _that.latitude,
            _that.longitude,
            _that.temperature,
            _that.humidity,
            _that.pressure,
            _that.windSpeed,
            _that.windDirection);
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
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String weatherPhoto,
            double latitude,
            double longitude,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDirection)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostWeatherReportDto() when $default != null:
        return $default(
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.weatherPhoto,
            _that.latitude,
            _that.longitude,
            _that.temperature,
            _that.humidity,
            _that.pressure,
            _that.windSpeed,
            _that.windDirection);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PostWeatherReportDto implements PostWeatherReportDto {
  const _PostWeatherReportDto(
      {required this.comment,
      required this.weatherType,
      required this.feelingType,
      required this.forecastType,
      required this.mediaType,
      required this.weatherPhoto,
      required this.latitude,
      required this.longitude,
      this.temperature,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windDirection});
  factory _PostWeatherReportDto.fromJson(Map<String, dynamic> json) =>
      _$PostWeatherReportDtoFromJson(json);

  @override
  final String comment;
  @override
  final WeatherType weatherType;
  @override
  final FeelingType feelingType;
  @override
  final ForecastType forecastType;
  @override
  final MediaType mediaType;
  @override
  final String weatherPhoto;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? temperature;
  @override
  final double? humidity;
  @override
  final double? pressure;
  @override
  final double? windSpeed;
  @override
  final WindDirection? windDirection;

  /// Create a copy of PostWeatherReportDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostWeatherReportDtoCopyWith<_PostWeatherReportDto> get copyWith =>
      __$PostWeatherReportDtoCopyWithImpl<_PostWeatherReportDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostWeatherReportDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostWeatherReportDto &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.weatherType, weatherType) ||
                other.weatherType == weatherType) &&
            (identical(other.feelingType, feelingType) ||
                other.feelingType == feelingType) &&
            (identical(other.forecastType, forecastType) ||
                other.forecastType == forecastType) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.weatherPhoto, weatherPhoto) ||
                other.weatherPhoto == weatherPhoto) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      weatherPhoto,
      latitude,
      longitude,
      temperature,
      humidity,
      pressure,
      windSpeed,
      windDirection);

  @override
  String toString() {
    return 'PostWeatherReportDto(comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, weatherPhoto: $weatherPhoto, latitude: $latitude, longitude: $longitude, temperature: $temperature, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, windDirection: $windDirection)';
  }
}

/// @nodoc
abstract mixin class _$PostWeatherReportDtoCopyWith<$Res>
    implements $PostWeatherReportDtoCopyWith<$Res> {
  factory _$PostWeatherReportDtoCopyWith(_PostWeatherReportDto value,
          $Res Function(_PostWeatherReportDto) _then) =
      __$PostWeatherReportDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String comment,
      WeatherType weatherType,
      FeelingType feelingType,
      ForecastType forecastType,
      MediaType mediaType,
      String weatherPhoto,
      double latitude,
      double longitude,
      double? temperature,
      double? humidity,
      double? pressure,
      double? windSpeed,
      WindDirection? windDirection});
}

/// @nodoc
class __$PostWeatherReportDtoCopyWithImpl<$Res>
    implements _$PostWeatherReportDtoCopyWith<$Res> {
  __$PostWeatherReportDtoCopyWithImpl(this._self, this._then);

  final _PostWeatherReportDto _self;
  final $Res Function(_PostWeatherReportDto) _then;

  /// Create a copy of PostWeatherReportDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? comment = null,
    Object? weatherType = null,
    Object? feelingType = null,
    Object? forecastType = null,
    Object? mediaType = null,
    Object? weatherPhoto = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
  }) {
    return _then(_PostWeatherReportDto(
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      weatherType: null == weatherType
          ? _self.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      feelingType: null == feelingType
          ? _self.feelingType
          : feelingType // ignore: cast_nullable_to_non_nullable
              as FeelingType,
      forecastType: null == forecastType
          ? _self.forecastType
          : forecastType // ignore: cast_nullable_to_non_nullable
              as ForecastType,
      mediaType: null == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      weatherPhoto: null == weatherPhoto
          ? _self.weatherPhoto
          : weatherPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
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
      windDirection: freezed == windDirection
          ? _self.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as WindDirection?,
    ));
  }
}

// dart format on
