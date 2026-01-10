// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_media_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherMediaEntity {
  String get id;
  String get weatherReportId;
  MediaType get mediaType;
  String get url;
  DateTime get createdAt;

  /// Create a copy of WeatherMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherMediaEntityCopyWith<WeatherMediaEntity> get copyWith =>
      _$WeatherMediaEntityCopyWithImpl<WeatherMediaEntity>(
          this as WeatherMediaEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherMediaEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weatherReportId, weatherReportId) ||
                other.weatherReportId == weatherReportId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, weatherReportId, mediaType, url, createdAt);

  @override
  String toString() {
    return 'WeatherMediaEntity(id: $id, weatherReportId: $weatherReportId, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $WeatherMediaEntityCopyWith<$Res> {
  factory $WeatherMediaEntityCopyWith(
          WeatherMediaEntity value, $Res Function(WeatherMediaEntity) _then) =
      _$WeatherMediaEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String weatherReportId,
      MediaType mediaType,
      String url,
      DateTime createdAt});
}

/// @nodoc
class _$WeatherMediaEntityCopyWithImpl<$Res>
    implements $WeatherMediaEntityCopyWith<$Res> {
  _$WeatherMediaEntityCopyWithImpl(this._self, this._then);

  final WeatherMediaEntity _self;
  final $Res Function(WeatherMediaEntity) _then;

  /// Create a copy of WeatherMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weatherReportId = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weatherReportId: null == weatherReportId
          ? _self.weatherReportId
          : weatherReportId // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [WeatherMediaEntity].
extension WeatherMediaEntityPatterns on WeatherMediaEntity {
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
    TResult Function(_WeatherMediaEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherMediaEntity() when $default != null:
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
    TResult Function(_WeatherMediaEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherMediaEntity():
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
    TResult? Function(_WeatherMediaEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherMediaEntity() when $default != null:
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
    TResult Function(String id, String weatherReportId, MediaType mediaType,
            String url, DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherMediaEntity() when $default != null:
        return $default(_that.id, _that.weatherReportId, _that.mediaType,
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
    TResult Function(String id, String weatherReportId, MediaType mediaType,
            String url, DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherMediaEntity():
        return $default(_that.id, _that.weatherReportId, _that.mediaType,
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
    TResult? Function(String id, String weatherReportId, MediaType mediaType,
            String url, DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherMediaEntity() when $default != null:
        return $default(_that.id, _that.weatherReportId, _that.mediaType,
            _that.url, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherMediaEntity implements WeatherMediaEntity {
  const _WeatherMediaEntity(
      {required this.id,
      required this.weatherReportId,
      required this.mediaType,
      required this.url,
      required this.createdAt});

  @override
  final String id;
  @override
  final String weatherReportId;
  @override
  final MediaType mediaType;
  @override
  final String url;
  @override
  final DateTime createdAt;

  /// Create a copy of WeatherMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherMediaEntityCopyWith<_WeatherMediaEntity> get copyWith =>
      __$WeatherMediaEntityCopyWithImpl<_WeatherMediaEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherMediaEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weatherReportId, weatherReportId) ||
                other.weatherReportId == weatherReportId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, weatherReportId, mediaType, url, createdAt);

  @override
  String toString() {
    return 'WeatherMediaEntity(id: $id, weatherReportId: $weatherReportId, mediaType: $mediaType, url: $url, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$WeatherMediaEntityCopyWith<$Res>
    implements $WeatherMediaEntityCopyWith<$Res> {
  factory _$WeatherMediaEntityCopyWith(
          _WeatherMediaEntity value, $Res Function(_WeatherMediaEntity) _then) =
      __$WeatherMediaEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String weatherReportId,
      MediaType mediaType,
      String url,
      DateTime createdAt});
}

/// @nodoc
class __$WeatherMediaEntityCopyWithImpl<$Res>
    implements _$WeatherMediaEntityCopyWith<$Res> {
  __$WeatherMediaEntityCopyWithImpl(this._self, this._then);

  final _WeatherMediaEntity _self;
  final $Res Function(_WeatherMediaEntity) _then;

  /// Create a copy of WeatherMediaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? weatherReportId = null,
    Object? mediaType = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_WeatherMediaEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      weatherReportId: null == weatherReportId
          ? _self.weatherReportId
          : weatherReportId // ignore: cast_nullable_to_non_nullable
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
