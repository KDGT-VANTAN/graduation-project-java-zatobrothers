// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_characters_introduction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityCharactersIntroductionState {
  List<WeatherPersonalityCharacterReadModel> get characters;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of WeatherPersonalityCharactersIntroductionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityCharactersIntroductionStateCopyWith<
          WeatherPersonalityCharactersIntroductionState>
      get copyWith =>
          _$WeatherPersonalityCharactersIntroductionStateCopyWithImpl<
                  WeatherPersonalityCharactersIntroductionState>(
              this as WeatherPersonalityCharactersIntroductionState,
              _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityCharactersIntroductionState &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(characters), isLoading, errorMessage);

  @override
  String toString() {
    return 'WeatherPersonalityCharactersIntroductionState(characters: $characters, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityCharactersIntroductionStateCopyWith<
    $Res> {
  factory $WeatherPersonalityCharactersIntroductionStateCopyWith(
          WeatherPersonalityCharactersIntroductionState value,
          $Res Function(WeatherPersonalityCharactersIntroductionState) _then) =
      _$WeatherPersonalityCharactersIntroductionStateCopyWithImpl;
  @useResult
  $Res call(
      {List<WeatherPersonalityCharacterReadModel> characters,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$WeatherPersonalityCharactersIntroductionStateCopyWithImpl<$Res>
    implements $WeatherPersonalityCharactersIntroductionStateCopyWith<$Res> {
  _$WeatherPersonalityCharactersIntroductionStateCopyWithImpl(
      this._self, this._then);

  final WeatherPersonalityCharactersIntroductionState _self;
  final $Res Function(WeatherPersonalityCharactersIntroductionState) _then;

  /// Create a copy of WeatherPersonalityCharactersIntroductionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      characters: null == characters
          ? _self.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<WeatherPersonalityCharacterReadModel>,
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

/// Adds pattern-matching-related methods to [WeatherPersonalityCharactersIntroductionState].
extension WeatherPersonalityCharactersIntroductionStatePatterns
    on WeatherPersonalityCharactersIntroductionState {
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
    TResult Function(_WeatherPersonalityCharactersIntroductionState value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharactersIntroductionState()
          when $default != null:
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
    TResult Function(_WeatherPersonalityCharactersIntroductionState value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharactersIntroductionState():
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
    TResult? Function(_WeatherPersonalityCharactersIntroductionState value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharactersIntroductionState()
          when $default != null:
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
    TResult Function(List<WeatherPersonalityCharacterReadModel> characters,
            bool isLoading, String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharactersIntroductionState()
          when $default != null:
        return $default(_that.characters, _that.isLoading, _that.errorMessage);
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
    TResult Function(List<WeatherPersonalityCharacterReadModel> characters,
            bool isLoading, String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharactersIntroductionState():
        return $default(_that.characters, _that.isLoading, _that.errorMessage);
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
    TResult? Function(List<WeatherPersonalityCharacterReadModel> characters,
            bool isLoading, String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharactersIntroductionState()
          when $default != null:
        return $default(_that.characters, _that.isLoading, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherPersonalityCharactersIntroductionState
    implements WeatherPersonalityCharactersIntroductionState {
  const _WeatherPersonalityCharactersIntroductionState(
      {final List<WeatherPersonalityCharacterReadModel> characters =
          const <WeatherPersonalityCharacterReadModel>[],
      this.isLoading = false,
      this.errorMessage})
      : _characters = characters;

  final List<WeatherPersonalityCharacterReadModel> _characters;
  @override
  @JsonKey()
  List<WeatherPersonalityCharacterReadModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of WeatherPersonalityCharactersIntroductionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityCharactersIntroductionStateCopyWith<
          _WeatherPersonalityCharactersIntroductionState>
      get copyWith =>
          __$WeatherPersonalityCharactersIntroductionStateCopyWithImpl<
              _WeatherPersonalityCharactersIntroductionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityCharactersIntroductionState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      isLoading,
      errorMessage);

  @override
  String toString() {
    return 'WeatherPersonalityCharactersIntroductionState(characters: $characters, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityCharactersIntroductionStateCopyWith<
        $Res>
    implements $WeatherPersonalityCharactersIntroductionStateCopyWith<$Res> {
  factory _$WeatherPersonalityCharactersIntroductionStateCopyWith(
          _WeatherPersonalityCharactersIntroductionState value,
          $Res Function(_WeatherPersonalityCharactersIntroductionState) _then) =
      __$WeatherPersonalityCharactersIntroductionStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<WeatherPersonalityCharacterReadModel> characters,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$WeatherPersonalityCharactersIntroductionStateCopyWithImpl<$Res>
    implements _$WeatherPersonalityCharactersIntroductionStateCopyWith<$Res> {
  __$WeatherPersonalityCharactersIntroductionStateCopyWithImpl(
      this._self, this._then);

  final _WeatherPersonalityCharactersIntroductionState _self;
  final $Res Function(_WeatherPersonalityCharactersIntroductionState) _then;

  /// Create a copy of WeatherPersonalityCharactersIntroductionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characters = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_WeatherPersonalityCharactersIntroductionState(
      characters: null == characters
          ? _self._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<WeatherPersonalityCharacterReadModel>,
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
