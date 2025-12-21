// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rainbow_like_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RainbowLikeEntity {
  String get id;
  String get fromUserId;
  String get toUserId;
  String get message;
  @IsoDateTimeOrNullConverter()
  DateTime? get createdAt;

  /// Create a copy of RainbowLikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RainbowLikeEntityCopyWith<RainbowLikeEntity> get copyWith =>
      _$RainbowLikeEntityCopyWithImpl<RainbowLikeEntity>(
          this as RainbowLikeEntity, _$identity);

  /// Serializes this RainbowLikeEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RainbowLikeEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fromUserId, toUserId, message, createdAt);

  @override
  String toString() {
    return 'RainbowLikeEntity(id: $id, fromUserId: $fromUserId, toUserId: $toUserId, message: $message, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $RainbowLikeEntityCopyWith<$Res> {
  factory $RainbowLikeEntityCopyWith(
          RainbowLikeEntity value, $Res Function(RainbowLikeEntity) _then) =
      _$RainbowLikeEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String fromUserId,
      String toUserId,
      String message,
      @IsoDateTimeOrNullConverter() DateTime? createdAt});
}

/// @nodoc
class _$RainbowLikeEntityCopyWithImpl<$Res>
    implements $RainbowLikeEntityCopyWith<$Res> {
  _$RainbowLikeEntityCopyWithImpl(this._self, this._then);

  final RainbowLikeEntity _self;
  final $Res Function(RainbowLikeEntity) _then;

  /// Create a copy of RainbowLikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromUserId = null,
    Object? toUserId = null,
    Object? message = null,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: null == fromUserId
          ? _self.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      toUserId: null == toUserId
          ? _self.toUserId
          : toUserId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RainbowLikeEntity].
extension RainbowLikeEntityPatterns on RainbowLikeEntity {
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
    TResult Function(_RainbowLikeEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RainbowLikeEntity() when $default != null:
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
    TResult Function(_RainbowLikeEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainbowLikeEntity():
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
    TResult? Function(_RainbowLikeEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainbowLikeEntity() when $default != null:
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
    TResult Function(String id, String fromUserId, String toUserId,
            String message, @IsoDateTimeOrNullConverter() DateTime? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RainbowLikeEntity() when $default != null:
        return $default(_that.id, _that.fromUserId, _that.toUserId,
            _that.message, _that.createdAt);
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
    TResult Function(String id, String fromUserId, String toUserId,
            String message, @IsoDateTimeOrNullConverter() DateTime? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainbowLikeEntity():
        return $default(_that.id, _that.fromUserId, _that.toUserId,
            _that.message, _that.createdAt);
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
    TResult? Function(String id, String fromUserId, String toUserId,
            String message, @IsoDateTimeOrNullConverter() DateTime? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RainbowLikeEntity() when $default != null:
        return $default(_that.id, _that.fromUserId, _that.toUserId,
            _that.message, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _RainbowLikeEntity implements RainbowLikeEntity {
  const _RainbowLikeEntity(
      {required this.id,
      required this.fromUserId,
      required this.toUserId,
      required this.message,
      @IsoDateTimeOrNullConverter() this.createdAt});
  factory _RainbowLikeEntity.fromJson(Map<String, dynamic> json) =>
      _$RainbowLikeEntityFromJson(json);

  @override
  final String id;
  @override
  final String fromUserId;
  @override
  final String toUserId;
  @override
  final String message;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? createdAt;

  /// Create a copy of RainbowLikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RainbowLikeEntityCopyWith<_RainbowLikeEntity> get copyWith =>
      __$RainbowLikeEntityCopyWithImpl<_RainbowLikeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RainbowLikeEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RainbowLikeEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fromUserId, toUserId, message, createdAt);

  @override
  String toString() {
    return 'RainbowLikeEntity(id: $id, fromUserId: $fromUserId, toUserId: $toUserId, message: $message, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$RainbowLikeEntityCopyWith<$Res>
    implements $RainbowLikeEntityCopyWith<$Res> {
  factory _$RainbowLikeEntityCopyWith(
          _RainbowLikeEntity value, $Res Function(_RainbowLikeEntity) _then) =
      __$RainbowLikeEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String fromUserId,
      String toUserId,
      String message,
      @IsoDateTimeOrNullConverter() DateTime? createdAt});
}

/// @nodoc
class __$RainbowLikeEntityCopyWithImpl<$Res>
    implements _$RainbowLikeEntityCopyWith<$Res> {
  __$RainbowLikeEntityCopyWithImpl(this._self, this._then);

  final _RainbowLikeEntity _self;
  final $Res Function(_RainbowLikeEntity) _then;

  /// Create a copy of RainbowLikeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? fromUserId = null,
    Object? toUserId = null,
    Object? message = null,
    Object? createdAt = freezed,
  }) {
    return _then(_RainbowLikeEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fromUserId: null == fromUserId
          ? _self.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
              as String,
      toUserId: null == toUserId
          ? _self.toUserId
          : toUserId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
