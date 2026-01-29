// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_simple_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportSimpleDto {
  String get reportId;
  String get userId;
  String get comment;
  MediaType get mediaType;
  String get url;
  DateTime get createdAt;

  /// Create a copy of WeatherReportSimpleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportSimpleDtoCopyWith<WeatherReportSimpleDto> get copyWith =>
      _$WeatherReportSimpleDtoCopyWithImpl<WeatherReportSimpleDto>(
          this as WeatherReportSimpleDto, _$identity);

  /// Serializes this WeatherReportSimpleDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportSimpleDto &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, reportId, userId, comment, mediaType, url, createdAt);

  @override
  String toString() {
    return 'WeatherReportSimpleDto(reportId: $reportId, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportSimpleDtoCopyWith<$Res> {
  factory $WeatherReportSimpleDtoCopyWith(WeatherReportSimpleDto value,
          $Res Function(WeatherReportSimpleDto) _then) =
      _$WeatherReportSimpleDtoCopyWithImpl;
  @useResult
  $Res call(
      {String reportId,
      String userId,
      String comment,
      MediaType mediaType,
      String url,
      DateTime createdAt});
}

/// @nodoc
class _$WeatherReportSimpleDtoCopyWithImpl<$Res>
    implements $WeatherReportSimpleDtoCopyWith<$Res> {
  _$WeatherReportSimpleDtoCopyWithImpl(this._self, this._then);

  final WeatherReportSimpleDto _self;
  final $Res Function(WeatherReportSimpleDto) _then;

  /// Create a copy of WeatherReportSimpleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? userId = null,
    Object? comment = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
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
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherReportSimpleDto].
extension WeatherReportSimpleDtoPatterns on WeatherReportSimpleDto {
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
    TResult Function(_WeatherReportSimpleDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleDto() when $default != null:
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
    TResult Function(_WeatherReportSimpleDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleDto():
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
    TResult? Function(_WeatherReportSimpleDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleDto() when $default != null:
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
    TResult Function(String reportId, String userId, String comment,
            MediaType mediaType, String url, DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleDto() when $default != null:
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.createdAt);
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
    TResult Function(String reportId, String userId, String comment,
            MediaType mediaType, String url, DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleDto():
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.createdAt);
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
    TResult? Function(String reportId, String userId, String comment,
            MediaType mediaType, String url, DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleDto() when $default != null:
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherReportSimpleDto implements WeatherReportSimpleDto {
  const _WeatherReportSimpleDto(
      {required this.reportId,
      required this.userId,
      required this.comment,
      required this.mediaType,
      required this.url,
      required this.createdAt});
  factory _WeatherReportSimpleDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportSimpleDtoFromJson(json);

  @override
  final String reportId;
  @override
  final String userId;
  @override
  final String comment;
  @override
  final MediaType mediaType;
  @override
  final String url;
  @override
  final DateTime createdAt;

  /// Create a copy of WeatherReportSimpleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportSimpleDtoCopyWith<_WeatherReportSimpleDto> get copyWith =>
      __$WeatherReportSimpleDtoCopyWithImpl<_WeatherReportSimpleDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherReportSimpleDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportSimpleDto &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, reportId, userId, comment, mediaType, url, createdAt);

  @override
  String toString() {
    return 'WeatherReportSimpleDto(reportId: $reportId, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportSimpleDtoCopyWith<$Res>
    implements $WeatherReportSimpleDtoCopyWith<$Res> {
  factory _$WeatherReportSimpleDtoCopyWith(_WeatherReportSimpleDto value,
          $Res Function(_WeatherReportSimpleDto) _then) =
      __$WeatherReportSimpleDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String reportId,
      String userId,
      String comment,
      MediaType mediaType,
      String url,
      DateTime createdAt});
}

/// @nodoc
class __$WeatherReportSimpleDtoCopyWithImpl<$Res>
    implements _$WeatherReportSimpleDtoCopyWith<$Res> {
  __$WeatherReportSimpleDtoCopyWithImpl(this._self, this._then);

  final _WeatherReportSimpleDto _self;
  final $Res Function(_WeatherReportSimpleDto) _then;

  /// Create a copy of WeatherReportSimpleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reportId = null,
    Object? userId = null,
    Object? comment = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_WeatherReportSimpleDto(
      reportId: null == reportId
          ? _self.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

// dart format on
