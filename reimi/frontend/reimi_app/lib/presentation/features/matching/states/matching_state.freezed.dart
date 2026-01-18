// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matching_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchingState {
  MatchingUsersReadModel? get users;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of MatchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MatchingStateCopyWith<MatchingState> get copyWith =>
      _$MatchingStateCopyWithImpl<MatchingState>(
          this as MatchingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MatchingState &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users, isLoading, errorMessage);

  @override
  String toString() {
    return 'MatchingState(users: $users, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $MatchingStateCopyWith<$Res> {
  factory $MatchingStateCopyWith(
          MatchingState value, $Res Function(MatchingState) _then) =
      _$MatchingStateCopyWithImpl;
  @useResult
  $Res call(
      {MatchingUsersReadModel? users, bool isLoading, String? errorMessage});

  $MatchingUsersReadModelCopyWith<$Res>? get users;
}

/// @nodoc
class _$MatchingStateCopyWithImpl<$Res>
    implements $MatchingStateCopyWith<$Res> {
  _$MatchingStateCopyWithImpl(this._self, this._then);

  final MatchingState _self;
  final $Res Function(MatchingState) _then;

  /// Create a copy of MatchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as MatchingUsersReadModel?,
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

  /// Create a copy of MatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchingUsersReadModelCopyWith<$Res>? get users {
    if (_self.users == null) {
      return null;
    }

    return $MatchingUsersReadModelCopyWith<$Res>(_self.users!, (value) {
      return _then(_self.copyWith(users: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MatchingState].
extension MatchingStatePatterns on MatchingState {
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
    TResult Function(_MatchingState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchingState() when $default != null:
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
    TResult Function(_MatchingState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingState():
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
    TResult? Function(_MatchingState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingState() when $default != null:
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
    TResult Function(MatchingUsersReadModel? users, bool isLoading,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchingState() when $default != null:
        return $default(_that.users, _that.isLoading, _that.errorMessage);
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
            MatchingUsersReadModel? users, bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingState():
        return $default(_that.users, _that.isLoading, _that.errorMessage);
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
    TResult? Function(MatchingUsersReadModel? users, bool isLoading,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingState() when $default != null:
        return $default(_that.users, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MatchingState implements MatchingState {
  const _MatchingState({this.users, this.isLoading = false, this.errorMessage});

  @override
  final MatchingUsersReadModel? users;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of MatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MatchingStateCopyWith<_MatchingState> get copyWith =>
      __$MatchingStateCopyWithImpl<_MatchingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchingState &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users, isLoading, errorMessage);

  @override
  String toString() {
    return 'MatchingState(users: $users, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$MatchingStateCopyWith<$Res>
    implements $MatchingStateCopyWith<$Res> {
  factory _$MatchingStateCopyWith(
          _MatchingState value, $Res Function(_MatchingState) _then) =
      __$MatchingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {MatchingUsersReadModel? users, bool isLoading, String? errorMessage});

  @override
  $MatchingUsersReadModelCopyWith<$Res>? get users;
}

/// @nodoc
class __$MatchingStateCopyWithImpl<$Res>
    implements _$MatchingStateCopyWith<$Res> {
  __$MatchingStateCopyWithImpl(this._self, this._then);

  final _MatchingState _self;
  final $Res Function(_MatchingState) _then;

  /// Create a copy of MatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_MatchingState(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as MatchingUsersReadModel?,
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

  /// Create a copy of MatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MatchingUsersReadModelCopyWith<$Res>? get users {
    if (_self.users == null) {
      return null;
    }

    return $MatchingUsersReadModelCopyWith<$Res>(_self.users!, (value) {
      return _then(_self.copyWith(users: value));
    });
  }
}

// dart format on
