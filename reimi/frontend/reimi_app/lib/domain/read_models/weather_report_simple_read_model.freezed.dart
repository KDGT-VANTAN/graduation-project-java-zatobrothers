// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_simple_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportSimpleReadModel {
  String get reportId;
  String get userId;
  String get comment;
  MediaType get mediaType;
  String get url;
  DateTime get createdAt;

  /// Create a copy of WeatherReportSimpleReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportSimpleReadModelCopyWith<WeatherReportSimpleReadModel>
      get copyWith => _$WeatherReportSimpleReadModelCopyWithImpl<
              WeatherReportSimpleReadModel>(
          this as WeatherReportSimpleReadModel, _$identity);

  /// Serializes this WeatherReportSimpleReadModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportSimpleReadModel &&
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
    return 'WeatherReportSimpleReadModel(reportId: $reportId, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportSimpleReadModelCopyWith<$Res> {
  factory $WeatherReportSimpleReadModelCopyWith(
          WeatherReportSimpleReadModel value,
          $Res Function(WeatherReportSimpleReadModel) _then) =
      _$WeatherReportSimpleReadModelCopyWithImpl;
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
class _$WeatherReportSimpleReadModelCopyWithImpl<$Res>
    implements $WeatherReportSimpleReadModelCopyWith<$Res> {
  _$WeatherReportSimpleReadModelCopyWithImpl(this._self, this._then);

  final WeatherReportSimpleReadModel _self;
  final $Res Function(WeatherReportSimpleReadModel) _then;

  /// Create a copy of WeatherReportSimpleReadModel
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

/// Adds pattern-matching-related methods to [WeatherReportSimpleReadModel].
extension WeatherReportSimpleReadModelPatterns on WeatherReportSimpleReadModel {
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
    TResult Function(_WeatherReportSimpleReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleReadModel() when $default != null:
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
    TResult Function(_WeatherReportSimpleReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleReadModel():
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
    TResult? Function(_WeatherReportSimpleReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleReadModel() when $default != null:
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
      case _WeatherReportSimpleReadModel() when $default != null:
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
      case _WeatherReportSimpleReadModel():
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
      case _WeatherReportSimpleReadModel() when $default != null:
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherReportSimpleReadModel implements WeatherReportSimpleReadModel {
  const _WeatherReportSimpleReadModel(
      {required this.reportId,
      required this.userId,
      required this.comment,
      required this.mediaType,
      required this.url,
      required this.createdAt});
  factory _WeatherReportSimpleReadModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportSimpleReadModelFromJson(json);

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

  /// Create a copy of WeatherReportSimpleReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportSimpleReadModelCopyWith<_WeatherReportSimpleReadModel>
      get copyWith => __$WeatherReportSimpleReadModelCopyWithImpl<
          _WeatherReportSimpleReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherReportSimpleReadModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportSimpleReadModel &&
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
    return 'WeatherReportSimpleReadModel(reportId: $reportId, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportSimpleReadModelCopyWith<$Res>
    implements $WeatherReportSimpleReadModelCopyWith<$Res> {
  factory _$WeatherReportSimpleReadModelCopyWith(
          _WeatherReportSimpleReadModel value,
          $Res Function(_WeatherReportSimpleReadModel) _then) =
      __$WeatherReportSimpleReadModelCopyWithImpl;
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
class __$WeatherReportSimpleReadModelCopyWithImpl<$Res>
    implements _$WeatherReportSimpleReadModelCopyWith<$Res> {
  __$WeatherReportSimpleReadModelCopyWithImpl(this._self, this._then);

  final _WeatherReportSimpleReadModel _self;
  final $Res Function(_WeatherReportSimpleReadModel) _then;

  /// Create a copy of WeatherReportSimpleReadModel
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
    return _then(_WeatherReportSimpleReadModel(
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
