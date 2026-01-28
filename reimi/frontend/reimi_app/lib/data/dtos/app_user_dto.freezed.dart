// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUserDto {
  String get id;
  String get name;
  Gender get gender;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get email;
  UserStatus get status;

  /// Create a copy of AppUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppUserDtoCopyWith<AppUserDto> get copyWith =>
      _$AppUserDtoCopyWithImpl<AppUserDto>(this as AppUserDto, _$identity);

  /// Serializes this AppUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, gender, birthDate, address, email, status);

  @override
  String toString() {
    return 'AppUserDto(id: $id, name: $name, gender: $gender, birthDate: $birthDate, address: $address, email: $email, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) _then) =
      _$AppUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String email,
      UserStatus status});
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res> implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._self, this._then);

  final AppUserDto _self;
  final $Res Function(AppUserDto) _then;

  /// Create a copy of AppUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? email = null,
    Object? status = null,
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
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppUserDto].
extension AppUserDtoPatterns on AppUserDto {
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
    TResult Function(_AppUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUserDto() when $default != null:
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
    TResult Function(_AppUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUserDto():
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
    TResult? Function(_AppUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUserDto() when $default != null:
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
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String email,
            UserStatus status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUserDto() when $default != null:
        return $default(_that.id, _that.name, _that.gender, _that.birthDate,
            _that.address, _that.email, _that.status);
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
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String email,
            UserStatus status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUserDto():
        return $default(_that.id, _that.name, _that.gender, _that.birthDate,
            _that.address, _that.email, _that.status);
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
            Gender gender,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String email,
            UserStatus status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUserDto() when $default != null:
        return $default(_that.id, _that.name, _that.gender, _that.birthDate,
            _that.address, _that.email, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppUserDto implements AppUserDto {
  const _AppUserDto(
      {required this.id,
      required this.name,
      required this.gender,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.email,
      required this.status});
  factory _AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Gender gender;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String email;
  @override
  final UserStatus status;

  /// Create a copy of AppUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppUserDtoCopyWith<_AppUserDto> get copyWith =>
      __$AppUserDtoCopyWithImpl<_AppUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, gender, birthDate, address, email, status);

  @override
  String toString() {
    return 'AppUserDto(id: $id, name: $name, gender: $gender, birthDate: $birthDate, address: $address, email: $email, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$AppUserDtoCopyWith<$Res>
    implements $AppUserDtoCopyWith<$Res> {
  factory _$AppUserDtoCopyWith(
          _AppUserDto value, $Res Function(_AppUserDto) _then) =
      __$AppUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Gender gender,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String email,
      UserStatus status});
}

/// @nodoc
class __$AppUserDtoCopyWithImpl<$Res> implements _$AppUserDtoCopyWith<$Res> {
  __$AppUserDtoCopyWithImpl(this._self, this._then);

  final _AppUserDto _self;
  final $Res Function(_AppUserDto) _then;

  /// Create a copy of AppUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? email = null,
    Object? status = null,
  }) {
    return _then(_AppUserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
    ));
  }
}

// dart format on
