// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_go_out_conditions_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingGoOutConditionsParams {
  DateTime get goOutDate;
  String get goOutPlace;

  /// Create a copy of SettingGoOutConditionsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingGoOutConditionsParamsCopyWith<SettingGoOutConditionsParams>
      get copyWith => _$SettingGoOutConditionsParamsCopyWithImpl<
              SettingGoOutConditionsParams>(
          this as SettingGoOutConditionsParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingGoOutConditionsParams &&
            (identical(other.goOutDate, goOutDate) ||
                other.goOutDate == goOutDate) &&
            (identical(other.goOutPlace, goOutPlace) ||
                other.goOutPlace == goOutPlace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goOutDate, goOutPlace);

  @override
  String toString() {
    return 'SettingGoOutConditionsParams(goOutDate: $goOutDate, goOutPlace: $goOutPlace)';
  }
}

/// @nodoc
abstract mixin class $SettingGoOutConditionsParamsCopyWith<$Res> {
  factory $SettingGoOutConditionsParamsCopyWith(
          SettingGoOutConditionsParams value,
          $Res Function(SettingGoOutConditionsParams) _then) =
      _$SettingGoOutConditionsParamsCopyWithImpl;
  @useResult
  $Res call({DateTime goOutDate, String goOutPlace});
}

/// @nodoc
class _$SettingGoOutConditionsParamsCopyWithImpl<$Res>
    implements $SettingGoOutConditionsParamsCopyWith<$Res> {
  _$SettingGoOutConditionsParamsCopyWithImpl(this._self, this._then);

  final SettingGoOutConditionsParams _self;
  final $Res Function(SettingGoOutConditionsParams) _then;

  /// Create a copy of SettingGoOutConditionsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goOutDate = null,
    Object? goOutPlace = null,
  }) {
    return _then(_self.copyWith(
      goOutDate: null == goOutDate
          ? _self.goOutDate
          : goOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goOutPlace: null == goOutPlace
          ? _self.goOutPlace
          : goOutPlace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SettingGoOutConditionsParams].
extension SettingGoOutConditionsParamsPatterns on SettingGoOutConditionsParams {
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
    TResult Function(_SettingGoOutConditionsParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingGoOutConditionsParams() when $default != null:
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
    TResult Function(_SettingGoOutConditionsParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingGoOutConditionsParams():
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
    TResult? Function(_SettingGoOutConditionsParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingGoOutConditionsParams() when $default != null:
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
    TResult Function(DateTime goOutDate, String goOutPlace)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SettingGoOutConditionsParams() when $default != null:
        return $default(_that.goOutDate, _that.goOutPlace);
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
    TResult Function(DateTime goOutDate, String goOutPlace) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingGoOutConditionsParams():
        return $default(_that.goOutDate, _that.goOutPlace);
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
    TResult? Function(DateTime goOutDate, String goOutPlace)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SettingGoOutConditionsParams() when $default != null:
        return $default(_that.goOutDate, _that.goOutPlace);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SettingGoOutConditionsParams implements SettingGoOutConditionsParams {
  const _SettingGoOutConditionsParams(
      {required this.goOutDate, required this.goOutPlace});

  @override
  final DateTime goOutDate;
  @override
  final String goOutPlace;

  /// Create a copy of SettingGoOutConditionsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingGoOutConditionsParamsCopyWith<_SettingGoOutConditionsParams>
      get copyWith => __$SettingGoOutConditionsParamsCopyWithImpl<
          _SettingGoOutConditionsParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingGoOutConditionsParams &&
            (identical(other.goOutDate, goOutDate) ||
                other.goOutDate == goOutDate) &&
            (identical(other.goOutPlace, goOutPlace) ||
                other.goOutPlace == goOutPlace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goOutDate, goOutPlace);

  @override
  String toString() {
    return 'SettingGoOutConditionsParams(goOutDate: $goOutDate, goOutPlace: $goOutPlace)';
  }
}

/// @nodoc
abstract mixin class _$SettingGoOutConditionsParamsCopyWith<$Res>
    implements $SettingGoOutConditionsParamsCopyWith<$Res> {
  factory _$SettingGoOutConditionsParamsCopyWith(
          _SettingGoOutConditionsParams value,
          $Res Function(_SettingGoOutConditionsParams) _then) =
      __$SettingGoOutConditionsParamsCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime goOutDate, String goOutPlace});
}

/// @nodoc
class __$SettingGoOutConditionsParamsCopyWithImpl<$Res>
    implements _$SettingGoOutConditionsParamsCopyWith<$Res> {
  __$SettingGoOutConditionsParamsCopyWithImpl(this._self, this._then);

  final _SettingGoOutConditionsParams _self;
  final $Res Function(_SettingGoOutConditionsParams) _then;

  /// Create a copy of SettingGoOutConditionsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? goOutDate = null,
    Object? goOutPlace = null,
  }) {
    return _then(_SettingGoOutConditionsParams(
      goOutDate: null == goOutDate
          ? _self.goOutDate
          : goOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goOutPlace: null == goOutPlace
          ? _self.goOutPlace
          : goOutPlace // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
