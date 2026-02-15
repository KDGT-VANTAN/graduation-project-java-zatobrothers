// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_character_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityCharacterDetailState {
  WeatherPersonalityCharacterDetailReadModel? get character;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of WeatherPersonalityCharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityCharacterDetailStateCopyWith<
          WeatherPersonalityCharacterDetailState>
      get copyWith => _$WeatherPersonalityCharacterDetailStateCopyWithImpl<
              WeatherPersonalityCharacterDetailState>(
          this as WeatherPersonalityCharacterDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityCharacterDetailState &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, character, isLoading, errorMessage);

  @override
  String toString() {
    return 'WeatherPersonalityCharacterDetailState(character: $character, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityCharacterDetailStateCopyWith<$Res> {
  factory $WeatherPersonalityCharacterDetailStateCopyWith(
          WeatherPersonalityCharacterDetailState value,
          $Res Function(WeatherPersonalityCharacterDetailState) _then) =
      _$WeatherPersonalityCharacterDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityCharacterDetailReadModel? character,
      bool isLoading,
      String? errorMessage});

  $WeatherPersonalityCharacterDetailReadModelCopyWith<$Res>? get character;
}

/// @nodoc
class _$WeatherPersonalityCharacterDetailStateCopyWithImpl<$Res>
    implements $WeatherPersonalityCharacterDetailStateCopyWith<$Res> {
  _$WeatherPersonalityCharacterDetailStateCopyWithImpl(this._self, this._then);

  final WeatherPersonalityCharacterDetailState _self;
  final $Res Function(WeatherPersonalityCharacterDetailState) _then;

  /// Create a copy of WeatherPersonalityCharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      character: freezed == character
          ? _self.character
          : character // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCharacterDetailReadModel?,
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

  /// Create a copy of WeatherPersonalityCharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPersonalityCharacterDetailReadModelCopyWith<$Res>? get character {
    if (_self.character == null) {
      return null;
    }

    return $WeatherPersonalityCharacterDetailReadModelCopyWith<$Res>(
        _self.character!, (value) {
      return _then(_self.copyWith(character: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityCharacterDetailState].
extension WeatherPersonalityCharacterDetailStatePatterns
    on WeatherPersonalityCharacterDetailState {
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
    TResult Function(_WeatherPersonalityCharacterDetailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailState() when $default != null:
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
    TResult Function(_WeatherPersonalityCharacterDetailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailState():
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
    TResult? Function(_WeatherPersonalityCharacterDetailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailState() when $default != null:
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
    TResult Function(WeatherPersonalityCharacterDetailReadModel? character,
            bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailState() when $default != null:
        return $default(_that.character, _that.isLoading, _that.errorMessage);
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
    TResult Function(WeatherPersonalityCharacterDetailReadModel? character,
            bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailState():
        return $default(_that.character, _that.isLoading, _that.errorMessage);
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
    TResult? Function(WeatherPersonalityCharacterDetailReadModel? character,
            bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailState() when $default != null:
        return $default(_that.character, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherPersonalityCharacterDetailState
    implements WeatherPersonalityCharacterDetailState {
  const _WeatherPersonalityCharacterDetailState(
      {this.character, this.isLoading = false, this.errorMessage});

  @override
  final WeatherPersonalityCharacterDetailReadModel? character;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of WeatherPersonalityCharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityCharacterDetailStateCopyWith<
          _WeatherPersonalityCharacterDetailState>
      get copyWith => __$WeatherPersonalityCharacterDetailStateCopyWithImpl<
          _WeatherPersonalityCharacterDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityCharacterDetailState &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, character, isLoading, errorMessage);

  @override
  String toString() {
    return 'WeatherPersonalityCharacterDetailState(character: $character, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityCharacterDetailStateCopyWith<$Res>
    implements $WeatherPersonalityCharacterDetailStateCopyWith<$Res> {
  factory _$WeatherPersonalityCharacterDetailStateCopyWith(
          _WeatherPersonalityCharacterDetailState value,
          $Res Function(_WeatherPersonalityCharacterDetailState) _then) =
      __$WeatherPersonalityCharacterDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityCharacterDetailReadModel? character,
      bool isLoading,
      String? errorMessage});

  @override
  $WeatherPersonalityCharacterDetailReadModelCopyWith<$Res>? get character;
}

/// @nodoc
class __$WeatherPersonalityCharacterDetailStateCopyWithImpl<$Res>
    implements _$WeatherPersonalityCharacterDetailStateCopyWith<$Res> {
  __$WeatherPersonalityCharacterDetailStateCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityCharacterDetailState _self;
  final $Res Function(_WeatherPersonalityCharacterDetailState) _then;

  /// Create a copy of WeatherPersonalityCharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? character = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_WeatherPersonalityCharacterDetailState(
      character: freezed == character
          ? _self.character
          : character // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCharacterDetailReadModel?,
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

  /// Create a copy of WeatherPersonalityCharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherPersonalityCharacterDetailReadModelCopyWith<$Res>? get character {
    if (_self.character == null) {
      return null;
    }

    return $WeatherPersonalityCharacterDetailReadModelCopyWith<$Res>(
        _self.character!, (value) {
      return _then(_self.copyWith(character: value));
    });
  }
}

// dart format on
