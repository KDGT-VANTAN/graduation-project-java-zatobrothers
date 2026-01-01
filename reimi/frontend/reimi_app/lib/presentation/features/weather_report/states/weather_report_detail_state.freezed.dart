// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportDetailState {
  WeatherReportModel? get weatherReport;

  /// Create a copy of WeatherReportDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportDetailStateCopyWith<WeatherReportDetailState> get copyWith =>
      _$WeatherReportDetailStateCopyWithImpl<WeatherReportDetailState>(
          this as WeatherReportDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportDetailState &&
            (identical(other.weatherReport, weatherReport) ||
                other.weatherReport == weatherReport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherReport);

  @override
  String toString() {
    return 'WeatherReportDetailState(weatherReport: $weatherReport)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportDetailStateCopyWith<$Res> {
  factory $WeatherReportDetailStateCopyWith(WeatherReportDetailState value,
          $Res Function(WeatherReportDetailState) _then) =
      _$WeatherReportDetailStateCopyWithImpl;
  @useResult
  $Res call({WeatherReportModel? weatherReport});

  $WeatherReportModelCopyWith<$Res>? get weatherReport;
}

/// @nodoc
class _$WeatherReportDetailStateCopyWithImpl<$Res>
    implements $WeatherReportDetailStateCopyWith<$Res> {
  _$WeatherReportDetailStateCopyWithImpl(this._self, this._then);

  final WeatherReportDetailState _self;
  final $Res Function(WeatherReportDetailState) _then;

  /// Create a copy of WeatherReportDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherReport = freezed,
  }) {
    return _then(_self.copyWith(
      weatherReport: freezed == weatherReport
          ? _self.weatherReport
          : weatherReport // ignore: cast_nullable_to_non_nullable
              as WeatherReportModel?,
    ));
  }

  /// Create a copy of WeatherReportDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherReportModelCopyWith<$Res>? get weatherReport {
    if (_self.weatherReport == null) {
      return null;
    }

    return $WeatherReportModelCopyWith<$Res>(_self.weatherReport!, (value) {
      return _then(_self.copyWith(weatherReport: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WeatherReportDetailState].
extension WeatherReportDetailStatePatterns on WeatherReportDetailState {
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
    TResult Function(_WeatherReportDetailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailState() when $default != null:
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
    TResult Function(_WeatherReportDetailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailState():
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
    TResult? Function(_WeatherReportDetailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailState() when $default != null:
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
    TResult Function(WeatherReportModel? weatherReport)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailState() when $default != null:
        return $default(_that.weatherReport);
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
    TResult Function(WeatherReportModel? weatherReport) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailState():
        return $default(_that.weatherReport);
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
    TResult? Function(WeatherReportModel? weatherReport)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportDetailState() when $default != null:
        return $default(_that.weatherReport);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherReportDetailState implements WeatherReportDetailState {
  const _WeatherReportDetailState({this.weatherReport});

  @override
  final WeatherReportModel? weatherReport;

  /// Create a copy of WeatherReportDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportDetailStateCopyWith<_WeatherReportDetailState> get copyWith =>
      __$WeatherReportDetailStateCopyWithImpl<_WeatherReportDetailState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportDetailState &&
            (identical(other.weatherReport, weatherReport) ||
                other.weatherReport == weatherReport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherReport);

  @override
  String toString() {
    return 'WeatherReportDetailState(weatherReport: $weatherReport)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportDetailStateCopyWith<$Res>
    implements $WeatherReportDetailStateCopyWith<$Res> {
  factory _$WeatherReportDetailStateCopyWith(_WeatherReportDetailState value,
          $Res Function(_WeatherReportDetailState) _then) =
      __$WeatherReportDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call({WeatherReportModel? weatherReport});

  @override
  $WeatherReportModelCopyWith<$Res>? get weatherReport;
}

/// @nodoc
class __$WeatherReportDetailStateCopyWithImpl<$Res>
    implements _$WeatherReportDetailStateCopyWith<$Res> {
  __$WeatherReportDetailStateCopyWithImpl(this._self, this._then);

  final _WeatherReportDetailState _self;
  final $Res Function(_WeatherReportDetailState) _then;

  /// Create a copy of WeatherReportDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weatherReport = freezed,
  }) {
    return _then(_WeatherReportDetailState(
      weatherReport: freezed == weatherReport
          ? _self.weatherReport
          : weatherReport // ignore: cast_nullable_to_non_nullable
              as WeatherReportModel?,
    ));
  }

  /// Create a copy of WeatherReportDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherReportModelCopyWith<$Res>? get weatherReport {
    if (_self.weatherReport == null) {
      return null;
    }

    return $WeatherReportModelCopyWith<$Res>(_self.weatherReport!, (value) {
      return _then(_self.copyWith(weatherReport: value));
    });
  }
}

// dart format on
