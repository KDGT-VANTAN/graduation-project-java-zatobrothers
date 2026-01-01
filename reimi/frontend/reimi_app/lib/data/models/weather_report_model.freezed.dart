// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportModel {
  String get reportId;
  String get userId;
  String get userName;
  String get mainPhotoUrl;
  String get comment;
  WeatherType get weatherType;
  FeelingType get feelingType;
  ForecastType get forecastType;
  MediaType get mediaType;
  String get url;
  List<String> get reportComment;
  int get likeCount;
  int get commentCount;
  DateTime get postAt;
  double? get latitude;
  double? get longitude;

  /// Create a copy of WeatherReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportModelCopyWith<WeatherReportModel> get copyWith =>
      _$WeatherReportModelCopyWithImpl<WeatherReportModel>(
          this as WeatherReportModel, _$identity);

  /// Serializes this WeatherReportModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportModel &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
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
            const DeepCollectionEquality()
                .equals(other.reportComment, reportComment) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.postAt, postAt) || other.postAt == postAt) &&
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
      userName,
      mainPhotoUrl,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      url,
      const DeepCollectionEquality().hash(reportComment),
      likeCount,
      commentCount,
      postAt,
      latitude,
      longitude);

  @override
  String toString() {
    return 'WeatherReportModel(reportId: $reportId, userId: $userId, userName: $userName, mainPhotoUrl: $mainPhotoUrl, comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, url: $url, reportComment: $reportComment, likeCount: $likeCount, commentCount: $commentCount, postAt: $postAt, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportModelCopyWith<$Res> {
  factory $WeatherReportModelCopyWith(
          WeatherReportModel value, $Res Function(WeatherReportModel) _then) =
      _$WeatherReportModelCopyWithImpl;
  @useResult
  $Res call(
      {String reportId,
      String userId,
      String userName,
      String mainPhotoUrl,
      String comment,
      WeatherType weatherType,
      FeelingType feelingType,
      ForecastType forecastType,
      MediaType mediaType,
      String url,
      List<String> reportComment,
      int likeCount,
      int commentCount,
      DateTime postAt,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$WeatherReportModelCopyWithImpl<$Res>
    implements $WeatherReportModelCopyWith<$Res> {
  _$WeatherReportModelCopyWithImpl(this._self, this._then);

  final WeatherReportModel _self;
  final $Res Function(WeatherReportModel) _then;

  /// Create a copy of WeatherReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? userId = null,
    Object? userName = null,
    Object? mainPhotoUrl = null,
    Object? comment = null,
    Object? weatherType = null,
    Object? feelingType = null,
    Object? forecastType = null,
    Object? mediaType = null,
    Object? url = null,
    Object? reportComment = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? postAt = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_self.copyWith(
      reportId: null == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
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
      reportComment: null == reportComment
          ? _self.reportComment
          : reportComment // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _self.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      postAt: null == postAt
          ? _self.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

/// Adds pattern-matching-related methods to [WeatherReportModel].
extension WeatherReportModelPatterns on WeatherReportModel {
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
    TResult Function(_WeatherReportModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportModel() when $default != null:
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
    TResult Function(_WeatherReportModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportModel():
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
    TResult? Function(_WeatherReportModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportModel() when $default != null:
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
            String reportId,
            String userId,
            String userName,
            String mainPhotoUrl,
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String url,
            List<String> reportComment,
            int likeCount,
            int commentCount,
            DateTime postAt,
            double? latitude,
            double? longitude)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportModel() when $default != null:
        return $default(
            _that.reportId,
            _that.userId,
            _that.userName,
            _that.mainPhotoUrl,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.reportComment,
            _that.likeCount,
            _that.commentCount,
            _that.postAt,
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
            String reportId,
            String userId,
            String userName,
            String mainPhotoUrl,
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String url,
            List<String> reportComment,
            int likeCount,
            int commentCount,
            DateTime postAt,
            double? latitude,
            double? longitude)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportModel():
        return $default(
            _that.reportId,
            _that.userId,
            _that.userName,
            _that.mainPhotoUrl,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.reportComment,
            _that.likeCount,
            _that.commentCount,
            _that.postAt,
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
            String reportId,
            String userId,
            String userName,
            String mainPhotoUrl,
            String comment,
            WeatherType weatherType,
            FeelingType feelingType,
            ForecastType forecastType,
            MediaType mediaType,
            String url,
            List<String> reportComment,
            int likeCount,
            int commentCount,
            DateTime postAt,
            double? latitude,
            double? longitude)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportModel() when $default != null:
        return $default(
            _that.reportId,
            _that.userId,
            _that.userName,
            _that.mainPhotoUrl,
            _that.comment,
            _that.weatherType,
            _that.feelingType,
            _that.forecastType,
            _that.mediaType,
            _that.url,
            _that.reportComment,
            _that.likeCount,
            _that.commentCount,
            _that.postAt,
            _that.latitude,
            _that.longitude);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _WeatherReportModel implements WeatherReportModel {
  const _WeatherReportModel(
      {required this.reportId,
      required this.userId,
      required this.userName,
      required this.mainPhotoUrl,
      required this.comment,
      required this.weatherType,
      required this.feelingType,
      required this.forecastType,
      required this.mediaType,
      required this.url,
      required final List<String> reportComment,
      required this.likeCount,
      required this.commentCount,
      required this.postAt,
      this.latitude,
      this.longitude})
      : _reportComment = reportComment;
  factory _WeatherReportModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportModelFromJson(json);

  @override
  final String reportId;
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
  final List<String> _reportComment;
  @override
  List<String> get reportComment {
    if (_reportComment is EqualUnmodifiableListView) return _reportComment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reportComment);
  }

  @override
  final int likeCount;
  @override
  final int commentCount;
  @override
  final DateTime postAt;
  @override
  final double? latitude;
  @override
  final double? longitude;

  /// Create a copy of WeatherReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportModelCopyWith<_WeatherReportModel> get copyWith =>
      __$WeatherReportModelCopyWithImpl<_WeatherReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherReportModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportModel &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
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
            const DeepCollectionEquality()
                .equals(other._reportComment, _reportComment) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.postAt, postAt) || other.postAt == postAt) &&
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
      userName,
      mainPhotoUrl,
      comment,
      weatherType,
      feelingType,
      forecastType,
      mediaType,
      url,
      const DeepCollectionEquality().hash(_reportComment),
      likeCount,
      commentCount,
      postAt,
      latitude,
      longitude);

  @override
  String toString() {
    return 'WeatherReportModel(reportId: $reportId, userId: $userId, userName: $userName, mainPhotoUrl: $mainPhotoUrl, comment: $comment, weatherType: $weatherType, feelingType: $feelingType, forecastType: $forecastType, mediaType: $mediaType, url: $url, reportComment: $reportComment, likeCount: $likeCount, commentCount: $commentCount, postAt: $postAt, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportModelCopyWith<$Res>
    implements $WeatherReportModelCopyWith<$Res> {
  factory _$WeatherReportModelCopyWith(
          _WeatherReportModel value, $Res Function(_WeatherReportModel) _then) =
      __$WeatherReportModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String reportId,
      String userId,
      String userName,
      String mainPhotoUrl,
      String comment,
      WeatherType weatherType,
      FeelingType feelingType,
      ForecastType forecastType,
      MediaType mediaType,
      String url,
      List<String> reportComment,
      int likeCount,
      int commentCount,
      DateTime postAt,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$WeatherReportModelCopyWithImpl<$Res>
    implements _$WeatherReportModelCopyWith<$Res> {
  __$WeatherReportModelCopyWithImpl(this._self, this._then);

  final _WeatherReportModel _self;
  final $Res Function(_WeatherReportModel) _then;

  /// Create a copy of WeatherReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reportId = null,
    Object? userId = null,
    Object? userName = null,
    Object? mainPhotoUrl = null,
    Object? comment = null,
    Object? weatherType = null,
    Object? feelingType = null,
    Object? forecastType = null,
    Object? mediaType = null,
    Object? url = null,
    Object? reportComment = null,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? postAt = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_WeatherReportModel(
      reportId: null == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
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
      reportComment: null == reportComment
          ? _self._reportComment
          : reportComment // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likeCount: null == likeCount
          ? _self.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      commentCount: null == commentCount
          ? _self.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      postAt: null == postAt
          ? _self.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
