// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_test_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityTestResultState {
  WeatherPersonalityResultReadModel? get weatherPersonality;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of WeatherPersonalityTestResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityTestResultStateCopyWith<WeatherPersonalityTestResultState>
      get copyWith => _$WeatherPersonalityTestResultStateCopyWithImpl<
              WeatherPersonalityTestResultState>(
          this as WeatherPersonalityTestResultState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityTestResultState &&
            (identical(other.weatherPersonality, weatherPersonality) ||
                other.weatherPersonality == weatherPersonality) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weatherPersonality, isLoading, errorMessage);

  @override
  String toString() {
    return 'WeatherPersonalityTestResultState(weatherPersonality: $weatherPersonality, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityTestResultStateCopyWith<$Res> {
  factory $WeatherPersonalityTestResultStateCopyWith(
          WeatherPersonalityTestResultState value,
          $Res Function(WeatherPersonalityTestResultState) _then) =
      _$WeatherPersonalityTestResultStateCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityResultReadModel? weatherPersonality,
      bool isLoading,
      String? errorMessage});

  $WeatherPersonalityResultReadModelCopyWith<$Res>? get weatherPersonality;
}

/// @nodoc
class _$WeatherPersonalityTestResultStateCopyWithImpl<$Res>
    implements $WeatherPersonalityTestResultStateCopyWith<$Res> {
  _$WeatherPersonalityTestResultStateCopyWithImpl(this._self, this._then);

  final WeatherPersonalityTestResultState _self;
  final $Res Function(WeatherPersonalityTestResultState) _then;

  /// Create a copy of WeatherPersonalityTestResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherPersonality = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      weatherPersonality: freezed == weatherPersonality
          ? _self.weatherPersonality
          : weatherPersonality // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityResultReadModel?,
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

  /// Create a copy of WeatherPersonalityTestResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPersonalityResultReadModelCopyWith<$Res>? get weatherPersonality {
    if (_self.weatherPersonality == null) {
      return null;
    }

    return $WeatherPersonalityResultReadModelCopyWith<$Res>(
        _self.weatherPersonality!, (value) {
      return _then(_self.copyWith(weatherPersonality: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityTestResultState].
extension WeatherPersonalityTestResultStatePatterns
    on WeatherPersonalityTestResultState {
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
    TResult Function(_WeatherPersonalityTestResultState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTestResultState() when $default != null:
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
    TResult Function(_WeatherPersonalityTestResultState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTestResultState():
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
    TResult? Function(_WeatherPersonalityTestResultState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTestResultState() when $default != null:
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
    TResult Function(WeatherPersonalityResultReadModel? weatherPersonality,
            bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTestResultState() when $default != null:
        return $default(
            _that.weatherPersonality, _that.isLoading, _that.errorMessage);
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
    TResult Function(WeatherPersonalityResultReadModel? weatherPersonality,
            bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTestResultState():
        return $default(
            _that.weatherPersonality, _that.isLoading, _that.errorMessage);
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
    TResult? Function(WeatherPersonalityResultReadModel? weatherPersonality,
            bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityTestResultState() when $default != null:
        return $default(
            _that.weatherPersonality, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherPersonalityTestResultState
    implements WeatherPersonalityTestResultState {
  const _WeatherPersonalityTestResultState(
      {this.weatherPersonality, this.isLoading = false, this.errorMessage});

  @override
  final WeatherPersonalityResultReadModel? weatherPersonality;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of WeatherPersonalityTestResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityTestResultStateCopyWith<
          _WeatherPersonalityTestResultState>
      get copyWith => __$WeatherPersonalityTestResultStateCopyWithImpl<
          _WeatherPersonalityTestResultState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityTestResultState &&
            (identical(other.weatherPersonality, weatherPersonality) ||
                other.weatherPersonality == weatherPersonality) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weatherPersonality, isLoading, errorMessage);

  @override
  String toString() {
    return 'WeatherPersonalityTestResultState(weatherPersonality: $weatherPersonality, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityTestResultStateCopyWith<$Res>
    implements $WeatherPersonalityTestResultStateCopyWith<$Res> {
  factory _$WeatherPersonalityTestResultStateCopyWith(
          _WeatherPersonalityTestResultState value,
          $Res Function(_WeatherPersonalityTestResultState) _then) =
      __$WeatherPersonalityTestResultStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityResultReadModel? weatherPersonality,
      bool isLoading,
      String? errorMessage});

  @override
  $WeatherPersonalityResultReadModelCopyWith<$Res>? get weatherPersonality;
}

/// @nodoc
class __$WeatherPersonalityTestResultStateCopyWithImpl<$Res>
    implements _$WeatherPersonalityTestResultStateCopyWith<$Res> {
  __$WeatherPersonalityTestResultStateCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityTestResultState _self;
  final $Res Function(_WeatherPersonalityTestResultState) _then;

  /// Create a copy of WeatherPersonalityTestResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weatherPersonality = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_WeatherPersonalityTestResultState(
      weatherPersonality: freezed == weatherPersonality
          ? _self.weatherPersonality
          : weatherPersonality // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityResultReadModel?,
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

  /// Create a copy of WeatherPersonalityTestResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPersonalityResultReadModelCopyWith<$Res>? get weatherPersonality {
    if (_self.weatherPersonality == null) {
      return null;
    }

    return $WeatherPersonalityResultReadModelCopyWith<$Res>(
        _self.weatherPersonality!, (value) {
      return _then(_self.copyWith(weatherPersonality: value));
    });
  }
}

// dart format on
