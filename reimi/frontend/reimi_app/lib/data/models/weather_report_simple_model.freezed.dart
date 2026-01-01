// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_simple_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportSimpleModel {
  String get reportId;
  String get userId;
  String get comment;
  MediaType get mediaType;
  String get url;
  DateTime get postAt;

  /// Create a copy of WeatherReportSimpleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportSimpleModelCopyWith<WeatherReportSimpleModel> get copyWith =>
      _$WeatherReportSimpleModelCopyWithImpl<WeatherReportSimpleModel>(
          this as WeatherReportSimpleModel, _$identity);

  /// Serializes this WeatherReportSimpleModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportSimpleModel &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.postAt, postAt) || other.postAt == postAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, reportId, userId, comment, mediaType, url, postAt);

  @override
  String toString() {
    return 'WeatherReportSimpleModel(reportId: $reportId, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, postAt: $postAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportSimpleModelCopyWith<$Res> {
  factory $WeatherReportSimpleModelCopyWith(WeatherReportSimpleModel value,
          $Res Function(WeatherReportSimpleModel) _then) =
      _$WeatherReportSimpleModelCopyWithImpl;
  @useResult
  $Res call(
      {String reportId,
      String userId,
      String comment,
      MediaType mediaType,
      String url,
      DateTime postAt});
}

/// @nodoc
class _$WeatherReportSimpleModelCopyWithImpl<$Res>
    implements $WeatherReportSimpleModelCopyWith<$Res> {
  _$WeatherReportSimpleModelCopyWithImpl(this._self, this._then);

  final WeatherReportSimpleModel _self;
  final $Res Function(WeatherReportSimpleModel) _then;

  /// Create a copy of WeatherReportSimpleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? userId = null,
    Object? comment = null,
    Object? mediaType = null,
    Object? url = null,
    Object? postAt = null,
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
      postAt: null == postAt
          ? _self.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherReportSimpleModel].
extension WeatherReportSimpleModelPatterns on WeatherReportSimpleModel {
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
    TResult Function(_WeatherReportSimpleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleModel() when $default != null:
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
    TResult Function(_WeatherReportSimpleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleModel():
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
    TResult? Function(_WeatherReportSimpleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleModel() when $default != null:
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
            MediaType mediaType, String url, DateTime postAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleModel() when $default != null:
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.postAt);
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
            MediaType mediaType, String url, DateTime postAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleModel():
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.postAt);
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
            MediaType mediaType, String url, DateTime postAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportSimpleModel() when $default != null:
        return $default(_that.reportId, _that.userId, _that.comment,
            _that.mediaType, _that.url, _that.postAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _WeatherReportSimpleModel implements WeatherReportSimpleModel {
  const _WeatherReportSimpleModel(
      {required this.reportId,
      required this.userId,
      required this.comment,
      required this.mediaType,
      required this.url,
      required this.postAt});
  factory _WeatherReportSimpleModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherReportSimpleModelFromJson(json);

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
  final DateTime postAt;

  /// Create a copy of WeatherReportSimpleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportSimpleModelCopyWith<_WeatherReportSimpleModel> get copyWith =>
      __$WeatherReportSimpleModelCopyWithImpl<_WeatherReportSimpleModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherReportSimpleModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportSimpleModel &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.postAt, postAt) || other.postAt == postAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, reportId, userId, comment, mediaType, url, postAt);

  @override
  String toString() {
    return 'WeatherReportSimpleModel(reportId: $reportId, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, postAt: $postAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportSimpleModelCopyWith<$Res>
    implements $WeatherReportSimpleModelCopyWith<$Res> {
  factory _$WeatherReportSimpleModelCopyWith(_WeatherReportSimpleModel value,
          $Res Function(_WeatherReportSimpleModel) _then) =
      __$WeatherReportSimpleModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String reportId,
      String userId,
      String comment,
      MediaType mediaType,
      String url,
      DateTime postAt});
}

/// @nodoc
class __$WeatherReportSimpleModelCopyWithImpl<$Res>
    implements _$WeatherReportSimpleModelCopyWith<$Res> {
  __$WeatherReportSimpleModelCopyWithImpl(this._self, this._then);

  final _WeatherReportSimpleModel _self;
  final $Res Function(_WeatherReportSimpleModel) _then;

  /// Create a copy of WeatherReportSimpleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reportId = null,
    Object? userId = null,
    Object? comment = null,
    Object? mediaType = null,
    Object? url = null,
    Object? postAt = null,
  }) {
    return _then(_WeatherReportSimpleModel(
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
      postAt: null == postAt
          ? _self.postAt
          : postAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
