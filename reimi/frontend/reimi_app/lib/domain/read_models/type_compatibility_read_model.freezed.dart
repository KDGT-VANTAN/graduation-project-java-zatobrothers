// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_compatibility_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeCompatibilityReadModel {
  WeatherPersonalityCode get typeCode;
  String get typeName;
  String get typeImageUrl;
  String get compatibilityPoint;

  /// Create a copy of TypeCompatibilityReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeCompatibilityReadModelCopyWith<TypeCompatibilityReadModel>
      get copyWith =>
          _$TypeCompatibilityReadModelCopyWithImpl<TypeCompatibilityReadModel>(
              this as TypeCompatibilityReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeCompatibilityReadModel &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.compatibilityPoint, compatibilityPoint) ||
                other.compatibilityPoint == compatibilityPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, typeCode, typeName, typeImageUrl, compatibilityPoint);

  @override
  String toString() {
    return 'TypeCompatibilityReadModel(typeCode: $typeCode, typeName: $typeName, typeImageUrl: $typeImageUrl, compatibilityPoint: $compatibilityPoint)';
  }
}

/// @nodoc
abstract mixin class $TypeCompatibilityReadModelCopyWith<$Res> {
  factory $TypeCompatibilityReadModelCopyWith(TypeCompatibilityReadModel value,
          $Res Function(TypeCompatibilityReadModel) _then) =
      _$TypeCompatibilityReadModelCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeImageUrl,
      String compatibilityPoint});
}

/// @nodoc
class _$TypeCompatibilityReadModelCopyWithImpl<$Res>
    implements $TypeCompatibilityReadModelCopyWith<$Res> {
  _$TypeCompatibilityReadModelCopyWithImpl(this._self, this._then);

  final TypeCompatibilityReadModel _self;
  final $Res Function(TypeCompatibilityReadModel) _then;

  /// Create a copy of TypeCompatibilityReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeImageUrl = null,
    Object? compatibilityPoint = null,
  }) {
    return _then(_self.copyWith(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      compatibilityPoint: null == compatibilityPoint
          ? _self.compatibilityPoint
          : compatibilityPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TypeCompatibilityReadModel].
extension TypeCompatibilityReadModelPatterns on TypeCompatibilityReadModel {
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
    TResult Function(_TypeCompatibilityReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityReadModel() when $default != null:
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
    TResult Function(_TypeCompatibilityReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityReadModel():
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
    TResult? Function(_TypeCompatibilityReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityReadModel() when $default != null:
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
    TResult Function(WeatherPersonalityCode typeCode, String typeName,
            String typeImageUrl, String compatibilityPoint)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityReadModel() when $default != null:
        return $default(_that.typeCode, _that.typeName, _that.typeImageUrl,
            _that.compatibilityPoint);
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
    TResult Function(WeatherPersonalityCode typeCode, String typeName,
            String typeImageUrl, String compatibilityPoint)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityReadModel():
        return $default(_that.typeCode, _that.typeName, _that.typeImageUrl,
            _that.compatibilityPoint);
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
    TResult? Function(WeatherPersonalityCode typeCode, String typeName,
            String typeImageUrl, String compatibilityPoint)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityReadModel() when $default != null:
        return $default(_that.typeCode, _that.typeName, _that.typeImageUrl,
            _that.compatibilityPoint);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TypeCompatibilityReadModel implements TypeCompatibilityReadModel {
  const _TypeCompatibilityReadModel(
      {required this.typeCode,
      required this.typeName,
      required this.typeImageUrl,
      required this.compatibilityPoint});

  @override
  final WeatherPersonalityCode typeCode;
  @override
  final String typeName;
  @override
  final String typeImageUrl;
  @override
  final String compatibilityPoint;

  /// Create a copy of TypeCompatibilityReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeCompatibilityReadModelCopyWith<_TypeCompatibilityReadModel>
      get copyWith => __$TypeCompatibilityReadModelCopyWithImpl<
          _TypeCompatibilityReadModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeCompatibilityReadModel &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.compatibilityPoint, compatibilityPoint) ||
                other.compatibilityPoint == compatibilityPoint));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, typeCode, typeName, typeImageUrl, compatibilityPoint);

  @override
  String toString() {
    return 'TypeCompatibilityReadModel(typeCode: $typeCode, typeName: $typeName, typeImageUrl: $typeImageUrl, compatibilityPoint: $compatibilityPoint)';
  }
}

/// @nodoc
abstract mixin class _$TypeCompatibilityReadModelCopyWith<$Res>
    implements $TypeCompatibilityReadModelCopyWith<$Res> {
  factory _$TypeCompatibilityReadModelCopyWith(
          _TypeCompatibilityReadModel value,
          $Res Function(_TypeCompatibilityReadModel) _then) =
      __$TypeCompatibilityReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeImageUrl,
      String compatibilityPoint});
}

/// @nodoc
class __$TypeCompatibilityReadModelCopyWithImpl<$Res>
    implements _$TypeCompatibilityReadModelCopyWith<$Res> {
  __$TypeCompatibilityReadModelCopyWithImpl(this._self, this._then);

  final _TypeCompatibilityReadModel _self;
  final $Res Function(_TypeCompatibilityReadModel) _then;

  /// Create a copy of TypeCompatibilityReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeImageUrl = null,
    Object? compatibilityPoint = null,
  }) {
    return _then(_TypeCompatibilityReadModel(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      compatibilityPoint: null == compatibilityPoint
          ? _self.compatibilityPoint
          : compatibilityPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
