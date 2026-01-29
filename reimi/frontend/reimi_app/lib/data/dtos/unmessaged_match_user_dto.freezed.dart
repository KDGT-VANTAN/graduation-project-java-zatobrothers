// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unmessaged_match_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnmessagedMatchUserDto {
  String get id;
  String get mainPhotoUrl;

  /// Create a copy of UnmessagedMatchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnmessagedMatchUserDtoCopyWith<UnmessagedMatchUserDto> get copyWith =>
      _$UnmessagedMatchUserDtoCopyWithImpl<UnmessagedMatchUserDto>(
          this as UnmessagedMatchUserDto, _$identity);

  /// Serializes this UnmessagedMatchUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnmessagedMatchUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, mainPhotoUrl);

  @override
  String toString() {
    return 'UnmessagedMatchUserDto(id: $id, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class $UnmessagedMatchUserDtoCopyWith<$Res> {
  factory $UnmessagedMatchUserDtoCopyWith(UnmessagedMatchUserDto value,
          $Res Function(UnmessagedMatchUserDto) _then) =
      _$UnmessagedMatchUserDtoCopyWithImpl;
  @useResult
  $Res call({String id, String mainPhotoUrl});
}

/// @nodoc
class _$UnmessagedMatchUserDtoCopyWithImpl<$Res>
    implements $UnmessagedMatchUserDtoCopyWith<$Res> {
  _$UnmessagedMatchUserDtoCopyWithImpl(this._self, this._then);

  final UnmessagedMatchUserDto _self;
  final $Res Function(UnmessagedMatchUserDto) _then;

  /// Create a copy of UnmessagedMatchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mainPhotoUrl = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnmessagedMatchUserDto].
extension UnmessagedMatchUserDtoPatterns on UnmessagedMatchUserDto {
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
    TResult Function(_UnmessagedMatchUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserDto() when $default != null:
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
    TResult Function(_UnmessagedMatchUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserDto():
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
    TResult? Function(_UnmessagedMatchUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserDto() when $default != null:
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
    TResult Function(String id, String mainPhotoUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserDto() when $default != null:
        return $default(_that.id, _that.mainPhotoUrl);
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
    TResult Function(String id, String mainPhotoUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserDto():
        return $default(_that.id, _that.mainPhotoUrl);
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
    TResult? Function(String id, String mainPhotoUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserDto() when $default != null:
        return $default(_that.id, _that.mainPhotoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UnmessagedMatchUserDto implements UnmessagedMatchUserDto {
  const _UnmessagedMatchUserDto({required this.id, required this.mainPhotoUrl});
  factory _UnmessagedMatchUserDto.fromJson(Map<String, dynamic> json) =>
      _$UnmessagedMatchUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String mainPhotoUrl;

  /// Create a copy of UnmessagedMatchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnmessagedMatchUserDtoCopyWith<_UnmessagedMatchUserDto> get copyWith =>
      __$UnmessagedMatchUserDtoCopyWithImpl<_UnmessagedMatchUserDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnmessagedMatchUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnmessagedMatchUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, mainPhotoUrl);

  @override
  String toString() {
    return 'UnmessagedMatchUserDto(id: $id, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class _$UnmessagedMatchUserDtoCopyWith<$Res>
    implements $UnmessagedMatchUserDtoCopyWith<$Res> {
  factory _$UnmessagedMatchUserDtoCopyWith(_UnmessagedMatchUserDto value,
          $Res Function(_UnmessagedMatchUserDto) _then) =
      __$UnmessagedMatchUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String mainPhotoUrl});
}

/// @nodoc
class __$UnmessagedMatchUserDtoCopyWithImpl<$Res>
    implements _$UnmessagedMatchUserDtoCopyWith<$Res> {
  __$UnmessagedMatchUserDtoCopyWithImpl(this._self, this._then);

  final _UnmessagedMatchUserDto _self;
  final $Res Function(_UnmessagedMatchUserDto) _then;

  /// Create a copy of UnmessagedMatchUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? mainPhotoUrl = null,
  }) {
    return _then(_UnmessagedMatchUserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
