// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_weather_personality_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserWeatherPersonalityTypeEntity {
  String get id;
  String get userId;
  String get typeId;
  int get score;
  DateTime get createdAt;
  DateTime get updatedAt;

  /// Create a copy of UserWeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserWeatherPersonalityTypeEntityCopyWith<UserWeatherPersonalityTypeEntity>
      get copyWith => _$UserWeatherPersonalityTypeEntityCopyWithImpl<
              UserWeatherPersonalityTypeEntity>(
          this as UserWeatherPersonalityTypeEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserWeatherPersonalityTypeEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, typeId, score, createdAt, updatedAt);

  @override
  String toString() {
    return 'UserWeatherPersonalityTypeEntity(id: $id, userId: $userId, typeId: $typeId, score: $score, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $UserWeatherPersonalityTypeEntityCopyWith<$Res> {
  factory $UserWeatherPersonalityTypeEntityCopyWith(
          UserWeatherPersonalityTypeEntity value,
          $Res Function(UserWeatherPersonalityTypeEntity) _then) =
      _$UserWeatherPersonalityTypeEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String typeId,
      int score,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserWeatherPersonalityTypeEntityCopyWithImpl<$Res>
    implements $UserWeatherPersonalityTypeEntityCopyWith<$Res> {
  _$UserWeatherPersonalityTypeEntityCopyWithImpl(this._self, this._then);

  final UserWeatherPersonalityTypeEntity _self;
  final $Res Function(UserWeatherPersonalityTypeEntity) _then;

  /// Create a copy of UserWeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? typeId = null,
    Object? score = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _self.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserWeatherPersonalityTypeEntity].
extension UserWeatherPersonalityTypeEntityPatterns
    on UserWeatherPersonalityTypeEntity {
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
    TResult Function(_UserWeatherPersonalityTypeEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserWeatherPersonalityTypeEntity() when $default != null:
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
    TResult Function(_UserWeatherPersonalityTypeEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserWeatherPersonalityTypeEntity():
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
    TResult? Function(_UserWeatherPersonalityTypeEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserWeatherPersonalityTypeEntity() when $default != null:
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
    TResult Function(String id, String userId, String typeId, int score,
            DateTime createdAt, DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserWeatherPersonalityTypeEntity() when $default != null:
        return $default(_that.id, _that.userId, _that.typeId, _that.score,
            _that.createdAt, _that.updatedAt);
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
    TResult Function(String id, String userId, String typeId, int score,
            DateTime createdAt, DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserWeatherPersonalityTypeEntity():
        return $default(_that.id, _that.userId, _that.typeId, _that.score,
            _that.createdAt, _that.updatedAt);
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
    TResult? Function(String id, String userId, String typeId, int score,
            DateTime createdAt, DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserWeatherPersonalityTypeEntity() when $default != null:
        return $default(_that.id, _that.userId, _that.typeId, _that.score,
            _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserWeatherPersonalityTypeEntity
    implements UserWeatherPersonalityTypeEntity {
  const _UserWeatherPersonalityTypeEntity(
      {required this.id,
      required this.userId,
      required this.typeId,
      required this.score,
      required this.createdAt,
      required this.updatedAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String typeId;
  @override
  final int score;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  /// Create a copy of UserWeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserWeatherPersonalityTypeEntityCopyWith<_UserWeatherPersonalityTypeEntity>
      get copyWith => __$UserWeatherPersonalityTypeEntityCopyWithImpl<
          _UserWeatherPersonalityTypeEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserWeatherPersonalityTypeEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, typeId, score, createdAt, updatedAt);

  @override
  String toString() {
    return 'UserWeatherPersonalityTypeEntity(id: $id, userId: $userId, typeId: $typeId, score: $score, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$UserWeatherPersonalityTypeEntityCopyWith<$Res>
    implements $UserWeatherPersonalityTypeEntityCopyWith<$Res> {
  factory _$UserWeatherPersonalityTypeEntityCopyWith(
          _UserWeatherPersonalityTypeEntity value,
          $Res Function(_UserWeatherPersonalityTypeEntity) _then) =
      __$UserWeatherPersonalityTypeEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String typeId,
      int score,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$UserWeatherPersonalityTypeEntityCopyWithImpl<$Res>
    implements _$UserWeatherPersonalityTypeEntityCopyWith<$Res> {
  __$UserWeatherPersonalityTypeEntityCopyWithImpl(this._self, this._then);

  final _UserWeatherPersonalityTypeEntity _self;
  final $Res Function(_UserWeatherPersonalityTypeEntity) _then;

  /// Create a copy of UserWeatherPersonalityTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? typeId = null,
    Object? score = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_UserWeatherPersonalityTypeEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _self.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
