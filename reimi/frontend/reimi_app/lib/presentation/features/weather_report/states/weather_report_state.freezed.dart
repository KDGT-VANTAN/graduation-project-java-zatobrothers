// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportState {
  List<WeatherReportSimpleModel> get weatherReports;

  /// Create a copy of WeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportStateCopyWith<WeatherReportState> get copyWith =>
      _$WeatherReportStateCopyWithImpl<WeatherReportState>(
          this as WeatherReportState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportState &&
            const DeepCollectionEquality()
                .equals(other.weatherReports, weatherReports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(weatherReports));

  @override
  String toString() {
    return 'WeatherReportState(weatherReports: $weatherReports)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportStateCopyWith<$Res> {
  factory $WeatherReportStateCopyWith(
          WeatherReportState value, $Res Function(WeatherReportState) _then) =
      _$WeatherReportStateCopyWithImpl;
  @useResult
  $Res call({List<WeatherReportSimpleModel> weatherReports});
}

/// @nodoc
class _$WeatherReportStateCopyWithImpl<$Res>
    implements $WeatherReportStateCopyWith<$Res> {
  _$WeatherReportStateCopyWithImpl(this._self, this._then);

  final WeatherReportState _self;
  final $Res Function(WeatherReportState) _then;

  /// Create a copy of WeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherReports = null,
  }) {
    return _then(_self.copyWith(
      weatherReports: null == weatherReports
          ? _self.weatherReports
          : weatherReports // ignore: cast_nullable_to_non_nullable
              as List<WeatherReportSimpleModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherReportState].
extension WeatherReportStatePatterns on WeatherReportState {
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
    TResult Function(_WeatherReportState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportState() when $default != null:
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
    TResult Function(_WeatherReportState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportState():
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
    TResult? Function(_WeatherReportState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportState() when $default != null:
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
    TResult Function(List<WeatherReportSimpleModel> weatherReports)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportState() when $default != null:
        return $default(_that.weatherReports);
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
    TResult Function(List<WeatherReportSimpleModel> weatherReports) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportState():
        return $default(_that.weatherReports);
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
    TResult? Function(List<WeatherReportSimpleModel> weatherReports)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportState() when $default != null:
        return $default(_that.weatherReports);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherReportState implements WeatherReportState {
  const _WeatherReportState(
      {final List<WeatherReportSimpleModel> weatherReports =
          const <WeatherReportSimpleModel>[]})
      : _weatherReports = weatherReports;

  final List<WeatherReportSimpleModel> _weatherReports;
  @override
  @JsonKey()
  List<WeatherReportSimpleModel> get weatherReports {
    if (_weatherReports is EqualUnmodifiableListView) return _weatherReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherReports);
  }

  /// Create a copy of WeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportStateCopyWith<_WeatherReportState> get copyWith =>
      __$WeatherReportStateCopyWithImpl<_WeatherReportState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportState &&
            const DeepCollectionEquality()
                .equals(other._weatherReports, _weatherReports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weatherReports));

  @override
  String toString() {
    return 'WeatherReportState(weatherReports: $weatherReports)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportStateCopyWith<$Res>
    implements $WeatherReportStateCopyWith<$Res> {
  factory _$WeatherReportStateCopyWith(
          _WeatherReportState value, $Res Function(_WeatherReportState) _then) =
      __$WeatherReportStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<WeatherReportSimpleModel> weatherReports});
}

/// @nodoc
class __$WeatherReportStateCopyWithImpl<$Res>
    implements _$WeatherReportStateCopyWith<$Res> {
  __$WeatherReportStateCopyWithImpl(this._self, this._then);

  final _WeatherReportState _self;
  final $Res Function(_WeatherReportState) _then;

  /// Create a copy of WeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weatherReports = null,
  }) {
    return _then(_WeatherReportState(
      weatherReports: null == weatherReports
          ? _self._weatherReports
          : weatherReports // ignore: cast_nullable_to_non_nullable
              as List<WeatherReportSimpleModel>,
    ));
  }
}

// dart format on
