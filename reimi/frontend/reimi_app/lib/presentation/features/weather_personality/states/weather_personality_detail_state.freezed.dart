// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityDetailState {
  WeatherPersonalityDetailReadModel? get weatherPersonality;
  bool get isLoading;
  String? get errorMessage;
  bool get isMyWeatherPersonality;

  /// Create a copy of WeatherPersonalityDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityDetailStateCopyWith<WeatherPersonalityDetailState>
      get copyWith => _$WeatherPersonalityDetailStateCopyWithImpl<
              WeatherPersonalityDetailState>(
          this as WeatherPersonalityDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityDetailState &&
            (identical(other.weatherPersonality, weatherPersonality) ||
                other.weatherPersonality == weatherPersonality) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isMyWeatherPersonality, isMyWeatherPersonality) ||
                other.isMyWeatherPersonality == isMyWeatherPersonality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherPersonality, isLoading,
      errorMessage, isMyWeatherPersonality);

  @override
  String toString() {
    return 'WeatherPersonalityDetailState(weatherPersonality: $weatherPersonality, isLoading: $isLoading, errorMessage: $errorMessage, isMyWeatherPersonality: $isMyWeatherPersonality)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityDetailStateCopyWith<$Res> {
  factory $WeatherPersonalityDetailStateCopyWith(
          WeatherPersonalityDetailState value,
          $Res Function(WeatherPersonalityDetailState) _then) =
      _$WeatherPersonalityDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityDetailReadModel? weatherPersonality,
      bool isLoading,
      String? errorMessage,
      bool isMyWeatherPersonality});

  $WeatherPersonalityDetailReadModelCopyWith<$Res>? get weatherPersonality;
}

/// @nodoc
class _$WeatherPersonalityDetailStateCopyWithImpl<$Res>
    implements $WeatherPersonalityDetailStateCopyWith<$Res> {
  _$WeatherPersonalityDetailStateCopyWithImpl(this._self, this._then);

  final WeatherPersonalityDetailState _self;
  final $Res Function(WeatherPersonalityDetailState) _then;

  /// Create a copy of WeatherPersonalityDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherPersonality = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? isMyWeatherPersonality = null,
  }) {
    return _then(_self.copyWith(
      weatherPersonality: freezed == weatherPersonality
          ? _self.weatherPersonality
          : weatherPersonality // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityDetailReadModel?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isMyWeatherPersonality: null == isMyWeatherPersonality
          ? _self.isMyWeatherPersonality
          : isMyWeatherPersonality // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of WeatherPersonalityDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPersonalityDetailReadModelCopyWith<$Res>? get weatherPersonality {
    if (_self.weatherPersonality == null) {
      return null;
    }

    return $WeatherPersonalityDetailReadModelCopyWith<$Res>(
        _self.weatherPersonality!, (value) {
      return _then(_self.copyWith(weatherPersonality: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityDetailState].
extension WeatherPersonalityDetailStatePatterns
    on WeatherPersonalityDetailState {
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
    TResult Function(_WeatherPersonalityDetailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailState() when $default != null:
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
    TResult Function(_WeatherPersonalityDetailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailState():
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
    TResult? Function(_WeatherPersonalityDetailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailState() when $default != null:
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
    TResult Function(WeatherPersonalityDetailReadModel? weatherPersonality,
            bool isLoading, String? errorMessage, bool isMyWeatherPersonality)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailState() when $default != null:
        return $default(_that.weatherPersonality, _that.isLoading,
            _that.errorMessage, _that.isMyWeatherPersonality);
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
    TResult Function(WeatherPersonalityDetailReadModel? weatherPersonality,
            bool isLoading, String? errorMessage, bool isMyWeatherPersonality)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailState():
        return $default(_that.weatherPersonality, _that.isLoading,
            _that.errorMessage, _that.isMyWeatherPersonality);
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
    TResult? Function(WeatherPersonalityDetailReadModel? weatherPersonality,
            bool isLoading, String? errorMessage, bool isMyWeatherPersonality)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailState() when $default != null:
        return $default(_that.weatherPersonality, _that.isLoading,
            _that.errorMessage, _that.isMyWeatherPersonality);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherPersonalityDetailState implements WeatherPersonalityDetailState {
  const _WeatherPersonalityDetailState(
      {this.weatherPersonality,
      this.isLoading = false,
      this.errorMessage,
      this.isMyWeatherPersonality = false});

  @override
  final WeatherPersonalityDetailReadModel? weatherPersonality;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isMyWeatherPersonality;

  /// Create a copy of WeatherPersonalityDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityDetailStateCopyWith<_WeatherPersonalityDetailState>
      get copyWith => __$WeatherPersonalityDetailStateCopyWithImpl<
          _WeatherPersonalityDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityDetailState &&
            (identical(other.weatherPersonality, weatherPersonality) ||
                other.weatherPersonality == weatherPersonality) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isMyWeatherPersonality, isMyWeatherPersonality) ||
                other.isMyWeatherPersonality == isMyWeatherPersonality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherPersonality, isLoading,
      errorMessage, isMyWeatherPersonality);

  @override
  String toString() {
    return 'WeatherPersonalityDetailState(weatherPersonality: $weatherPersonality, isLoading: $isLoading, errorMessage: $errorMessage, isMyWeatherPersonality: $isMyWeatherPersonality)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityDetailStateCopyWith<$Res>
    implements $WeatherPersonalityDetailStateCopyWith<$Res> {
  factory _$WeatherPersonalityDetailStateCopyWith(
          _WeatherPersonalityDetailState value,
          $Res Function(_WeatherPersonalityDetailState) _then) =
      __$WeatherPersonalityDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityDetailReadModel? weatherPersonality,
      bool isLoading,
      String? errorMessage,
      bool isMyWeatherPersonality});

  @override
  $WeatherPersonalityDetailReadModelCopyWith<$Res>? get weatherPersonality;
}

/// @nodoc
class __$WeatherPersonalityDetailStateCopyWithImpl<$Res>
    implements _$WeatherPersonalityDetailStateCopyWith<$Res> {
  __$WeatherPersonalityDetailStateCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityDetailState _self;
  final $Res Function(_WeatherPersonalityDetailState) _then;

  /// Create a copy of WeatherPersonalityDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weatherPersonality = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? isMyWeatherPersonality = null,
  }) {
    return _then(_WeatherPersonalityDetailState(
      weatherPersonality: freezed == weatherPersonality
          ? _self.weatherPersonality
          : weatherPersonality // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityDetailReadModel?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isMyWeatherPersonality: null == isMyWeatherPersonality
          ? _self.isMyWeatherPersonality
          : isMyWeatherPersonality // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of WeatherPersonalityDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPersonalityDetailReadModelCopyWith<$Res>? get weatherPersonality {
    if (_self.weatherPersonality == null) {
      return null;
    }

    return $WeatherPersonalityDetailReadModelCopyWith<$Res>(
        _self.weatherPersonality!, (value) {
      return _then(_self.copyWith(weatherPersonality: value));
    });
  }
}

// dart format on
