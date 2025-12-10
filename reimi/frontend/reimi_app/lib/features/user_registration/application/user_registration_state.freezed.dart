// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRegistrationState {
  UserRegistrationModel? get data;
  int get currentPage;
  int get totalPages;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRegistrationStateCopyWith<UserRegistrationState> get copyWith =>
      _$UserRegistrationStateCopyWithImpl<UserRegistrationState>(
          this as UserRegistrationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRegistrationState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, currentPage, totalPages);

  @override
  String toString() {
    return 'UserRegistrationState(data: $data, currentPage: $currentPage, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class $UserRegistrationStateCopyWith<$Res> {
  factory $UserRegistrationStateCopyWith(UserRegistrationState value,
          $Res Function(UserRegistrationState) _then) =
      _$UserRegistrationStateCopyWithImpl;
  @useResult
  $Res call({UserRegistrationModel? data, int currentPage, int totalPages});

  $UserRegistrationModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserRegistrationStateCopyWithImpl<$Res>
    implements $UserRegistrationStateCopyWith<$Res> {
  _$UserRegistrationStateCopyWithImpl(this._self, this._then);

  final UserRegistrationState _self;
  final $Res Function(UserRegistrationState) _then;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserRegistrationModel?,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $UserRegistrationModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserRegistrationState].
extension UserRegistrationStatePatterns on UserRegistrationState {
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
    TResult Function(_UserRegistrationState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
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
    TResult Function(_UserRegistrationState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState():
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
    TResult? Function(_UserRegistrationState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
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
            UserRegistrationModel? data, int currentPage, int totalPages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
        return $default(_that.data, _that.currentPage, _that.totalPages);
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
            UserRegistrationModel? data, int currentPage, int totalPages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState():
        return $default(_that.data, _that.currentPage, _that.totalPages);
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
            UserRegistrationModel? data, int currentPage, int totalPages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationState() when $default != null:
        return $default(_that.data, _that.currentPage, _that.totalPages);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserRegistrationState implements UserRegistrationState {
  const _UserRegistrationState(
      {this.data, this.currentPage = 1, this.totalPages = 6});

  @override
  final UserRegistrationModel? data;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int totalPages;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRegistrationStateCopyWith<_UserRegistrationState> get copyWith =>
      __$UserRegistrationStateCopyWithImpl<_UserRegistrationState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegistrationState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, currentPage, totalPages);

  @override
  String toString() {
    return 'UserRegistrationState(data: $data, currentPage: $currentPage, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class _$UserRegistrationStateCopyWith<$Res>
    implements $UserRegistrationStateCopyWith<$Res> {
  factory _$UserRegistrationStateCopyWith(_UserRegistrationState value,
          $Res Function(_UserRegistrationState) _then) =
      __$UserRegistrationStateCopyWithImpl;
  @override
  @useResult
  $Res call({UserRegistrationModel? data, int currentPage, int totalPages});

  @override
  $UserRegistrationModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$UserRegistrationStateCopyWithImpl<$Res>
    implements _$UserRegistrationStateCopyWith<$Res> {
  __$UserRegistrationStateCopyWithImpl(this._self, this._then);

  final _UserRegistrationState _self;
  final $Res Function(_UserRegistrationState) _then;

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? currentPage = null,
    Object? totalPages = null,
  }) {
    return _then(_UserRegistrationState(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserRegistrationModel?,
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of UserRegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $UserRegistrationModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
