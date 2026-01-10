// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserParams {
  String get name;
  String get email;
  Gender get gender;
  DateTime get birthDate;
  Address get address;
  String get introduction;
  String get mainPhoto;

  /// Create a copy of CreateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateUserParamsCopyWith<CreateUserParams> get copyWith =>
      _$CreateUserParamsCopyWithImpl<CreateUserParams>(
          this as CreateUserParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, gender, birthDate,
      address, introduction, mainPhoto);

  @override
  String toString() {
    return 'CreateUserParams(name: $name, email: $email, gender: $gender, birthDate: $birthDate, address: $address, introduction: $introduction, mainPhoto: $mainPhoto)';
  }
}

/// @nodoc
abstract mixin class $CreateUserParamsCopyWith<$Res> {
  factory $CreateUserParamsCopyWith(
          CreateUserParams value, $Res Function(CreateUserParams) _then) =
      _$CreateUserParamsCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String email,
      Gender gender,
      DateTime birthDate,
      Address address,
      String introduction,
      String mainPhoto});
}

/// @nodoc
class _$CreateUserParamsCopyWithImpl<$Res>
    implements $CreateUserParamsCopyWith<$Res> {
  _$CreateUserParamsCopyWithImpl(this._self, this._then);

  final CreateUserParams _self;
  final $Res Function(CreateUserParams) _then;

  /// Create a copy of CreateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? introduction = null,
    Object? mainPhoto = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
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
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhoto: null == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateUserParams].
extension CreateUserParamsPatterns on CreateUserParams {
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
    TResult Function(_CreateUserParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateUserParams() when $default != null:
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
    TResult Function(_CreateUserParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserParams():
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
    TResult? Function(_CreateUserParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserParams() when $default != null:
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
            String name,
            String email,
            Gender gender,
            DateTime birthDate,
            Address address,
            String introduction,
            String mainPhoto)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateUserParams() when $default != null:
        return $default(_that.name, _that.email, _that.gender, _that.birthDate,
            _that.address, _that.introduction, _that.mainPhoto);
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
            String name,
            String email,
            Gender gender,
            DateTime birthDate,
            Address address,
            String introduction,
            String mainPhoto)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserParams():
        return $default(_that.name, _that.email, _that.gender, _that.birthDate,
            _that.address, _that.introduction, _that.mainPhoto);
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
            String name,
            String email,
            Gender gender,
            DateTime birthDate,
            Address address,
            String introduction,
            String mainPhoto)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserParams() when $default != null:
        return $default(_that.name, _that.email, _that.gender, _that.birthDate,
            _that.address, _that.introduction, _that.mainPhoto);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateUserParams implements CreateUserParams {
  const _CreateUserParams(
      {required this.name,
      required this.email,
      required this.gender,
      required this.birthDate,
      required this.address,
      required this.introduction,
      required this.mainPhoto});

  @override
  final String name;
  @override
  final String email;
  @override
  final Gender gender;
  @override
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String introduction;
  @override
  final String mainPhoto;

  /// Create a copy of CreateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateUserParamsCopyWith<_CreateUserParams> get copyWith =>
      __$CreateUserParamsCopyWithImpl<_CreateUserParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhoto, mainPhoto) ||
                other.mainPhoto == mainPhoto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, gender, birthDate,
      address, introduction, mainPhoto);

  @override
  String toString() {
    return 'CreateUserParams(name: $name, email: $email, gender: $gender, birthDate: $birthDate, address: $address, introduction: $introduction, mainPhoto: $mainPhoto)';
  }
}

/// @nodoc
abstract mixin class _$CreateUserParamsCopyWith<$Res>
    implements $CreateUserParamsCopyWith<$Res> {
  factory _$CreateUserParamsCopyWith(
          _CreateUserParams value, $Res Function(_CreateUserParams) _then) =
      __$CreateUserParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String email,
      Gender gender,
      DateTime birthDate,
      Address address,
      String introduction,
      String mainPhoto});
}

/// @nodoc
class __$CreateUserParamsCopyWithImpl<$Res>
    implements _$CreateUserParamsCopyWith<$Res> {
  __$CreateUserParamsCopyWithImpl(this._self, this._then);

  final _CreateUserParams _self;
  final $Res Function(_CreateUserParams) _then;

  /// Create a copy of CreateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? introduction = null,
    Object? mainPhoto = null,
  }) {
    return _then(_CreateUserParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
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
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhoto: null == mainPhoto
          ? _self.mainPhoto
          : mainPhoto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
