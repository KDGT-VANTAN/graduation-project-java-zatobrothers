// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_out_conditions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoOutConditionsState {
  DateTime? get goOutDate;
  String? get goOutPlace;
  GoOutConditionsStatus get status;
  String? get errorMessage;
  bool get isChanged;

  /// Create a copy of GoOutConditionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoOutConditionsStateCopyWith<GoOutConditionsState> get copyWith =>
      _$GoOutConditionsStateCopyWithImpl<GoOutConditionsState>(
          this as GoOutConditionsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoOutConditionsState &&
            (identical(other.goOutDate, goOutDate) ||
                other.goOutDate == goOutDate) &&
            (identical(other.goOutPlace, goOutPlace) ||
                other.goOutPlace == goOutPlace) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, goOutDate, goOutPlace, status, errorMessage, isChanged);

  @override
  String toString() {
    return 'GoOutConditionsState(goOutDate: $goOutDate, goOutPlace: $goOutPlace, status: $status, errorMessage: $errorMessage, isChanged: $isChanged)';
  }
}

/// @nodoc
abstract mixin class $GoOutConditionsStateCopyWith<$Res> {
  factory $GoOutConditionsStateCopyWith(GoOutConditionsState value,
          $Res Function(GoOutConditionsState) _then) =
      _$GoOutConditionsStateCopyWithImpl;
  @useResult
  $Res call(
      {DateTime? goOutDate,
      String? goOutPlace,
      GoOutConditionsStatus status,
      String? errorMessage,
      bool isChanged});
}

/// @nodoc
class _$GoOutConditionsStateCopyWithImpl<$Res>
    implements $GoOutConditionsStateCopyWith<$Res> {
  _$GoOutConditionsStateCopyWithImpl(this._self, this._then);

  final GoOutConditionsState _self;
  final $Res Function(GoOutConditionsState) _then;

  /// Create a copy of GoOutConditionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goOutDate = freezed,
    Object? goOutPlace = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? isChanged = null,
  }) {
    return _then(_self.copyWith(
      goOutDate: freezed == goOutDate
          ? _self.goOutDate
          : goOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      goOutPlace: freezed == goOutPlace
          ? _self.goOutPlace
          : goOutPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoOutConditionsStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [GoOutConditionsState].
extension GoOutConditionsStatePatterns on GoOutConditionsState {
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
    TResult Function(_GoOutConditionsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoOutConditionsState() when $default != null:
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
    TResult Function(_GoOutConditionsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutConditionsState():
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
    TResult? Function(_GoOutConditionsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutConditionsState() when $default != null:
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
    TResult Function(DateTime? goOutDate, String? goOutPlace,
            GoOutConditionsStatus status, String? errorMessage, bool isChanged)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoOutConditionsState() when $default != null:
        return $default(_that.goOutDate, _that.goOutPlace, _that.status,
            _that.errorMessage, _that.isChanged);
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
    TResult Function(DateTime? goOutDate, String? goOutPlace,
            GoOutConditionsStatus status, String? errorMessage, bool isChanged)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutConditionsState():
        return $default(_that.goOutDate, _that.goOutPlace, _that.status,
            _that.errorMessage, _that.isChanged);
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
    TResult? Function(DateTime? goOutDate, String? goOutPlace,
            GoOutConditionsStatus status, String? errorMessage, bool isChanged)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutConditionsState() when $default != null:
        return $default(_that.goOutDate, _that.goOutPlace, _that.status,
            _that.errorMessage, _that.isChanged);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GoOutConditionsState extends GoOutConditionsState {
  const _GoOutConditionsState(
      {this.goOutDate,
      this.goOutPlace,
      this.status = GoOutConditionsStatus.idle,
      this.errorMessage,
      this.isChanged = false})
      : super._();

  @override
  final DateTime? goOutDate;
  @override
  final String? goOutPlace;
  @override
  @JsonKey()
  final GoOutConditionsStatus status;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isChanged;

  /// Create a copy of GoOutConditionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoOutConditionsStateCopyWith<_GoOutConditionsState> get copyWith =>
      __$GoOutConditionsStateCopyWithImpl<_GoOutConditionsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoOutConditionsState &&
            (identical(other.goOutDate, goOutDate) ||
                other.goOutDate == goOutDate) &&
            (identical(other.goOutPlace, goOutPlace) ||
                other.goOutPlace == goOutPlace) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, goOutDate, goOutPlace, status, errorMessage, isChanged);

  @override
  String toString() {
    return 'GoOutConditionsState(goOutDate: $goOutDate, goOutPlace: $goOutPlace, status: $status, errorMessage: $errorMessage, isChanged: $isChanged)';
  }
}

/// @nodoc
abstract mixin class _$GoOutConditionsStateCopyWith<$Res>
    implements $GoOutConditionsStateCopyWith<$Res> {
  factory _$GoOutConditionsStateCopyWith(_GoOutConditionsState value,
          $Res Function(_GoOutConditionsState) _then) =
      __$GoOutConditionsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime? goOutDate,
      String? goOutPlace,
      GoOutConditionsStatus status,
      String? errorMessage,
      bool isChanged});
}

/// @nodoc
class __$GoOutConditionsStateCopyWithImpl<$Res>
    implements _$GoOutConditionsStateCopyWith<$Res> {
  __$GoOutConditionsStateCopyWithImpl(this._self, this._then);

  final _GoOutConditionsState _self;
  final $Res Function(_GoOutConditionsState) _then;

  /// Create a copy of GoOutConditionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? goOutDate = freezed,
    Object? goOutPlace = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? isChanged = null,
  }) {
    return _then(_GoOutConditionsState(
      goOutDate: freezed == goOutDate
          ? _self.goOutDate
          : goOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      goOutPlace: freezed == goOutPlace
          ? _self.goOutPlace
          : goOutPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoOutConditionsStatus,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
