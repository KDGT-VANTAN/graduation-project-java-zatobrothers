// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_compatibility_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeCompatibilityDto {
  String get typeCode;
  String get typeName;
  String get typeCharacterImageUrl;
  String get compatibilityPoint;

  /// Create a copy of TypeCompatibilityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeCompatibilityDtoCopyWith<TypeCompatibilityDto> get copyWith =>
      _$TypeCompatibilityDtoCopyWithImpl<TypeCompatibilityDto>(
          this as TypeCompatibilityDto, _$identity);

  /// Serializes this TypeCompatibilityDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeCompatibilityDto &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCharacterImageUrl, typeCharacterImageUrl) ||
                other.typeCharacterImageUrl == typeCharacterImageUrl) &&
            (identical(other.compatibilityPoint, compatibilityPoint) ||
                other.compatibilityPoint == compatibilityPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeCode, typeName,
      typeCharacterImageUrl, compatibilityPoint);

  @override
  String toString() {
    return 'TypeCompatibilityDto(typeCode: $typeCode, typeName: $typeName, typeCharacterImageUrl: $typeCharacterImageUrl, compatibilityPoint: $compatibilityPoint)';
  }
}

/// @nodoc
abstract mixin class $TypeCompatibilityDtoCopyWith<$Res> {
  factory $TypeCompatibilityDtoCopyWith(TypeCompatibilityDto value,
          $Res Function(TypeCompatibilityDto) _then) =
      _$TypeCompatibilityDtoCopyWithImpl;
  @useResult
  $Res call(
      {String typeCode,
      String typeName,
      String typeCharacterImageUrl,
      String compatibilityPoint});
}

/// @nodoc
class _$TypeCompatibilityDtoCopyWithImpl<$Res>
    implements $TypeCompatibilityDtoCopyWith<$Res> {
  _$TypeCompatibilityDtoCopyWithImpl(this._self, this._then);

  final TypeCompatibilityDto _self;
  final $Res Function(TypeCompatibilityDto) _then;

  /// Create a copy of TypeCompatibilityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCharacterImageUrl = null,
    Object? compatibilityPoint = null,
  }) {
    return _then(_self.copyWith(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeCharacterImageUrl: null == typeCharacterImageUrl
          ? _self.typeCharacterImageUrl
          : typeCharacterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      compatibilityPoint: null == compatibilityPoint
          ? _self.compatibilityPoint
          : compatibilityPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TypeCompatibilityDto].
extension TypeCompatibilityDtoPatterns on TypeCompatibilityDto {
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
    TResult Function(_TypeCompatibilityDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityDto() when $default != null:
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
    TResult Function(_TypeCompatibilityDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityDto():
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
    TResult? Function(_TypeCompatibilityDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityDto() when $default != null:
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
    TResult Function(String typeCode, String typeName,
            String typeCharacterImageUrl, String compatibilityPoint)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityDto() when $default != null:
        return $default(_that.typeCode, _that.typeName,
            _that.typeCharacterImageUrl, _that.compatibilityPoint);
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
    TResult Function(String typeCode, String typeName,
            String typeCharacterImageUrl, String compatibilityPoint)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityDto():
        return $default(_that.typeCode, _that.typeName,
            _that.typeCharacterImageUrl, _that.compatibilityPoint);
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
    TResult? Function(String typeCode, String typeName,
            String typeCharacterImageUrl, String compatibilityPoint)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TypeCompatibilityDto() when $default != null:
        return $default(_that.typeCode, _that.typeName,
            _that.typeCharacterImageUrl, _that.compatibilityPoint);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TypeCompatibilityDto implements TypeCompatibilityDto {
  const _TypeCompatibilityDto(
      {required this.typeCode,
      required this.typeName,
      required this.typeCharacterImageUrl,
      required this.compatibilityPoint});
  factory _TypeCompatibilityDto.fromJson(Map<String, dynamic> json) =>
      _$TypeCompatibilityDtoFromJson(json);

  @override
  final String typeCode;
  @override
  final String typeName;
  @override
  final String typeCharacterImageUrl;
  @override
  final String compatibilityPoint;

  /// Create a copy of TypeCompatibilityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeCompatibilityDtoCopyWith<_TypeCompatibilityDto> get copyWith =>
      __$TypeCompatibilityDtoCopyWithImpl<_TypeCompatibilityDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypeCompatibilityDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeCompatibilityDto &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCharacterImageUrl, typeCharacterImageUrl) ||
                other.typeCharacterImageUrl == typeCharacterImageUrl) &&
            (identical(other.compatibilityPoint, compatibilityPoint) ||
                other.compatibilityPoint == compatibilityPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeCode, typeName,
      typeCharacterImageUrl, compatibilityPoint);

  @override
  String toString() {
    return 'TypeCompatibilityDto(typeCode: $typeCode, typeName: $typeName, typeCharacterImageUrl: $typeCharacterImageUrl, compatibilityPoint: $compatibilityPoint)';
  }
}

/// @nodoc
abstract mixin class _$TypeCompatibilityDtoCopyWith<$Res>
    implements $TypeCompatibilityDtoCopyWith<$Res> {
  factory _$TypeCompatibilityDtoCopyWith(_TypeCompatibilityDto value,
          $Res Function(_TypeCompatibilityDto) _then) =
      __$TypeCompatibilityDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String typeCode,
      String typeName,
      String typeCharacterImageUrl,
      String compatibilityPoint});
}

/// @nodoc
class __$TypeCompatibilityDtoCopyWithImpl<$Res>
    implements _$TypeCompatibilityDtoCopyWith<$Res> {
  __$TypeCompatibilityDtoCopyWithImpl(this._self, this._then);

  final _TypeCompatibilityDto _self;
  final $Res Function(_TypeCompatibilityDto) _then;

  /// Create a copy of TypeCompatibilityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCharacterImageUrl = null,
    Object? compatibilityPoint = null,
  }) {
    return _then(_TypeCompatibilityDto(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeCharacterImageUrl: null == typeCharacterImageUrl
          ? _self.typeCharacterImageUrl
          : typeCharacterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      compatibilityPoint: null == compatibilityPoint
          ? _self.compatibilityPoint
          : compatibilityPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
