// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_matching_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIMatchingUserDto {
  String get id;
  String get name;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get typeImageUrl;
  WeatherPersonalityCode get typeCode;
  String get typeName;
  bool? get isTodayReported;

  /// Create a copy of AIMatchingUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AIMatchingUserDtoCopyWith<AIMatchingUserDto> get copyWith =>
      _$AIMatchingUserDtoCopyWithImpl<AIMatchingUserDto>(
          this as AIMatchingUserDto, _$identity);

  /// Serializes this AIMatchingUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AIMatchingUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, typeImageUrl, typeCode, typeName, isTodayReported);

  @override
  String toString() {
    return 'AIMatchingUserDto(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, typeImageUrl: $typeImageUrl, typeCode: $typeCode, typeName: $typeName, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class $AIMatchingUserDtoCopyWith<$Res> {
  factory $AIMatchingUserDtoCopyWith(
          AIMatchingUserDto value, $Res Function(AIMatchingUserDto) _then) =
      _$AIMatchingUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String typeImageUrl,
      WeatherPersonalityCode typeCode,
      String typeName,
      bool? isTodayReported});
}

/// @nodoc
class _$AIMatchingUserDtoCopyWithImpl<$Res>
    implements $AIMatchingUserDtoCopyWith<$Res> {
  _$AIMatchingUserDtoCopyWithImpl(this._self, this._then);

  final AIMatchingUserDto _self;
  final $Res Function(AIMatchingUserDto) _then;

  /// Create a copy of AIMatchingUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? typeImageUrl = null,
    Object? typeCode = null,
    Object? typeName = null,
    Object? isTodayReported = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AIMatchingUserDto].
extension AIMatchingUserDtoPatterns on AIMatchingUserDto {
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
    TResult Function(_AIMatchingUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserDto() when $default != null:
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
    TResult Function(_AIMatchingUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserDto():
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
    TResult? Function(_AIMatchingUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserDto() when $default != null:
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
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String typeImageUrl,
            WeatherPersonalityCode typeCode,
            String typeName,
            bool? isTodayReported)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.typeImageUrl,
            _that.typeCode,
            _that.typeName,
            _that.isTodayReported);
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
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String typeImageUrl,
            WeatherPersonalityCode typeCode,
            String typeName,
            bool? isTodayReported)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserDto():
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.typeImageUrl,
            _that.typeCode,
            _that.typeName,
            _that.isTodayReported);
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
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String typeImageUrl,
            WeatherPersonalityCode typeCode,
            String typeName,
            bool? isTodayReported)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingUserDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.typeImageUrl,
            _that.typeCode,
            _that.typeName,
            _that.isTodayReported);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AIMatchingUserDto implements AIMatchingUserDto {
  const _AIMatchingUserDto(
      {required this.id,
      required this.name,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.typeImageUrl,
      required this.typeCode,
      required this.typeName,
      this.isTodayReported});
  factory _AIMatchingUserDto.fromJson(Map<String, dynamic> json) =>
      _$AIMatchingUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String typeImageUrl;
  @override
  final WeatherPersonalityCode typeCode;
  @override
  final String typeName;
  @override
  final bool? isTodayReported;

  /// Create a copy of AIMatchingUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AIMatchingUserDtoCopyWith<_AIMatchingUserDto> get copyWith =>
      __$AIMatchingUserDtoCopyWithImpl<_AIMatchingUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AIMatchingUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AIMatchingUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, typeImageUrl, typeCode, typeName, isTodayReported);

  @override
  String toString() {
    return 'AIMatchingUserDto(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, typeImageUrl: $typeImageUrl, typeCode: $typeCode, typeName: $typeName, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class _$AIMatchingUserDtoCopyWith<$Res>
    implements $AIMatchingUserDtoCopyWith<$Res> {
  factory _$AIMatchingUserDtoCopyWith(
          _AIMatchingUserDto value, $Res Function(_AIMatchingUserDto) _then) =
      __$AIMatchingUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String typeImageUrl,
      WeatherPersonalityCode typeCode,
      String typeName,
      bool? isTodayReported});
}

/// @nodoc
class __$AIMatchingUserDtoCopyWithImpl<$Res>
    implements _$AIMatchingUserDtoCopyWith<$Res> {
  __$AIMatchingUserDtoCopyWithImpl(this._self, this._then);

  final _AIMatchingUserDto _self;
  final $Res Function(_AIMatchingUserDto) _then;

  /// Create a copy of AIMatchingUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? typeImageUrl = null,
    Object? typeCode = null,
    Object? typeName = null,
    Object? isTodayReported = freezed,
  }) {
    return _then(_AIMatchingUserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
