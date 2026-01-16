// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikeState {
  List<LikeUserReadModel> get users;
  LikeSegment get segment;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikeStateCopyWith<LikeState> get copyWith =>
      _$LikeStateCopyWithImpl<LikeState>(this as LikeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeState &&
            const DeepCollectionEquality().equals(other.users, users) &&
            (identical(other.segment, segment) || other.segment == segment) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      segment,
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'LikeState(users: $users, segment: $segment, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $LikeStateCopyWith<$Res> {
  factory $LikeStateCopyWith(LikeState value, $Res Function(LikeState) _then) =
      _$LikeStateCopyWithImpl;
  @useResult
  $Res call(
      {List<LikeUserReadModel> users,
      LikeSegment segment,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$LikeStateCopyWithImpl<$Res> implements $LikeStateCopyWith<$Res> {
  _$LikeStateCopyWithImpl(this._self, this._then);

  final LikeState _self;
  final $Res Function(LikeState) _then;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? segment = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<LikeUserReadModel>,
      segment: null == segment
          ? _self.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as LikeSegment,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikeState].
extension LikeStatePatterns on LikeState {
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
    TResult Function(_LikeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeState() when $default != null:
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
    TResult Function(_LikeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeState():
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
    TResult? Function(_LikeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeState() when $default != null:
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
    TResult Function(List<LikeUserReadModel> users, LikeSegment segment,
            bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeState() when $default != null:
        return $default(
            _that.users, _that.segment, _that.isLoading, _that.errorMessage);
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
    TResult Function(List<LikeUserReadModel> users, LikeSegment segment,
            bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeState():
        return $default(
            _that.users, _that.segment, _that.isLoading, _that.errorMessage);
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
    TResult? Function(List<LikeUserReadModel> users, LikeSegment segment,
            bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeState() when $default != null:
        return $default(
            _that.users, _that.segment, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LikeState implements LikeState {
  const _LikeState(
      {final List<LikeUserReadModel> users = const <LikeUserReadModel>[],
      this.segment = LikeSegment.fromUser,
      this.isLoading = false,
      this.errorMessage})
      : _users = users;

  final List<LikeUserReadModel> _users;
  @override
  @JsonKey()
  List<LikeUserReadModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final LikeSegment segment;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikeStateCopyWith<_LikeState> get copyWith =>
      __$LikeStateCopyWithImpl<_LikeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.segment, segment) || other.segment == segment) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      segment,
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'LikeState(users: $users, segment: $segment, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$LikeStateCopyWith<$Res>
    implements $LikeStateCopyWith<$Res> {
  factory _$LikeStateCopyWith(
          _LikeState value, $Res Function(_LikeState) _then) =
      __$LikeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<LikeUserReadModel> users,
      LikeSegment segment,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$LikeStateCopyWithImpl<$Res> implements _$LikeStateCopyWith<$Res> {
  __$LikeStateCopyWithImpl(this._self, this._then);

  final _LikeState _self;
  final $Res Function(_LikeState) _then;

  /// Create a copy of LikeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
    Object? segment = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_LikeState(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<LikeUserReadModel>,
      segment: null == segment
          ? _self.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as LikeSegment,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
