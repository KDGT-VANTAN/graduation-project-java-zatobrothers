// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthFailure {
  String get message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      _$AuthFailureCopyWithImpl<AuthFailure>(this as AuthFailure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthFailure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) _then) =
      _$AuthFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._self, this._then);

  final AuthFailure _self;
  final $Res Function(AuthFailure) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthFailure].
extension AuthFailurePatterns on AuthFailure {
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
    TResult Function(_CancelledByUser value)? cancelledByUser,
    TResult Function(_FirebaseAuthError value)? firebaseAuthError,
    TResult Function(_Network value)? network,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser(_that);
      case _FirebaseAuthError() when firebaseAuthError != null:
        return firebaseAuthError(_that);
      case _Network() when network != null:
        return network(_that);
      case _Unknown() when unknown != null:
        return unknown(_that);
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
    required TResult Function(_CancelledByUser value) cancelledByUser,
    required TResult Function(_FirebaseAuthError value) firebaseAuthError,
    required TResult Function(_Network value) network,
    required TResult Function(_Unknown value) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser():
        return cancelledByUser(_that);
      case _FirebaseAuthError():
        return firebaseAuthError(_that);
      case _Network():
        return network(_that);
      case _Unknown():
        return unknown(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CancelledByUser value)? cancelledByUser,
    TResult? Function(_FirebaseAuthError value)? firebaseAuthError,
    TResult? Function(_Network value)? network,
    TResult? Function(_Unknown value)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser(_that);
      case _FirebaseAuthError() when firebaseAuthError != null:
        return firebaseAuthError(_that);
      case _Network() when network != null:
        return network(_that);
      case _Unknown() when unknown != null:
        return unknown(_that);
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
    TResult Function(String message)? cancelledByUser,
    TResult Function(String message)? firebaseAuthError,
    TResult Function(String message)? network,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser(_that.message);
      case _FirebaseAuthError() when firebaseAuthError != null:
        return firebaseAuthError(_that.message);
      case _Network() when network != null:
        return network(_that.message);
      case _Unknown() when unknown != null:
        return unknown(_that.message);
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
    required TResult Function(String message) cancelledByUser,
    required TResult Function(String message) firebaseAuthError,
    required TResult Function(String message) network,
    required TResult Function(String message) unknown,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser():
        return cancelledByUser(_that.message);
      case _FirebaseAuthError():
        return firebaseAuthError(_that.message);
      case _Network():
        return network(_that.message);
      case _Unknown():
        return unknown(_that.message);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? cancelledByUser,
    TResult? Function(String message)? firebaseAuthError,
    TResult? Function(String message)? network,
    TResult? Function(String message)? unknown,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser(_that.message);
      case _FirebaseAuthError() when firebaseAuthError != null:
        return firebaseAuthError(_that.message);
      case _Network() when network != null:
        return network(_that.message);
      case _Unknown() when unknown != null:
        return unknown(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CancelledByUser extends AuthFailure {
  const _CancelledByUser({this.message = '認証がキャンセルされました'}) : super._();

  @override
  @JsonKey()
  final String message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CancelledByUserCopyWith<_CancelledByUser> get copyWith =>
      __$CancelledByUserCopyWithImpl<_CancelledByUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CancelledByUser &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CancelledByUserCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$CancelledByUserCopyWith(
          _CancelledByUser value, $Res Function(_CancelledByUser) _then) =
      __$CancelledByUserCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$CancelledByUserCopyWithImpl<$Res>
    implements _$CancelledByUserCopyWith<$Res> {
  __$CancelledByUserCopyWithImpl(this._self, this._then);

  final _CancelledByUser _self;
  final $Res Function(_CancelledByUser) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_CancelledByUser(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _FirebaseAuthError extends AuthFailure {
  const _FirebaseAuthError({required this.message}) : super._();

  @override
  final String message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FirebaseAuthErrorCopyWith<_FirebaseAuthError> get copyWith =>
      __$FirebaseAuthErrorCopyWithImpl<_FirebaseAuthError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseAuthError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthFailure.firebaseAuthError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FirebaseAuthErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$FirebaseAuthErrorCopyWith(
          _FirebaseAuthError value, $Res Function(_FirebaseAuthError) _then) =
      __$FirebaseAuthErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$FirebaseAuthErrorCopyWithImpl<$Res>
    implements _$FirebaseAuthErrorCopyWith<$Res> {
  __$FirebaseAuthErrorCopyWithImpl(this._self, this._then);

  final _FirebaseAuthError _self;
  final $Res Function(_FirebaseAuthError) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_FirebaseAuthError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Network extends AuthFailure {
  const _Network({this.message = 'ネットワークエラーが発生しました'}) : super._();

  @override
  @JsonKey()
  final String message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkCopyWith<_Network> get copyWith =>
      __$NetworkCopyWithImpl<_Network>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Network &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthFailure.network(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NetworkCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$NetworkCopyWith(_Network value, $Res Function(_Network) _then) =
      __$NetworkCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$NetworkCopyWithImpl<$Res> implements _$NetworkCopyWith<$Res> {
  __$NetworkCopyWithImpl(this._self, this._then);

  final _Network _self;
  final $Res Function(_Network) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Network(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Unknown extends AuthFailure {
  const _Unknown({this.message = '予期しないエラーが発生しました'}) : super._();

  @override
  @JsonKey()
  final String message;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnknownCopyWith<_Unknown> get copyWith =>
      __$UnknownCopyWithImpl<_Unknown>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unknown &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthFailure.unknown(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UnknownCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) _then) =
      __$UnknownCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(this._self, this._then);

  final _Unknown _self;
  final $Res Function(_Unknown) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Unknown(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
