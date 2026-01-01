// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportPostModel {
  String? get reportId;
  String? get userId;
  String? get comment;
  WeatherType? get weatherType;
  FeelingType? get feelingType;
  ForecastType? get forecastType;
  MediaType? get mediaType;
  String? get url;
  double? get latitude;
  double? get longitude;

  /// Create a copy of WeatherReportPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportPostModelCopyWith<WeatherReportPostModel> get copyWith =>
      _$WeatherReportPostModelCopyWithImpl<WeatherReportPostModel>(
          this as WeatherReportPostModel, _$identity);

  /// Serializes this WeatherReportPostModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportPostModel &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.weatherType, weatherType) ||
                other.weatherType == weatherType) &&
            (identical(other.feelingType, feelingType) ||
                other.feelingType == feelingType) &&
            (identical(other.forecastType, forecastType) ||
                other.forecastType == forecastType) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reportId,
      userId,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      url,
      latitude,
      longitude);

  @override
  String toString() {
    return 'WeatherReportPostModel(reportId: $reportId, userId: $userId, comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, url: $url, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportPostModelCopyWith<$Res> {
  factory $WeatherReportPostModelCopyWith(WeatherReportPostModel value,
          $Res Function(WeatherReportPostModel) _then) =
      _$WeatherReportPostModelCopyWithImpl;
  @useResult
  $Res call(
      {String? reportId,
      String? userId,
      String? comment,
      WeatherType? weatherType,
      FeelingType? feelingType,
      ForecastType? forecastType,
      MediaType? mediaType,
      String? url,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$WeatherReportPostModelCopyWithImpl<$Res>
    implements $WeatherReportPostModelCopyWith<$Res> {
  _$WeatherReportPostModelCopyWithImpl(this._self, this._then);

  final WeatherReportPostModel _self;
  final $Res Function(WeatherReportPostModel) _then;

  /// Create a copy of WeatherReportPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? weatherType = freezed,
    Object? feelingType = freezed,
    Object? forecastType = freezed,
    Object? mediaType = freezed,
    Object? url = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_self.copyWith(
      reportId: freezed == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherReportPostModel].
extension WeatherReportPostModelPatterns on WeatherReportPostModel {
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
    TResult Function(_WeatherReportPostModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostModel() when $default != null:
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
    TResult Function(_WeatherReportPostModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostModel():
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
    TResult? Function(_WeatherReportPostModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostModel() when $default != null:
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
            String? reportId,
            String? userId,
            String? comment,
            WeatherType? weatherType,
            FeelingType? feelingType,
            ForecastType? forecastType,
            MediaType? mediaType,
            String? url,
            double? latitude,
            double? longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostModel() when $default != null:
        return $default(
            _that.reportId,
            _that.userId,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.latitude,
            _that.longitude);
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
            String? reportId,
            String? userId,
            String? comment,
            WeatherType? weatherType,
            FeelingType? feelingType,
            ForecastType? forecastType,
            MediaType? mediaType,
            String? url,
            double? latitude,
            double? longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostModel():
        return $default(
            _that.reportId,
            _that.userId,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.latitude,
            _that.longitude);
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
            String? reportId,
            String? userId,
            String? comment,
            WeatherType? weatherType,
            FeelingType? feelingType,
            ForecastType? forecastType,
            MediaType? mediaType,
            String? url,
            double? latitude,
            double? longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostModel() when $default != null:
        return $default(
            _that.reportId,
            _that.userId,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.latitude,
            _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _WeatherReportPostModel implements WeatherReportPostModel {
  const _WeatherReportPostModel(
      {this.reportId,
      this.userId,
      this.comment,
      this.weatherType,
      this.feelingType,
      this.forecastType,
      this.mediaType,
      this.url,
      this.latitude,
      this.longitude});
  factory _WeatherReportPostModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportPostModelFromJson(json);

  @override
  final String? reportId;
  @override
  final String? userId;
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
  final String? url;
  @override
  final double? latitude;
  @override
  final double? longitude;

  /// Create a copy of WeatherReportPostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportPostModelCopyWith<_WeatherReportPostModel> get copyWith =>
      __$WeatherReportPostModelCopyWithImpl<_WeatherReportPostModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherReportPostModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportPostModel &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.weatherType, weatherType) ||
                other.weatherType == weatherType) &&
            (identical(other.feelingType, feelingType) ||
                other.feelingType == feelingType) &&
            (identical(other.forecastType, forecastType) ||
                other.forecastType == forecastType) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reportId,
      userId,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      url,
      latitude,
      longitude);

  @override
  String toString() {
    return 'WeatherReportPostModel(reportId: $reportId, userId: $userId, comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, url: $url, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportPostModelCopyWith<$Res>
    implements $WeatherReportPostModelCopyWith<$Res> {
  factory _$WeatherReportPostModelCopyWith(_WeatherReportPostModel value,
          $Res Function(_WeatherReportPostModel) _then) =
      __$WeatherReportPostModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? reportId,
      String? userId,
      String? comment,
      WeatherType? weatherType,
      FeelingType? feelingType,
      ForecastType? forecastType,
      MediaType? mediaType,
      String? url,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$WeatherReportPostModelCopyWithImpl<$Res>
    implements _$WeatherReportPostModelCopyWith<$Res> {
  __$WeatherReportPostModelCopyWithImpl(this._self, this._then);

  final _WeatherReportPostModel _self;
  final $Res Function(_WeatherReportPostModel) _then;

  /// Create a copy of WeatherReportPostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reportId = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? weatherType = freezed,
    Object? feelingType = freezed,
    Object? forecastType = freezed,
    Object? mediaType = freezed,
    Object? url = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_WeatherReportPostModel(
      reportId: freezed == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
