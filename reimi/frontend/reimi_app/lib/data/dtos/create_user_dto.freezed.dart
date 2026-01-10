// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserDto {
  Gender get gender;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get name;
  String get introduction;
  String get mainPhoto;
  String get email;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith =>
      _$CreateUserDtoCopyWithImpl<CreateUserDto>(
          this as CreateUserDto, _$identity);

  /// Serializes this CreateUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserDto &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, birthDate, address, name,
      introduction, mainPhoto, email);

  @override
  String toString() {
    return 'CreateUserDto(gender: $gender, birthDate: $birthDate, address: $address, name: $name, introduction: $introduction, mainPhoto: $mainPhoto, email: $email)';
  }
}

/// @nodoc
abstract mixin class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) _then) =
      _$CreateUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String name,
      String introduction,
      String mainPhoto,
      String email});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._self, this._then);

  final CreateUserDto _self;
  final $Res Function(CreateUserDto) _then;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? name = null,
    Object? introduction = null,
    Object? mainPhoto = null,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhoto: null == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateUserDto].
extension CreateUserDtoPatterns on CreateUserDto {
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
    TResult Function(_CreateUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
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
    TResult Function(_CreateUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto():
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
    TResult? Function(_CreateUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
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
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String name,
            String introduction,
            String mainPhoto,
            String email)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
        return $default(_that.gender, _that.birthDate, _that.address,
            _that.name, _that.introduction, _that.mainPhoto, _that.email);
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
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String name,
            String introduction,
            String mainPhoto,
            String email)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto():
        return $default(_that.gender, _that.birthDate, _that.address,
            _that.name, _that.introduction, _that.mainPhoto, _that.email);
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
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String name,
            String introduction,
            String mainPhoto,
            String email)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
        return $default(_that.gender, _that.birthDate, _that.address,
            _that.name, _that.introduction, _that.mainPhoto, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateUserDto implements CreateUserDto {
  const _CreateUserDto(
      {required this.gender,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.name,
      required this.introduction,
      required this.mainPhoto,
      required this.email});
  factory _CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  @override
  final Gender gender;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String name;
  @override
  final String introduction;
  @override
  final String mainPhoto;
  @override
  final String email;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateUserDtoCopyWith<_CreateUserDto> get copyWith =>
      __$CreateUserDtoCopyWithImpl<_CreateUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserDto &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, birthDate, address, name,
      introduction, mainPhoto, email);

  @override
  String toString() {
    return 'CreateUserDto(gender: $gender, birthDate: $birthDate, address: $address, name: $name, introduction: $introduction, mainPhoto: $mainPhoto, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$CreateUserDtoCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$CreateUserDtoCopyWith(
          _CreateUserDto value, $Res Function(_CreateUserDto) _then) =
      __$CreateUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String name,
      String introduction,
      String mainPhoto,
      String email});
}

/// @nodoc
class __$CreateUserDtoCopyWithImpl<$Res>
    implements _$CreateUserDtoCopyWith<$Res> {
  __$CreateUserDtoCopyWithImpl(this._self, this._then);

  final _CreateUserDto _self;
  final $Res Function(_CreateUserDto) _then;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? name = null,
    Object? introduction = null,
    Object? mainPhoto = null,
    Object? email = null,
  }) {
    return _then(_CreateUserDto(
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhoto: null == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
