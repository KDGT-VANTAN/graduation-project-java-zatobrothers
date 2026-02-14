// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportReadModel {
  String get id;
  String get userId;
  String get comment;
  MediaType get mediaType;
  String get url;
  @IsoDateTimeConverter()
  DateTime get createdAt;

  /// Create a copy of WeatherReportReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportReadModelCopyWith<WeatherReportReadModel> get copyWith =>
      _$WeatherReportReadModelCopyWithImpl<WeatherReportReadModel>(
          this as WeatherReportReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, comment, mediaType, url, createdAt);

  @override
  String toString() {
    return 'WeatherReportReadModel(id: $id, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportReadModelCopyWith<$Res> {
  factory $WeatherReportReadModelCopyWith(WeatherReportReadModel value,
          $Res Function(WeatherReportReadModel) _then) =
      _$WeatherReportReadModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String comment,
      MediaType mediaType,
      String url,
      @IsoDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$WeatherReportReadModelCopyWithImpl<$Res>
    implements $WeatherReportReadModelCopyWith<$Res> {
  _$WeatherReportReadModelCopyWithImpl(this._self, this._then);

  final WeatherReportReadModel _self;
  final $Res Function(WeatherReportReadModel) _then;

  /// Create a copy of WeatherReportReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? comment = null,
    Object? mediaType = null,
    Object? url = null,
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

/// Adds pattern-matching-related methods to [WeatherReportReadModel].
extension WeatherReportReadModelPatterns on WeatherReportReadModel {
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
    TResult Function(_WeatherReportReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportReadModel() when $default != null:
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
    TResult Function(_WeatherReportReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportReadModel():
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
    TResult? Function(_WeatherReportReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportReadModel() when $default != null:
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
            MediaType mediaType,
            String url,
            @IsoDateTimeConverter() DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportReadModel() when $default != null:
        return $default(_that.id, _that.userId, _that.comment, _that.mediaType,
            _that.url, _that.createdAt);
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
            MediaType mediaType,
            String url,
            @IsoDateTimeConverter() DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportReadModel():
        return $default(_that.id, _that.userId, _that.comment, _that.mediaType,
            _that.url, _that.createdAt);
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
            MediaType mediaType,
            String url,
            @IsoDateTimeConverter() DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportReadModel() when $default != null:
        return $default(_that.id, _that.userId, _that.comment, _that.mediaType,
            _that.url, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherReportReadModel implements WeatherReportReadModel {
  const _WeatherReportReadModel(
      {required this.id,
      required this.userId,
      required this.comment,
      required this.mediaType,
      required this.url,
      @IsoDateTimeConverter() required this.createdAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String comment;
  @override
  final MediaType mediaType;
  @override
  final String url;
  @override
  @IsoDateTimeConverter()
  final DateTime createdAt;

  /// Create a copy of WeatherReportReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportReadModelCopyWith<_WeatherReportReadModel> get copyWith =>
      __$WeatherReportReadModelCopyWithImpl<_WeatherReportReadModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, comment, mediaType, url, createdAt);

  @override
  String toString() {
    return 'WeatherReportReadModel(id: $id, userId: $userId, comment: $comment, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportReadModelCopyWith<$Res>
    implements $WeatherReportReadModelCopyWith<$Res> {
  factory _$WeatherReportReadModelCopyWith(_WeatherReportReadModel value,
          $Res Function(_WeatherReportReadModel) _then) =
      __$WeatherReportReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String comment,
      MediaType mediaType,
      String url,
      @IsoDateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$WeatherReportReadModelCopyWithImpl<$Res>
    implements _$WeatherReportReadModelCopyWith<$Res> {
  __$WeatherReportReadModelCopyWithImpl(this._self, this._then);

  final _WeatherReportReadModel _self;
  final $Res Function(_WeatherReportReadModel) _then;

  /// Create a copy of WeatherReportReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? comment = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_WeatherReportReadModel(
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
