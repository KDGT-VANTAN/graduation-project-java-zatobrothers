// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppUserState()';
  }
}

/// @nodoc
class $AppUserStateCopyWith<$Res> {
  $AppUserStateCopyWith(AppUserState _, $Res Function(AppUserState) __);
}

/// Adds pattern-matching-related methods to [AppUserState].
extension AppUserStatePatterns on AppUserState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExistingUser value)? existingUser,
    TResult Function(_NewUser value)? newUser,
    TResult Function(_CurrentUserError value)? currentUserError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExistingUser() when existingUser != null:
        return existingUser(_that);
      case _NewUser() when newUser != null:
        return newUser(_that);
      case _CurrentUserError() when currentUserError != null:
        return currentUserError(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(_ExistingUser value) existingUser,
    required TResult Function(_NewUser value) newUser,
    required TResult Function(_CurrentUserError value) currentUserError,
  }) {
    final _that = this;
    switch (_that) {
      case _ExistingUser():
        return existingUser(_that);
      case _NewUser():
        return newUser(_that);
      case _CurrentUserError():
        return currentUserError(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExistingUser value)? existingUser,
    TResult? Function(_NewUser value)? newUser,
    TResult? Function(_CurrentUserError value)? currentUserError,
  }) {
    final _that = this;
    switch (_that) {
      case _ExistingUser() when existingUser != null:
        return existingUser(_that);
      case _NewUser() when newUser != null:
        return newUser(_that);
      case _CurrentUserError() when currentUserError != null:
        return currentUserError(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUserReadModel user)? existingUser,
    TResult Function()? newUser,
    TResult Function(String message)? currentUserError,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExistingUser() when existingUser != null:
        return existingUser(_that.user);
      case _NewUser() when newUser != null:
        return newUser();
      case _CurrentUserError() when currentUserError != null:
        return currentUserError(_that.message);
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
  TResult when<TResult extends Object?>({
    required TResult Function(AppUserReadModel user) existingUser,
    required TResult Function() newUser,
    required TResult Function(String message) currentUserError,
  }) {
    final _that = this;
    switch (_that) {
      case _ExistingUser():
        return existingUser(_that.user);
      case _NewUser():
        return newUser();
      case _CurrentUserError():
        return currentUserError(_that.message);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUserReadModel user)? existingUser,
    TResult? Function()? newUser,
    TResult? Function(String message)? currentUserError,
  }) {
    final _that = this;
    switch (_that) {
      case _ExistingUser() when existingUser != null:
        return existingUser(_that.user);
      case _NewUser() when newUser != null:
        return newUser();
      case _CurrentUserError() when currentUserError != null:
        return currentUserError(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ExistingUser implements AppUserState {
  const _ExistingUser(this.user);

  final AppUserReadModel user;

  /// Create a copy of AppUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExistingUserCopyWith<_ExistingUser> get copyWith =>
      __$ExistingUserCopyWithImpl<_ExistingUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExistingUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'AppUserState.existingUser(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$ExistingUserCopyWith<$Res>
    implements $AppUserStateCopyWith<$Res> {
  factory _$ExistingUserCopyWith(
          _ExistingUser value, $Res Function(_ExistingUser) _then) =
      __$ExistingUserCopyWithImpl;
  @useResult
  $Res call({AppUserReadModel user});

  $AppUserReadModelCopyWith<$Res> get user;
}

/// @nodoc
class __$ExistingUserCopyWithImpl<$Res>
    implements _$ExistingUserCopyWith<$Res> {
  __$ExistingUserCopyWithImpl(this._self, this._then);

  final _ExistingUser _self;
  final $Res Function(_ExistingUser) _then;

  /// Create a copy of AppUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(_ExistingUser(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUserReadModel,
    ));
  }

  /// Create a copy of AppUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserReadModelCopyWith<$Res> get user {
    return $AppUserReadModelCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class _NewUser implements AppUserState {
  const _NewUser();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NewUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppUserState.newUser()';
  }
}

/// @nodoc

class _CurrentUserError implements AppUserState {
  const _CurrentUserError(this.message);

  final String message;

  /// Create a copy of AppUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentUserErrorCopyWith<_CurrentUserError> get copyWith =>
      __$CurrentUserErrorCopyWithImpl<_CurrentUserError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentUserError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AppUserState.currentUserError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CurrentUserErrorCopyWith<$Res>
    implements $AppUserStateCopyWith<$Res> {
  factory _$CurrentUserErrorCopyWith(
          _CurrentUserError value, $Res Function(_CurrentUserError) _then) =
      __$CurrentUserErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$CurrentUserErrorCopyWithImpl<$Res>
    implements _$CurrentUserErrorCopyWith<$Res> {
  __$CurrentUserErrorCopyWithImpl(this._self, this._then);

  final _CurrentUserError _self;
  final $Res Function(_CurrentUserError) _then;

  /// Create a copy of AppUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_CurrentUserError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
