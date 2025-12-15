// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEntity {
  String get id;
  String get firebaseUid;
  String get name;
  Gender get gender;
  @IsoDateTimeConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get email;
  @IsoDateTimeConverter()
  DateTime get signupDate;
  @IsoDateTimeOrNullConverter()
  DateTime? get lastLoginAt;
  @IsoDateTimeConverter()
  DateTime get createdAt;
  @IsoDateTimeConverter()
  DateTime get updatedAt;
  UserStatus get status;
  @IsoDateTimeOrNullConverter()
  DateTime? get withdrawalAt;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<UserEntity> get copyWith =>
      _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);

  /// Serializes this UserEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.signupDate, signupDate) ||
                other.signupDate == signupDate) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.withdrawalAt, withdrawalAt) ||
                other.withdrawalAt == withdrawalAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firebaseUid,
      name,
      gender,
      birthDate,
      address,
      mainPhotoUrl,
      email,
      signupDate,
      lastLoginAt,
      createdAt,
      updatedAt,
      status,
      withdrawalAt);

  @override
  String toString() {
    return 'UserEntity(id: $id, firebaseUid: $firebaseUid, name: $name, gender: $gender, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, email: $email, signupDate: $signupDate, lastLoginAt: $lastLoginAt, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, withdrawalAt: $withdrawalAt)';
  }
}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) _then) =
      _$UserEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String firebaseUid,
      String name,
      Gender gender,
      @IsoDateTimeConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String email,
      @IsoDateTimeConverter() DateTime signupDate,
      @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
      @IsoDateTimeConverter() DateTime createdAt,
      @IsoDateTimeConverter() DateTime updatedAt,
      UserStatus status,
      @IsoDateTimeOrNullConverter() DateTime? withdrawalAt});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firebaseUid = null,
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? email = null,
    Object? signupDate = null,
    Object? lastLoginAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? status = null,
    Object? withdrawalAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUid: null == firebaseUid
          ? _self.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
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
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      signupDate: null == signupDate
          ? _self.signupDate
          : signupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: freezed == lastLoginAt
          ? _self.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      withdrawalAt: freezed == withdrawalAt
          ? _self.withdrawalAt
          : withdrawalAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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
    TResult Function(_UserEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
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
    TResult Function(_UserEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity():
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
    TResult? Function(_UserEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
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
            String firebaseUid,
            String name,
            Gender gender,
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String email,
            @IsoDateTimeConverter() DateTime signupDate,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
            @IsoDateTimeConverter() DateTime createdAt,
            @IsoDateTimeConverter() DateTime updatedAt,
            UserStatus status,
            @IsoDateTimeOrNullConverter() DateTime? withdrawalAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
        return $default(
            _that.id,
            _that.firebaseUid,
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.email,
            _that.signupDate,
            _that.lastLoginAt,
            _that.createdAt,
            _that.updatedAt,
            _that.status,
            _that.withdrawalAt);
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
            String firebaseUid,
            String name,
            Gender gender,
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String email,
            @IsoDateTimeConverter() DateTime signupDate,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
            @IsoDateTimeConverter() DateTime createdAt,
            @IsoDateTimeConverter() DateTime updatedAt,
            UserStatus status,
            @IsoDateTimeOrNullConverter() DateTime? withdrawalAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity():
        return $default(
            _that.id,
            _that.firebaseUid,
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.email,
            _that.signupDate,
            _that.lastLoginAt,
            _that.createdAt,
            _that.updatedAt,
            _that.status,
            _that.withdrawalAt);
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
            String firebaseUid,
            String name,
            Gender gender,
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String email,
            @IsoDateTimeConverter() DateTime signupDate,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
            @IsoDateTimeConverter() DateTime createdAt,
            @IsoDateTimeConverter() DateTime updatedAt,
            UserStatus status,
            @IsoDateTimeOrNullConverter() DateTime? withdrawalAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserEntity() when $default != null:
        return $default(
            _that.id,
            _that.firebaseUid,
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.email,
            _that.signupDate,
            _that.lastLoginAt,
            _that.createdAt,
            _that.updatedAt,
            _that.status,
            _that.withdrawalAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _UserEntity implements UserEntity {
  const _UserEntity(
      {required this.id,
      required this.firebaseUid,
      required this.name,
      required this.gender,
      @IsoDateTimeConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.email,
      @IsoDateTimeConverter() required this.signupDate,
      @IsoDateTimeOrNullConverter() this.lastLoginAt,
      @IsoDateTimeConverter() required this.createdAt,
      @IsoDateTimeConverter() required this.updatedAt,
      required this.status,
      @IsoDateTimeOrNullConverter() this.withdrawalAt});
  factory _UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  @override
  final String id;
  @override
  final String firebaseUid;
  @override
  final String name;
  @override
  final Gender gender;
  @override
  @IsoDateTimeConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String email;
  @override
  @IsoDateTimeConverter()
  final DateTime signupDate;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? lastLoginAt;
  @override
  @IsoDateTimeConverter()
  final DateTime createdAt;
  @override
  @IsoDateTimeConverter()
  final DateTime updatedAt;
  @override
  final UserStatus status;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? withdrawalAt;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.signupDate, signupDate) ||
                other.signupDate == signupDate) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.withdrawalAt, withdrawalAt) ||
                other.withdrawalAt == withdrawalAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firebaseUid,
      name,
      gender,
      birthDate,
      address,
      mainPhotoUrl,
      email,
      signupDate,
      lastLoginAt,
      createdAt,
      updatedAt,
      status,
      withdrawalAt);

  @override
  String toString() {
    return 'UserEntity(id: $id, firebaseUid: $firebaseUid, name: $name, gender: $gender, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, email: $email, signupDate: $signupDate, lastLoginAt: $lastLoginAt, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, withdrawalAt: $withdrawalAt)';
  }
}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) _then) =
      __$UserEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String firebaseUid,
      String name,
      Gender gender,
      @IsoDateTimeConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String email,
      @IsoDateTimeConverter() DateTime signupDate,
      @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
      @IsoDateTimeConverter() DateTime createdAt,
      @IsoDateTimeConverter() DateTime updatedAt,
      UserStatus status,
      @IsoDateTimeOrNullConverter() DateTime? withdrawalAt});
}

/// @nodoc
class __$UserEntityCopyWithImpl<$Res> implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

  /// Create a copy of UserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? firebaseUid = null,
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? email = null,
    Object? signupDate = null,
    Object? lastLoginAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? status = null,
    Object? withdrawalAt = freezed,
  }) {
    return _then(_UserEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUid: null == firebaseUid
          ? _self.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
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
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      signupDate: null == signupDate
          ? _self.signupDate
          : signupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: freezed == lastLoginAt
          ? _self.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      withdrawalAt: freezed == withdrawalAt
          ? _self.withdrawalAt
          : withdrawalAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
