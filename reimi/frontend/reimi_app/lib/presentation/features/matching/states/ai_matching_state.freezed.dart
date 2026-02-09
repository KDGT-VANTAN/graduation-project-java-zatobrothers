// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_matching_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIMatchingState {
  AIMatchingUserReadModel? get user;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of AIMatchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AIMatchingStateCopyWith<AIMatchingState> get copyWith =>
      _$AIMatchingStateCopyWithImpl<AIMatchingState>(
          this as AIMatchingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AIMatchingState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, errorMessage);

  @override
  String toString() {
    return 'AIMatchingState(user: $user, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $AIMatchingStateCopyWith<$Res> {
  factory $AIMatchingStateCopyWith(
          AIMatchingState value, $Res Function(AIMatchingState) _then) =
      _$AIMatchingStateCopyWithImpl;
  @useResult
  $Res call(
      {AIMatchingUserReadModel? user, bool isLoading, String? errorMessage});

  $AIMatchingUserReadModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AIMatchingStateCopyWithImpl<$Res>
    implements $AIMatchingStateCopyWith<$Res> {
  _$AIMatchingStateCopyWithImpl(this._self, this._then);

  final AIMatchingState _self;
  final $Res Function(AIMatchingState) _then;

  /// Create a copy of AIMatchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AIMatchingUserReadModel?,
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

  /// Create a copy of AIMatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AIMatchingUserReadModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $AIMatchingUserReadModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AIMatchingState].
extension AIMatchingStatePatterns on AIMatchingState {
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
    TResult Function(_AIMatchingState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AIMatchingState() when $default != null:
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
    TResult Function(_AIMatchingState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingState():
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
    TResult? Function(_AIMatchingState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingState() when $default != null:
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
    TResult Function(AIMatchingUserReadModel? user, bool isLoading,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AIMatchingState() when $default != null:
        return $default(_that.user, _that.isLoading, _that.errorMessage);
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
            AIMatchingUserReadModel? user, bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingState():
        return $default(_that.user, _that.isLoading, _that.errorMessage);
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
    TResult? Function(AIMatchingUserReadModel? user, bool isLoading,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AIMatchingState() when $default != null:
        return $default(_that.user, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AIMatchingState implements AIMatchingState {
  const _AIMatchingState(
      {this.user, this.isLoading = false, this.errorMessage});

  @override
  final AIMatchingUserReadModel? user;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of AIMatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AIMatchingStateCopyWith<_AIMatchingState> get copyWith =>
      __$AIMatchingStateCopyWithImpl<_AIMatchingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AIMatchingState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isLoading, errorMessage);

  @override
  String toString() {
    return 'AIMatchingState(user: $user, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$AIMatchingStateCopyWith<$Res>
    implements $AIMatchingStateCopyWith<$Res> {
  factory _$AIMatchingStateCopyWith(
          _AIMatchingState value, $Res Function(_AIMatchingState) _then) =
      __$AIMatchingStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AIMatchingUserReadModel? user, bool isLoading, String? errorMessage});

  @override
  $AIMatchingUserReadModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$AIMatchingStateCopyWithImpl<$Res>
    implements _$AIMatchingStateCopyWith<$Res> {
  __$AIMatchingStateCopyWithImpl(this._self, this._then);

  final _AIMatchingState _self;
  final $Res Function(_AIMatchingState) _then;

  /// Create a copy of AIMatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_AIMatchingState(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AIMatchingUserReadModel?,
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

  /// Create a copy of AIMatchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AIMatchingUserReadModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $AIMatchingUserReadModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
