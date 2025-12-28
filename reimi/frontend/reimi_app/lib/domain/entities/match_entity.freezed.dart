// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchEntity {
  String get id;
  String get user1Id;
  String get user2Id;
  bool get isActive;
  @IsoDateTimeOrNullConverter()
  DateTime? get createdAt;
  @IsoDateTimeOrNullConverter()
  DateTime? get updatedAt;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MatchEntityCopyWith<MatchEntity> get copyWith =>
      _$MatchEntityCopyWithImpl<MatchEntity>(this as MatchEntity, _$identity);

  /// Serializes this MatchEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MatchEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user1Id, user1Id) || other.user1Id == user1Id) &&
            (identical(other.user2Id, user2Id) || other.user2Id == user2Id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, user1Id, user2Id, isActive, createdAt, updatedAt);

  @override
  String toString() {
    return 'MatchEntity(id: $id, user1Id: $user1Id, user2Id: $user2Id, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $MatchEntityCopyWith<$Res> {
  factory $MatchEntityCopyWith(
          MatchEntity value, $Res Function(MatchEntity) _then) =
      _$MatchEntityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String user1Id,
      String user2Id,
      bool isActive,
      @IsoDateTimeOrNullConverter() DateTime? createdAt,
      @IsoDateTimeOrNullConverter() DateTime? updatedAt});
}

/// @nodoc
class _$MatchEntityCopyWithImpl<$Res> implements $MatchEntityCopyWith<$Res> {
  _$MatchEntityCopyWithImpl(this._self, this._then);

  final MatchEntity _self;
  final $Res Function(MatchEntity) _then;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user1Id: null == user1Id
          ? _self.user1Id
          : user1Id // ignore: cast_nullable_to_non_nullable
              as String,
      user2Id: null == user2Id
          ? _self.user2Id
          : user2Id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MatchEntity].
extension MatchEntityPatterns on MatchEntity {
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
    TResult Function(_MatchEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchEntity() when $default != null:
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
    TResult Function(_MatchEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchEntity():
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
    TResult? Function(_MatchEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchEntity() when $default != null:
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
            String user1Id,
            String user2Id,
            bool isActive,
            @IsoDateTimeOrNullConverter() DateTime? createdAt,
            @IsoDateTimeOrNullConverter() DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchEntity() when $default != null:
        return $default(_that.id, _that.user1Id, _that.user2Id, _that.isActive,
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
    TResult Function(
            String id,
            String user1Id,
            String user2Id,
            bool isActive,
            @IsoDateTimeOrNullConverter() DateTime? createdAt,
            @IsoDateTimeOrNullConverter() DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchEntity():
        return $default(_that.id, _that.user1Id, _that.user2Id, _that.isActive,
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
    TResult? Function(
            String id,
            String user1Id,
            String user2Id,
            bool isActive,
            @IsoDateTimeOrNullConverter() DateTime? createdAt,
            @IsoDateTimeOrNullConverter() DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchEntity() when $default != null:
        return $default(_that.id, _that.user1Id, _that.user2Id, _that.isActive,
            _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _MatchEntity implements MatchEntity {
  const _MatchEntity(
      {required this.id,
      required this.user1Id,
      required this.user2Id,
      required this.isActive,
      @IsoDateTimeOrNullConverter() this.createdAt,
      @IsoDateTimeOrNullConverter() this.updatedAt});
  factory _MatchEntity.fromJson(Map<String, dynamic> json) =>
      _$MatchEntityFromJson(json);

  @override
  final String id;
  @override
  final String user1Id;
  @override
  final String user2Id;
  @override
  final bool isActive;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? createdAt;
  @override
  @IsoDateTimeOrNullConverter()
  final DateTime? updatedAt;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MatchEntityCopyWith<_MatchEntity> get copyWith =>
      __$MatchEntityCopyWithImpl<_MatchEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MatchEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user1Id, user1Id) || other.user1Id == user1Id) &&
            (identical(other.user2Id, user2Id) || other.user2Id == user2Id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, user1Id, user2Id, isActive, createdAt, updatedAt);

  @override
  String toString() {
    return 'MatchEntity(id: $id, user1Id: $user1Id, user2Id: $user2Id, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$MatchEntityCopyWith<$Res>
    implements $MatchEntityCopyWith<$Res> {
  factory _$MatchEntityCopyWith(
          _MatchEntity value, $Res Function(_MatchEntity) _then) =
      __$MatchEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String user1Id,
      String user2Id,
      bool isActive,
      @IsoDateTimeOrNullConverter() DateTime? createdAt,
      @IsoDateTimeOrNullConverter() DateTime? updatedAt});
}

/// @nodoc
class __$MatchEntityCopyWithImpl<$Res> implements _$MatchEntityCopyWith<$Res> {
  __$MatchEntityCopyWithImpl(this._self, this._then);

  final _MatchEntity _self;
  final $Res Function(_MatchEntity) _then;

  /// Create a copy of MatchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_MatchEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user1Id: null == user1Id
          ? _self.user1Id
          : user1Id // ignore: cast_nullable_to_non_nullable
              as String,
      user2Id: null == user2Id
          ? _self.user2Id
          : user2Id // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
