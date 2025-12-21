// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkipEntity {
  String get id;
  String get userId;
  String get skippedUserId;
  @IsoDateTimeOrNullConverter()
  DateTime? get createdAt;

  /// Create a copy of SkipEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkipEntityCopyWith<SkipEntity> get copyWith =>
      _$SkipEntityCopyWithImpl<SkipEntity>(this as SkipEntity, _$identity);

  /// Serializes this SkipEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkipEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.skippedUserId, skippedUserId) ||
                other.skippedUserId == skippedUserId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, skippedUserId, createdAt);

  @override
  String toString() {
    return 'SkipEntity(id: $id, userId: $userId, skippedUserId: $skippedUserId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $SkipEntityCopyWith<$Res> {
  factory $SkipEntityCopyWith(
          SkipEntity value, $Res Function(SkipEntity) _then) =
      _$SkipEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String skippedUserId,
      @IsoDateTimeOrNullConverter() DateTime? createdAt});
}

/// @nodoc
class _$SkipEntityCopyWithImpl<$Res> implements $SkipEntityCopyWith<$Res> {
  _$SkipEntityCopyWithImpl(this._self, this._then);

  final SkipEntity _self;
  final $Res Function(SkipEntity) _then;

  /// Create a copy of SkipEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? skippedUserId = null,
    Object? createdAt = freezed,
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
      skippedUserId: null == skippedUserId
          ? _self.skippedUserId
          : skippedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SkipEntity].
extension SkipEntityPatterns on SkipEntity {
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
    TResult Function(_SkipEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SkipEntity() when $default != null:
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
    TResult Function(_SkipEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SkipEntity():
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
    TResult? Function(_SkipEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SkipEntity() when $default != null:
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
    TResult Function(String id, String userId, String skippedUserId,
            @IsoDateTimeOrNullConverter() DateTime? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SkipEntity() when $default != null:
        return $default(
            _that.id, _that.userId, _that.skippedUserId, _that.createdAt);
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
    TResult Function(String id, String userId, String skippedUserId,
            @IsoDateTimeOrNullConverter() DateTime? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SkipEntity():
        return $default(
            _that.id, _that.userId, _that.skippedUserId, _that.createdAt);
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
    TResult? Function(String id, String userId, String skippedUserId,
            @IsoDateTimeOrNullConverter() DateTime? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SkipEntity() when $default != null:
        return $default(
            _that.id, _that.userId, _that.skippedUserId, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _SkipEntity implements SkipEntity {
  const _SkipEntity(
      {required this.id,
      required this.userId,
      required this.skippedUserId,
      @IsoDateTimeOrNullConverter() this.createdAt});
  factory _SkipEntity.fromJson(Map<String, dynamic> json) =>
      _$SkipEntityFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String skippedUserId;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? createdAt;

  /// Create a copy of SkipEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkipEntityCopyWith<_SkipEntity> get copyWith =>
      __$SkipEntityCopyWithImpl<_SkipEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SkipEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkipEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.skippedUserId, skippedUserId) ||
                other.skippedUserId == skippedUserId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, skippedUserId, createdAt);

  @override
  String toString() {
    return 'SkipEntity(id: $id, userId: $userId, skippedUserId: $skippedUserId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$SkipEntityCopyWith<$Res>
    implements $SkipEntityCopyWith<$Res> {
  factory _$SkipEntityCopyWith(
          _SkipEntity value, $Res Function(_SkipEntity) _then) =
      __$SkipEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String skippedUserId,
      @IsoDateTimeOrNullConverter() DateTime? createdAt});
}

/// @nodoc
class __$SkipEntityCopyWithImpl<$Res> implements _$SkipEntityCopyWith<$Res> {
  __$SkipEntityCopyWithImpl(this._self, this._then);

  final _SkipEntity _self;
  final $Res Function(_SkipEntity) _then;

  /// Create a copy of SkipEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? skippedUserId = null,
    Object? createdAt = freezed,
  }) {
    return _then(_SkipEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      skippedUserId: null == skippedUserId
          ? _self.skippedUserId
          : skippedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
