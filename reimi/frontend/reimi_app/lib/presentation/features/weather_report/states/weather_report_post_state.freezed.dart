// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportPostState {
  String? get comment;
  WeatherType? get weatherType;
  FeelingType? get feelingType;
  ForecastType? get forecastType;
  MediaType? get mediaType;
  String? get weatherPhoto;
  double? get latitude;
  double? get longitude;
  double? get temperature;
  double? get humidity;
  double? get pressure;
  double? get windSpeed;
  WindDirection? get windDirection;
  PrefectureCity? get prefectureCity;
  bool get isChanged;
  WeatherReportPostStatus get status;
  String? get errorMessage;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportPostStateCopyWith<WeatherReportPostState> get copyWith =>
      _$WeatherReportPostStateCopyWithImpl<WeatherReportPostState>(
          this as WeatherReportPostState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportPostState &&
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
                other.windDirection == windDirection) &&
            (identical(other.prefectureCity, prefectureCity) ||
                other.prefectureCity == prefectureCity) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

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
      windDirection,
      prefectureCity,
      isChanged,
      status,
      errorMessage);

  @override
  String toString() {
    return 'WeatherReportPostState(comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, weatherPhoto: $weatherPhoto, latitude: $latitude, longitude: $longitude, temperature: $temperature, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, windDirection: $windDirection, prefectureCity: $prefectureCity, isChanged: $isChanged, status: $status, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportPostStateCopyWith<$Res> {
  factory $WeatherReportPostStateCopyWith(WeatherReportPostState value,
          $Res Function(WeatherReportPostState) _then) =
      _$WeatherReportPostStateCopyWithImpl;
  @useResult
  $Res call(
      {String? comment,
      WeatherType? weatherType,
      FeelingType? feelingType,
      ForecastType? forecastType,
      MediaType? mediaType,
      String? weatherPhoto,
      double? latitude,
      double? longitude,
      double? temperature,
      double? humidity,
      double? pressure,
      double? windSpeed,
      WindDirection? windDirection,
      PrefectureCity? prefectureCity,
      bool isChanged,
      WeatherReportPostStatus status,
      String? errorMessage});

  $PrefectureCityCopyWith<$Res>? get prefectureCity;
}

