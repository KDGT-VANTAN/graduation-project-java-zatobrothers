// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityTypeEntity {
  String get code;
  String get name;
  String get description;
  String get imagePath;

  /// Create a copy of WeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityTypeEntityCopyWith<WeatherPersonalityTypeEntity>
      get copyWith => _$WeatherPersonalityTypeEntityCopyWithImpl<
              WeatherPersonalityTypeEntity>(
          this as WeatherPersonalityTypeEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityTypeEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, description, imagePath);

  @override
  String toString() {
    return 'WeatherPersonalityTypeEntity(code: $code, name: $name, description: $description, imagePath: $imagePath)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityTypeEntityCopyWith<$Res> {
  factory $WeatherPersonalityTypeEntityCopyWith(
          WeatherPersonalityTypeEntity value,
          $Res Function(WeatherPersonalityTypeEntity) _then) =
      _$WeatherPersonalityTypeEntityCopyWithImpl;
  @useResult
  $Res call({String code, String name, String description, String imagePath});
}

/// @nodoc
class _$WeatherPersonalityTypeEntityCopyWithImpl<$Res>
    implements $WeatherPersonalityTypeEntityCopyWith<$Res> {
  _$WeatherPersonalityTypeEntityCopyWithImpl(this._self, this._then);

  final WeatherPersonalityTypeEntity _self;
  final $Res Function(WeatherPersonalityTypeEntity) _then;

  /// Create a copy of WeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? description = null,
    Object? imagePath = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityTypeEntity].
extension WeatherPersonalityTypeEntityPatterns on WeatherPersonalityTypeEntity {
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
    TResult Function(_WeatherPersonalityTypeEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTypeEntity() when $default != null:
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
    TResult Function(_WeatherPersonalityTypeEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTypeEntity():
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
    TResult? Function(_WeatherPersonalityTypeEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTypeEntity() when $default != null:
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
            String code, String name, String description, String imagePath)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTypeEntity() when $default != null:
        return $default(
            _that.code, _that.name, _that.description, _that.imagePath);
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
            String code, String name, String description, String imagePath)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTypeEntity():
        return $default(
            _that.code, _that.name, _that.description, _that.imagePath);
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
            String code, String name, String description, String imagePath)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTypeEntity() when $default != null:
        return $default(
            _that.code, _that.name, _that.description, _that.imagePath);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherPersonalityTypeEntity implements WeatherPersonalityTypeEntity {
  const _WeatherPersonalityTypeEntity(
      {required this.code,
      required this.name,
      required this.description,
      required this.imagePath});

  @override
  final String code;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imagePath;

  /// Create a copy of WeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityTypeEntityCopyWith<_WeatherPersonalityTypeEntity>
      get copyWith => __$WeatherPersonalityTypeEntityCopyWithImpl<
          _WeatherPersonalityTypeEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityTypeEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, description, imagePath);

  @override
  String toString() {
    return 'WeatherPersonalityTypeEntity(code: $code, name: $name, description: $description, imagePath: $imagePath)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityTypeEntityCopyWith<$Res>
    implements $WeatherPersonalityTypeEntityCopyWith<$Res> {
  factory _$WeatherPersonalityTypeEntityCopyWith(
          _WeatherPersonalityTypeEntity value,
          $Res Function(_WeatherPersonalityTypeEntity) _then) =
      __$WeatherPersonalityTypeEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String name, String description, String imagePath});
}

/// @nodoc
class __$WeatherPersonalityTypeEntityCopyWithImpl<$Res>
    implements _$WeatherPersonalityTypeEntityCopyWith<$Res> {
  __$WeatherPersonalityTypeEntityCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityTypeEntity _self;
  final $Res Function(_WeatherPersonalityTypeEntity) _then;

  /// Create a copy of WeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? description = null,
    Object? imagePath = null,
  }) {
    return _then(_WeatherPersonalityTypeEntity(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
