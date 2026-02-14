// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_detail_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportDetailReadModel {
  String get id;
  String get userId;
  String get userName;
  String get mainPhotoUrl;
  String get comment;
  WeatherType get weatherType;
  FeelingType get feelingType;
  ForecastType get forecastType;
  MediaType get mediaType;
  String get url;
  @IsoDateTimeConverter()
  DateTime get createdAt;
  List<String>? get reportComment;
  int? get likeCount;
  int? get commentCount;
  double? get latitude;
  double? get longitude;

  /// Create a copy of WeatherReportDetailReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportDetailReadModelCopyWith<WeatherReportDetailReadModel>
      get copyWith => _$WeatherReportDetailReadModelCopyWithImpl<
              WeatherReportDetailReadModel>(
          this as WeatherReportDetailReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportDetailReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.reportComment, reportComment) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userName,
      mainPhotoUrl,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      url,
      createdAt,
      const DeepCollectionEquality().hash(reportComment),
      likeCount,
      commentCount,
      latitude,
      longitude);

  @override
  String toString() {
    return 'WeatherReportDetailReadModel(id: $id, userId: $userId, userName: $userName, mainPhotoUrl: $mainPhotoUrl, comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, url: $url, createdAt: $createdAt, reportComment: $reportComment, likeCount: $likeCount, commentCount: $commentCount, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportDetailReadModelCopyWith<$Res> {
  factory $WeatherReportDetailReadModelCopyWith(
          WeatherReportDetailReadModel value,
          $Res Function(WeatherReportDetailReadModel) _then) =
      _$WeatherReportDetailReadModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String mainPhotoUrl,
      String comment,
      WeatherType weatherType,
      FeelingType feelingType,
      ForecastType forecastType,
      MediaType mediaType,
      String url,
      @IsoDateTimeConverter() DateTime createdAt,
      List<String>? reportComment,
      int? likeCount,
      int? commentCount,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$WeatherReportDetailReadModelCopyWithImpl<$Res>
    implements $WeatherReportDetailReadModelCopyWith<$Res> {
  _$WeatherReportDetailReadModelCopyWithImpl(this._self, this._then);

  final WeatherReportDetailReadModel _self;
  final $Res Function(WeatherReportDetailReadModel) _then;

  /// Create a copy of WeatherReportDetailReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? mainPhotoUrl = null,
    Object? comment = null,
    Object? weatherType = null,
    Object? feelingType = null,
    Object? forecastType = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
    Object? reportComment = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
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
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reportComment: freezed == reportComment
          ? _self.reportComment
          : reportComment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likeCount: freezed == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _self.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
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

/// Adds pattern-matching-related methods to [WeatherReportDetailReadModel].
extension WeatherReportDetailReadModelPatterns on WeatherReportDetailReadModel {
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
    TResult Function(_WeatherReportDetailReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailReadModel() when $default != null:
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
    TResult Function(_WeatherReportDetailReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailReadModel():
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
    TResult? Function(_WeatherReportDetailReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailReadModel() when $default != null:
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
            String userName,
            String mainPhotoUrl,
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String url,
            @IsoDateTimeConverter() DateTime createdAt,
            List<String>? reportComment,
            int? likeCount,
            int? commentCount,
            double? latitude,
            double? longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailReadModel() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.userName,
            _that.mainPhotoUrl,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.createdAt,
            _that.reportComment,
            _that.likeCount,
            _that.commentCount,
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
            String id,
            String userId,
            String userName,
            String mainPhotoUrl,
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String url,
            @IsoDateTimeConverter() DateTime createdAt,
            List<String>? reportComment,
            int? likeCount,
            int? commentCount,
            double? latitude,
            double? longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailReadModel():
        return $default(
            _that.id,
            _that.userId,
            _that.userName,
            _that.mainPhotoUrl,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.createdAt,
            _that.reportComment,
            _that.likeCount,
            _that.commentCount,
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
            String id,
            String userId,
            String userName,
            String mainPhotoUrl,
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String url,
            @IsoDateTimeConverter() DateTime createdAt,
            List<String>? reportComment,
            int? likeCount,
            int? commentCount,
            double? latitude,
            double? longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailReadModel() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.userName,
            _that.mainPhotoUrl,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.createdAt,
            _that.reportComment,
            _that.likeCount,
            _that.commentCount,
            _that.latitude,
            _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherReportDetailReadModel implements WeatherReportDetailReadModel {
  const _WeatherReportDetailReadModel(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.mainPhotoUrl,
      required this.comment,
      required this.weatherType,
      required this.feelingType,
      required this.forecastType,
      required this.mediaType,
      required this.url,
      @IsoDateTimeConverter() required this.createdAt,
      final List<String>? reportComment,
      this.likeCount,
      this.commentCount,
      this.latitude,
      this.longitude})
      : _reportComment = reportComment;

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String mainPhotoUrl;
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
  final String url;
  @override
  @IsoDateTimeConverter()
  final DateTime createdAt;
  final List<String>? _reportComment;
  @override
  List<String>? get reportComment {
    final value = _reportComment;
    if (value == null) return null;
    if (_reportComment is EqualUnmodifiableListView) return _reportComment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? likeCount;
  @override
  final int? commentCount;
  @override
  final double? latitude;
  @override
  final double? longitude;

  /// Create a copy of WeatherReportDetailReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportDetailReadModelCopyWith<_WeatherReportDetailReadModel>
      get copyWith => __$WeatherReportDetailReadModelCopyWithImpl<
          _WeatherReportDetailReadModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportDetailReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._reportComment, _reportComment) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userName,
      mainPhotoUrl,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      url,
      createdAt,
      const DeepCollectionEquality().hash(_reportComment),
      likeCount,
      commentCount,
      latitude,
      longitude);

  @override
  String toString() {
    return 'WeatherReportDetailReadModel(id: $id, userId: $userId, userName: $userName, mainPhotoUrl: $mainPhotoUrl, comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, url: $url, createdAt: $createdAt, reportComment: $reportComment, likeCount: $likeCount, commentCount: $commentCount, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportDetailReadModelCopyWith<$Res>
    implements $WeatherReportDetailReadModelCopyWith<$Res> {
  factory _$WeatherReportDetailReadModelCopyWith(
          _WeatherReportDetailReadModel value,
          $Res Function(_WeatherReportDetailReadModel) _then) =
      __$WeatherReportDetailReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String mainPhotoUrl,
      String comment,
      WeatherType weatherType,
      FeelingType feelingType,
      ForecastType forecastType,
      MediaType mediaType,
      String url,
      @IsoDateTimeConverter() DateTime createdAt,
      List<String>? reportComment,
      int? likeCount,
      int? commentCount,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$WeatherReportDetailReadModelCopyWithImpl<$Res>
    implements _$WeatherReportDetailReadModelCopyWith<$Res> {
  __$WeatherReportDetailReadModelCopyWithImpl(this._self, this._then);

  final _WeatherReportDetailReadModel _self;
  final $Res Function(_WeatherReportDetailReadModel) _then;

  /// Create a copy of WeatherReportDetailReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? mainPhotoUrl = null,
    Object? comment = null,
    Object? weatherType = null,
    Object? feelingType = null,
    Object? forecastType = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
    Object? reportComment = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_WeatherReportDetailReadModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reportComment: freezed == reportComment
          ? _self._reportComment
          : reportComment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likeCount: freezed == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _self.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
