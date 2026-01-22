// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_weather_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyWeatherReportState {
  List<WeatherReportSimpleReadModel> get weatherReports;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of MyWeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyWeatherReportStateCopyWith<MyWeatherReportState> get copyWith =>
      _$MyWeatherReportStateCopyWithImpl<MyWeatherReportState>(
          this as MyWeatherReportState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyWeatherReportState &&
            const DeepCollectionEquality()
                .equals(other.weatherReports, weatherReports) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weatherReports),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'MyWeatherReportState(weatherReports: $weatherReports, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $MyWeatherReportStateCopyWith<$Res> {
  factory $MyWeatherReportStateCopyWith(MyWeatherReportState value,
          $Res Function(MyWeatherReportState) _then) =
      _$MyWeatherReportStateCopyWithImpl;
  @useResult
  $Res call(
      {List<WeatherReportSimpleReadModel> weatherReports,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$MyWeatherReportStateCopyWithImpl<$Res>
    implements $MyWeatherReportStateCopyWith<$Res> {
  _$MyWeatherReportStateCopyWithImpl(this._self, this._then);

  final MyWeatherReportState _self;
  final $Res Function(MyWeatherReportState) _then;

  /// Create a copy of MyWeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherReports = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      weatherReports: null == weatherReports
          ? _self.weatherReports
          : weatherReports // ignore: cast_nullable_to_non_nullable
              as List<WeatherReportSimpleReadModel>,
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
}

/// Adds pattern-matching-related methods to [MyWeatherReportState].
extension MyWeatherReportStatePatterns on MyWeatherReportState {
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
    TResult Function(_MyWeatherReportState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyWeatherReportState() when $default != null:
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
    TResult Function(_MyWeatherReportState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyWeatherReportState():
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
    TResult? Function(_MyWeatherReportState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyWeatherReportState() when $default != null:
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
    TResult Function(List<WeatherReportSimpleReadModel> weatherReports,
            bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyWeatherReportState() when $default != null:
        return $default(
            _that.weatherReports, _that.isLoading, _that.errorMessage);
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
    TResult Function(List<WeatherReportSimpleReadModel> weatherReports,
            bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyWeatherReportState():
        return $default(
            _that.weatherReports, _that.isLoading, _that.errorMessage);
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
    TResult? Function(List<WeatherReportSimpleReadModel> weatherReports,
            bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyWeatherReportState() when $default != null:
        return $default(
            _that.weatherReports, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MyWeatherReportState implements MyWeatherReportState {
  const _MyWeatherReportState(
      {final List<WeatherReportSimpleReadModel> weatherReports =
          const <WeatherReportSimpleReadModel>[],
      this.isLoading = false,
      this.errorMessage})
      : _weatherReports = weatherReports;

  final List<WeatherReportSimpleReadModel> _weatherReports;
  @override
  @JsonKey()
  List<WeatherReportSimpleReadModel> get weatherReports {
    if (_weatherReports is EqualUnmodifiableListView) return _weatherReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherReports);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of MyWeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyWeatherReportStateCopyWith<_MyWeatherReportState> get copyWith =>
      __$MyWeatherReportStateCopyWithImpl<_MyWeatherReportState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyWeatherReportState &&
            const DeepCollectionEquality()
                .equals(other._weatherReports, _weatherReports) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weatherReports),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'MyWeatherReportState(weatherReports: $weatherReports, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$MyWeatherReportStateCopyWith<$Res>
    implements $MyWeatherReportStateCopyWith<$Res> {
  factory _$MyWeatherReportStateCopyWith(_MyWeatherReportState value,
          $Res Function(_MyWeatherReportState) _then) =
      __$MyWeatherReportStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<WeatherReportSimpleReadModel> weatherReports,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$MyWeatherReportStateCopyWithImpl<$Res>
    implements _$MyWeatherReportStateCopyWith<$Res> {
  __$MyWeatherReportStateCopyWithImpl(this._self, this._then);

  final _MyWeatherReportState _self;
  final $Res Function(_MyWeatherReportState) _then;

  /// Create a copy of MyWeatherReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weatherReports = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_MyWeatherReportState(
      weatherReports: null == weatherReports
          ? _self._weatherReports
          : weatherReports // ignore: cast_nullable_to_non_nullable
              as List<WeatherReportSimpleReadModel>,
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
}

// dart format on
