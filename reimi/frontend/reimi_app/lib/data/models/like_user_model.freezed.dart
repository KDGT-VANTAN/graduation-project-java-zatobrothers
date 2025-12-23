// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikeUserModel {
  String get userId;
  @IsoDateTimeConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  @IsoDateTimeOrNullConverter()
  DateTime? get lastLoginAt;

  /// Create a copy of LikeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikeUserModelCopyWith<LikeUserModel> get copyWith =>
      _$LikeUserModelCopyWithImpl<LikeUserModel>(
          this as LikeUserModel, _$identity);

  /// Serializes this LikeUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeUserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, birthDate, address, mainPhotoUrl, lastLoginAt);

  @override
  String toString() {
    return 'LikeUserModel(userId: $userId, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, lastLoginAt: $lastLoginAt)';
  }
}

/// @nodoc
abstract mixin class $LikeUserModelCopyWith<$Res> {
  factory $LikeUserModelCopyWith(
          LikeUserModel value, $Res Function(LikeUserModel) _then) =
      _$LikeUserModelCopyWithImpl;
  @useResult
  $Res call(
      {String userId,
      @IsoDateTimeConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      @IsoDateTimeOrNullConverter() DateTime? lastLoginAt});
}

/// @nodoc
class _$LikeUserModelCopyWithImpl<$Res>
    implements $LikeUserModelCopyWith<$Res> {
  _$LikeUserModelCopyWithImpl(this._self, this._then);

  final LikeUserModel _self;
  final $Res Function(LikeUserModel) _then;

  /// Create a copy of LikeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? lastLoginAt = freezed,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// Adds pattern-matching-related methods to [LikeUserModel].
extension LikeUserModelPatterns on LikeUserModel {
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
    TResult Function(_LikeUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeUserModel() when $default != null:
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
    TResult Function(_LikeUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserModel():
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
    TResult? Function(_LikeUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserModel() when $default != null:
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
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeUserModel() when $default != null:
        return $default(_that.userId, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.lastLoginAt);
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
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserModel():
        return $default(_that.userId, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.lastLoginAt);
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
            @IsoDateTimeConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            @IsoDateTimeOrNullConverter() DateTime? lastLoginAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserModel() when $default != null:
        return $default(_that.userId, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.lastLoginAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _LikeUserModel implements LikeUserModel {
  const _LikeUserModel(
      {required this.userId,
      @IsoDateTimeConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      @IsoDateTimeOrNullConverter() this.lastLoginAt});
  factory _LikeUserModel.fromJson(Map<String, dynamic> json) =>
      _$LikeUserModelFromJson(json);

  @override
  final String userId;
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

  /// Create a copy of LikeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikeUserModelCopyWith<_LikeUserModel> get copyWith =>
      __$LikeUserModelCopyWithImpl<_LikeUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikeUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeUserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, birthDate, address, mainPhotoUrl, lastLoginAt);

  @override
  String toString() {
    return 'LikeUserModel(userId: $userId, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, lastLoginAt: $lastLoginAt)';
  }
}

/// @nodoc
abstract mixin class _$LikeUserModelCopyWith<$Res>
    implements $LikeUserModelCopyWith<$Res> {
  factory _$LikeUserModelCopyWith(
          _LikeUserModel value, $Res Function(_LikeUserModel) _then) =
      __$LikeUserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String userId,
      @IsoDateTimeConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      @IsoDateTimeOrNullConverter() DateTime? lastLoginAt});
}

/// @nodoc
class __$LikeUserModelCopyWithImpl<$Res>
    implements _$LikeUserModelCopyWith<$Res> {
  __$LikeUserModelCopyWithImpl(this._self, this._then);

  final _LikeUserModel _self;
  final $Res Function(_LikeUserModel) _then;

  /// Create a copy of LikeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? lastLoginAt = freezed,
  }) {
    return _then(_LikeUserModel(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

// dart format on
