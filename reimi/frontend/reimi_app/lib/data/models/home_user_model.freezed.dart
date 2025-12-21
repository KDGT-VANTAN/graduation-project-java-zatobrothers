// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeUserModel {
  String get userId;
  String get firebaseUid;
  String get name;
  @IsoDateTimeConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  @IsoDateTimeOrNullConverter()
  DateTime? get lastLoginAt;
  UserStatus get status;
  String get introduction;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeUserModelCopyWith<HomeUserModel> get copyWith =>
      _$HomeUserModelCopyWithImpl<HomeUserModel>(
          this as HomeUserModel, _$identity);

  /// Serializes this HomeUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeUserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, firebaseUid, name,
      birthDate, address, mainPhotoUrl, lastLoginAt, status, introduction);

  @override
  String toString() {
    return 'HomeUserModel(userId: $userId, firebaseUid: $firebaseUid, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, lastLoginAt: $lastLoginAt, status: $status, introduction: $introduction)';
  }
}

/// @nodoc
abstract mixin class $HomeUserModelCopyWith<$Res> {
  factory $HomeUserModelCopyWith(
          HomeUserModel value, $Res Function(HomeUserModel) _then) =
      _$HomeUserModelCopyWithImpl;
  @useResult
  $Res call(
      {String userId,
      String firebaseUid,
      String name,
      @IsoDateTimeConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
      UserStatus status,
      String introduction});
}

/// @nodoc
class _$HomeUserModelCopyWithImpl<$Res>
    implements $HomeUserModelCopyWith<$Res> {
  _$HomeUserModelCopyWithImpl(this._self, this._then);

  final HomeUserModel _self;
  final $Res Function(HomeUserModel) _then;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firebaseUid = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? lastLoginAt = freezed,
    Object? status = null,
    Object? introduction = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUid: null == firebaseUid
          ? _self.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
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
      lastLoginAt: freezed == lastLoginAt
          ? _self.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeUserModel].
extension HomeUserModelPatterns on HomeUserModel {
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
    TResult Function(_HomeUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
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
    TResult Function(_HomeUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel():
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
    TResult? Function(_HomeUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
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
            String userId,
            String firebaseUid,
            String name,
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
            UserStatus status,
            String introduction)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
        return $default(
            _that.userId,
            _that.firebaseUid,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.lastLoginAt,
            _that.status,
            _that.introduction);
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
            String userId,
            String firebaseUid,
            String name,
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
            UserStatus status,
            String introduction)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel():
        return $default(
            _that.userId,
            _that.firebaseUid,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.lastLoginAt,
            _that.status,
            _that.introduction);
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
            String userId,
            String firebaseUid,
            String name,
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
            UserStatus status,
            String introduction)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
        return $default(
            _that.userId,
            _that.firebaseUid,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.lastLoginAt,
            _that.status,
            _that.introduction);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _HomeUserModel implements HomeUserModel {
  const _HomeUserModel(
      {required this.userId,
      required this.firebaseUid,
      required this.name,
      @IsoDateTimeConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      @IsoDateTimeOrNullConverter() this.lastLoginAt,
      required this.status,
      required this.introduction});
  factory _HomeUserModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUserModelFromJson(json);

  @override
  final String userId;
  @override
  final String firebaseUid;
  @override
  final String name;
  @override
  @IsoDateTimeConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? lastLoginAt;
  @override
  final UserStatus status;
  @override
  final String introduction;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeUserModelCopyWith<_HomeUserModel> get copyWith =>
      __$HomeUserModelCopyWithImpl<_HomeUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firebaseUid, firebaseUid) ||
                other.firebaseUid == firebaseUid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, firebaseUid, name,
      birthDate, address, mainPhotoUrl, lastLoginAt, status, introduction);

  @override
  String toString() {
    return 'HomeUserModel(userId: $userId, firebaseUid: $firebaseUid, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, lastLoginAt: $lastLoginAt, status: $status, introduction: $introduction)';
  }
}

/// @nodoc
abstract mixin class _$HomeUserModelCopyWith<$Res>
    implements $HomeUserModelCopyWith<$Res> {
  factory _$HomeUserModelCopyWith(
          _HomeUserModel value, $Res Function(_HomeUserModel) _then) =
      __$HomeUserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userId,
      String firebaseUid,
      String name,
      @IsoDateTimeConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      @IsoDateTimeOrNullConverter() DateTime? lastLoginAt,
      UserStatus status,
      String introduction});
}

/// @nodoc
class __$HomeUserModelCopyWithImpl<$Res>
    implements _$HomeUserModelCopyWith<$Res> {
  __$HomeUserModelCopyWithImpl(this._self, this._then);

  final _HomeUserModel _self;
  final $Res Function(_HomeUserModel) _then;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? firebaseUid = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? lastLoginAt = freezed,
    Object? status = null,
    Object? introduction = null,
  }) {
    return _then(_HomeUserModel(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseUid: null == firebaseUid
          ? _self.firebaseUid
          : firebaseUid // ignore: cast_nullable_to_non_nullable
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
      lastLoginAt: freezed == lastLoginAt
          ? _self.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
