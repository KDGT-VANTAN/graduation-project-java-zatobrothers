// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoomEntity {
  String get id;
  String get matchId;
  @IsoDateTimeOrNullConverter()
  DateTime? get createdAt;

  /// Create a copy of ChatRoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatRoomEntityCopyWith<ChatRoomEntity> get copyWith =>
      _$ChatRoomEntityCopyWithImpl<ChatRoomEntity>(
          this as ChatRoomEntity, _$identity);

  /// Serializes this ChatRoomEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatRoomEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, matchId, createdAt);

  @override
  String toString() {
    return 'ChatRoomEntity(id: $id, matchId: $matchId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ChatRoomEntityCopyWith<$Res> {
  factory $ChatRoomEntityCopyWith(
          ChatRoomEntity value, $Res Function(ChatRoomEntity) _then) =
      _$ChatRoomEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String matchId,
      @IsoDateTimeOrNullConverter() DateTime? createdAt});
}

/// @nodoc
class _$ChatRoomEntityCopyWithImpl<$Res>
    implements $ChatRoomEntityCopyWith<$Res> {
  _$ChatRoomEntityCopyWithImpl(this._self, this._then);

  final ChatRoomEntity _self;
  final $Res Function(ChatRoomEntity) _then;

  /// Create a copy of ChatRoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchId = null,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: null == matchId
          ? _self.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatRoomEntity].
extension ChatRoomEntityPatterns on ChatRoomEntity {
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
    TResult Function(_ChatRoomEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatRoomEntity() when $default != null:
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
    TResult Function(_ChatRoomEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomEntity():
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
    TResult? Function(_ChatRoomEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomEntity() when $default != null:
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
    TResult Function(String id, String matchId,
            @IsoDateTimeOrNullConverter() DateTime? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatRoomEntity() when $default != null:
        return $default(_that.id, _that.matchId, _that.createdAt);
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
    TResult Function(String id, String matchId,
            @IsoDateTimeOrNullConverter() DateTime? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomEntity():
        return $default(_that.id, _that.matchId, _that.createdAt);
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
    TResult? Function(String id, String matchId,
            @IsoDateTimeOrNullConverter() DateTime? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomEntity() when $default != null:
        return $default(_that.id, _that.matchId, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ChatRoomEntity implements ChatRoomEntity {
  const _ChatRoomEntity(
      {required this.id,
      required this.matchId,
      @IsoDateTimeOrNullConverter() this.createdAt});
  factory _ChatRoomEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomEntityFromJson(json);

  @override
  final String id;
  @override
  final String matchId;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? createdAt;

  /// Create a copy of ChatRoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatRoomEntityCopyWith<_ChatRoomEntity> get copyWith =>
      __$ChatRoomEntityCopyWithImpl<_ChatRoomEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatRoomEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoomEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, matchId, createdAt);

  @override
  String toString() {
    return 'ChatRoomEntity(id: $id, matchId: $matchId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ChatRoomEntityCopyWith<$Res>
    implements $ChatRoomEntityCopyWith<$Res> {
  factory _$ChatRoomEntityCopyWith(
          _ChatRoomEntity value, $Res Function(_ChatRoomEntity) _then) =
      __$ChatRoomEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String matchId,
      @IsoDateTimeOrNullConverter() DateTime? createdAt});
}

/// @nodoc
class __$ChatRoomEntityCopyWithImpl<$Res>
    implements _$ChatRoomEntityCopyWith<$Res> {
  __$ChatRoomEntityCopyWithImpl(this._self, this._then);

  final _ChatRoomEntity _self;
  final $Res Function(_ChatRoomEntity) _then;

  /// Create a copy of ChatRoomEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? matchId = null,
    Object? createdAt = freezed,
  }) {
    return _then(_ChatRoomEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: null == matchId
          ? _self.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
