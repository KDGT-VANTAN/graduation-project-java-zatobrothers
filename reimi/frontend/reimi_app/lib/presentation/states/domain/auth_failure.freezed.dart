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
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthFailure()';
  }
}

/// @nodoc
class $AuthFailureCopyWith<$Res> {
  $AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
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
    TResult Function(_ServerError value)? serverError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser(_that);
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _EmailAlreadyInUse() when emailAlreadyInUse != null:
        return emailAlreadyInUse(_that);
      case _InvalidEmailAndPasswordCombination()
          when invalidEmailAndPasswordCombination != null:
        return invalidEmailAndPasswordCombination(_that);
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser():
        return cancelledByUser(_that);
      case _ServerError():
        return serverError(_that);
      case _EmailAlreadyInUse():
        return emailAlreadyInUse(_that);
      case _InvalidEmailAndPasswordCombination():
        return invalidEmailAndPasswordCombination(_that);
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
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser(_that);
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _EmailAlreadyInUse() when emailAlreadyInUse != null:
        return emailAlreadyInUse(_that);
      case _InvalidEmailAndPasswordCombination()
          when invalidEmailAndPasswordCombination != null:
        return invalidEmailAndPasswordCombination(_that);
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
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser();
      case _ServerError() when serverError != null:
        return serverError();
      case _EmailAlreadyInUse() when emailAlreadyInUse != null:
        return emailAlreadyInUse();
      case _InvalidEmailAndPasswordCombination()
          when invalidEmailAndPasswordCombination != null:
        return invalidEmailAndPasswordCombination();
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
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser():
        return cancelledByUser();
      case _ServerError():
        return serverError();
      case _EmailAlreadyInUse():
        return emailAlreadyInUse();
      case _InvalidEmailAndPasswordCombination():
        return invalidEmailAndPasswordCombination();
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
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    final _that = this;
    switch (_that) {
      case _CancelledByUser() when cancelledByUser != null:
        return cancelledByUser();
      case _ServerError() when serverError != null:
        return serverError();
      case _EmailAlreadyInUse() when emailAlreadyInUse != null:
        return emailAlreadyInUse();
      case _InvalidEmailAndPasswordCombination()
          when invalidEmailAndPasswordCombination != null:
        return invalidEmailAndPasswordCombination();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CancelledByUser implements AuthFailure {
  const _CancelledByUser();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }
}

/// @nodoc

class _ServerError implements AuthFailure {
  const _ServerError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }
}

/// @nodoc

class _EmailAlreadyInUse implements AuthFailure {
  const _EmailAlreadyInUse();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }
}

/// @nodoc

class _InvalidEmailAndPasswordCombination implements AuthFailure {
  const _InvalidEmailAndPasswordCombination();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }
}

// dart format on