/// @nodoc
class _$WeatherReportPostStateCopyWithImpl<$Res>
    implements $WeatherReportPostStateCopyWith<$Res> {
  _$WeatherReportPostStateCopyWithImpl(this._self, this._then);

  final WeatherReportPostState _self;
  final $Res Function(WeatherReportPostState) _then;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? weatherType = freezed,
    Object? feelingType = freezed,
    Object? forecastType = freezed,
    Object? mediaType = freezed,
    Object? weatherPhoto = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? prefectureCity = freezed,
    Object? isChanged = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherType: freezed == weatherType
          ? _self.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as WeatherType?,
      feelingType: freezed == feelingType
          ? _self.feelingType
          : feelingType // ignore: cast_nullable_to_non_nullable
              as FeelingType?,
      forecastType: freezed == forecastType
          ? _self.forecastType
          : forecastType // ignore: cast_nullable_to_non_nullable
              as ForecastType?,
      mediaType: freezed == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      weatherPhoto: freezed == weatherPhoto
          ? _self.weatherPhoto
          : weatherPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
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
      prefectureCity: freezed == prefectureCity
          ? _self.prefectureCity
          : prefectureCity // ignore: cast_nullable_to_non_nullable
              as PrefectureCity?,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherReportPostStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrefectureCityCopyWith<$Res>? get prefectureCity {
    if (_self.prefectureCity == null) {
      return null;
    }

    return $PrefectureCityCopyWith<$Res>(_self.prefectureCity!, (value) {
      return _then(_self.copyWith(prefectureCity: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WeatherReportPostState].
extension WeatherReportPostStatePatterns on WeatherReportPostState {
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
    TResult Function(_WeatherReportPostState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
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
    TResult Function(_WeatherReportPostState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState():
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
    TResult? Function(_WeatherReportPostState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
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
            String? comment,
            WeatherType? weatherType,
            FeelingType? feelingType,
            ForecastType? forecastType,
            MediaType? mediaType,
            String? weatherPhoto,
            double? latitude,
            double? longitude,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDirection,
            PrefectureCity? prefectureCity,
            bool isChanged,
            WeatherReportPostStatus status,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
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
            _that.windDirection,
            _that.prefectureCity,
            _that.isChanged,
            _that.status,
            _that.errorMessage);
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
            String? comment,
            WeatherType? weatherType,
            FeelingType? feelingType,
            ForecastType? forecastType,
            MediaType? mediaType,
            String? weatherPhoto,
            double? latitude,
            double? longitude,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDirection,
            PrefectureCity? prefectureCity,
            bool isChanged,
            WeatherReportPostStatus status,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState():
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
            _that.windDirection,
            _that.prefectureCity,
            _that.isChanged,
            _that.status,
            _that.errorMessage);
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
            String? comment,
            WeatherType? weatherType,
            FeelingType? feelingType,
            ForecastType? forecastType,
            MediaType? mediaType,
            String? weatherPhoto,
            double? latitude,
            double? longitude,
            double? temperature,
            double? humidity,
            double? pressure,
            double? windSpeed,
            WindDirection? windDirection,
            PrefectureCity? prefectureCity,
            bool isChanged,
            WeatherReportPostStatus status,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
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
            _that.windDirection,
            _that.prefectureCity,
            _that.isChanged,
            _that.status,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherReportPostState extends WeatherReportPostState {
  const _WeatherReportPostState(
      {this.comment,
      this.weatherType,
      this.feelingType,
      this.forecastType,
      this.mediaType,
      this.weatherPhoto,
      this.latitude,
      this.longitude,
      this.temperature,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windDirection,
      this.prefectureCity,
      this.isChanged = false,
      this.status = WeatherReportPostStatus.idle,
      this.errorMessage})
      : super._();

  @override
  final String? comment;
  @override
  final WeatherType? weatherType;
  @override
  final FeelingType? feelingType;
  @override
  final ForecastType? forecastType;
  @override
  final MediaType? mediaType;
  @override
  final String? weatherPhoto;
  @override
  final double? latitude;
  @override
  final double? longitude;
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
  @override
  final PrefectureCity? prefectureCity;
  @override
  @JsonKey()
  final bool isChanged;
  @override
  @JsonKey()
  final WeatherReportPostStatus status;
  @override
  final String? errorMessage;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportPostStateCopyWith<_WeatherReportPostState> get copyWith =>
      __$WeatherReportPostStateCopyWithImpl<_WeatherReportPostState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportPostState &&
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
                other.windDirection == windDirection) &&
            (identical(other.prefectureCity, prefectureCity) ||
                other.prefectureCity == prefectureCity) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

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
      windDirection,
      prefectureCity,
      isChanged,
      status,
      errorMessage);

  @override
  String toString() {
    return 'WeatherReportPostState(comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, weatherPhoto: $weatherPhoto, latitude: $latitude, longitude: $longitude, temperature: $temperature, humidity: $humidity, pressure: $pressure, windSpeed: $windSpeed, windDirection: $windDirection, prefectureCity: $prefectureCity, isChanged: $isChanged, status: $status, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportPostStateCopyWith<$Res>
    implements $WeatherReportPostStateCopyWith<$Res> {
  factory _$WeatherReportPostStateCopyWith(_WeatherReportPostState value,
          $Res Function(_WeatherReportPostState) _then) =
      __$WeatherReportPostStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? comment,
      WeatherType? weatherType,
      FeelingType? feelingType,
      ForecastType? forecastType,
      MediaType? mediaType,
      String? weatherPhoto,
      double? latitude,
      double? longitude,
      double? temperature,
      double? humidity,
      double? pressure,
      double? windSpeed,
      WindDirection? windDirection,
      PrefectureCity? prefectureCity,
      bool isChanged,
      WeatherReportPostStatus status,
      String? errorMessage});

  @override
  $PrefectureCityCopyWith<$Res>? get prefectureCity;
}

/// @nodoc
class __$WeatherReportPostStateCopyWithImpl<$Res>
    implements _$WeatherReportPostStateCopyWith<$Res> {
  __$WeatherReportPostStateCopyWithImpl(this._self, this._then);

  final _WeatherReportPostState _self;
  final $Res Function(_WeatherReportPostState) _then;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? comment = freezed,
    Object? weatherType = freezed,
    Object? feelingType = freezed,
    Object? forecastType = freezed,
    Object? mediaType = freezed,
    Object? weatherPhoto = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? pressure = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? prefectureCity = freezed,
    Object? isChanged = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_WeatherReportPostState(
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherType: freezed == weatherType
          ? _self.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as WeatherType?,
      feelingType: freezed == feelingType
          ? _self.feelingType
          : feelingType // ignore: cast_nullable_to_non_nullable
              as FeelingType?,
      forecastType: freezed == forecastType
          ? _self.forecastType
          : forecastType // ignore: cast_nullable_to_non_nullable
              as ForecastType?,
      mediaType: freezed == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      weatherPhoto: freezed == weatherPhoto
          ? _self.weatherPhoto
          : weatherPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
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
      prefectureCity: freezed == prefectureCity
          ? _self.prefectureCity
          : prefectureCity // ignore: cast_nullable_to_non_nullable
              as PrefectureCity?,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherReportPostStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrefectureCityCopyWith<$Res>? get prefectureCity {
    if (_self.prefectureCity == null) {
      return null;
    }

    return $PrefectureCityCopyWith<$Res>(_self.prefectureCity!, (value) {
      return _then(_self.copyWith(prefectureCity: value));
    });
  }
}

// dart format on
