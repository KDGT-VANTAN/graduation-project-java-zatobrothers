// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matching_users_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchingUsersDto {
  String get otherUserName;
  String get otherUserMainPhotoUrl;
  String get currentUserMainPhotoUrl;

  /// Create a copy of MatchingUsersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MatchingUsersDtoCopyWith<MatchingUsersDto> get copyWith =>
      _$MatchingUsersDtoCopyWithImpl<MatchingUsersDto>(
          this as MatchingUsersDto, _$identity);

  /// Serializes this MatchingUsersDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MatchingUsersDto &&
            (identical(other.otherUserName, otherUserName) ||
                other.otherUserName == otherUserName) &&
            (identical(other.otherUserMainPhotoUrl, otherUserMainPhotoUrl) ||
                other.otherUserMainPhotoUrl == otherUserMainPhotoUrl) &&
            (identical(
                    other.currentUserMainPhotoUrl, currentUserMainPhotoUrl) ||
                other.currentUserMainPhotoUrl == currentUserMainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otherUserName,
      otherUserMainPhotoUrl, currentUserMainPhotoUrl);

  @override
  String toString() {
    return 'MatchingUsersDto(otherUserName: $otherUserName, otherUserMainPhotoUrl: $otherUserMainPhotoUrl, currentUserMainPhotoUrl: $currentUserMainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class $MatchingUsersDtoCopyWith<$Res> {
  factory $MatchingUsersDtoCopyWith(
          MatchingUsersDto value, $Res Function(MatchingUsersDto) _then) =
      _$MatchingUsersDtoCopyWithImpl;
  @useResult
  $Res call(
      {String otherUserName,
      String otherUserMainPhotoUrl,
      String currentUserMainPhotoUrl});
}

/// @nodoc
class _$MatchingUsersDtoCopyWithImpl<$Res>
    implements $MatchingUsersDtoCopyWith<$Res> {
  _$MatchingUsersDtoCopyWithImpl(this._self, this._then);

  final MatchingUsersDto _self;
  final $Res Function(MatchingUsersDto) _then;

  /// Create a copy of MatchingUsersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherUserName = null,
    Object? otherUserMainPhotoUrl = null,
    Object? currentUserMainPhotoUrl = null,
  }) {
    return _then(_self.copyWith(
      otherUserName: null == otherUserName
          ? _self.otherUserName
          : otherUserName // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserMainPhotoUrl: null == otherUserMainPhotoUrl
          ? _self.otherUserMainPhotoUrl
          : otherUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserMainPhotoUrl: null == currentUserMainPhotoUrl
          ? _self.currentUserMainPhotoUrl
          : currentUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MatchingUsersDto].
extension MatchingUsersDtoPatterns on MatchingUsersDto {
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
    TResult Function(_MatchingUsersDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersDto() when $default != null:
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
    TResult Function(_MatchingUsersDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersDto():
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
    TResult? Function(_MatchingUsersDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersDto() when $default != null:
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
    TResult Function(String otherUserName, String otherUserMainPhotoUrl,
            String currentUserMainPhotoUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersDto() when $default != null:
        return $default(_that.otherUserName, _that.otherUserMainPhotoUrl,
            _that.currentUserMainPhotoUrl);
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
    TResult Function(String otherUserName, String otherUserMainPhotoUrl,
            String currentUserMainPhotoUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersDto():
        return $default(_that.otherUserName, _that.otherUserMainPhotoUrl,
            _that.currentUserMainPhotoUrl);
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
    TResult? Function(String otherUserName, String otherUserMainPhotoUrl,
            String currentUserMainPhotoUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersDto() when $default != null:
        return $default(_that.otherUserName, _that.otherUserMainPhotoUrl,
            _that.currentUserMainPhotoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MatchingUsersDto implements MatchingUsersDto {
  const _MatchingUsersDto(
      {required this.otherUserName,
      required this.otherUserMainPhotoUrl,
      required this.currentUserMainPhotoUrl});
  factory _MatchingUsersDto.fromJson(Map<String, dynamic> json) =>
      _$MatchingUsersDtoFromJson(json);

  @override
  final String otherUserName;
  @override
  final String otherUserMainPhotoUrl;
  @override
  final String currentUserMainPhotoUrl;

  /// Create a copy of MatchingUsersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MatchingUsersDtoCopyWith<_MatchingUsersDto> get copyWith =>
      __$MatchingUsersDtoCopyWithImpl<_MatchingUsersDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MatchingUsersDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchingUsersDto &&
            (identical(other.otherUserName, otherUserName) ||
                other.otherUserName == otherUserName) &&
            (identical(other.otherUserMainPhotoUrl, otherUserMainPhotoUrl) ||
                other.otherUserMainPhotoUrl == otherUserMainPhotoUrl) &&
            (identical(
                    other.currentUserMainPhotoUrl, currentUserMainPhotoUrl) ||
                other.currentUserMainPhotoUrl == currentUserMainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otherUserName,
      otherUserMainPhotoUrl, currentUserMainPhotoUrl);

  @override
  String toString() {
    return 'MatchingUsersDto(otherUserName: $otherUserName, otherUserMainPhotoUrl: $otherUserMainPhotoUrl, currentUserMainPhotoUrl: $currentUserMainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class _$MatchingUsersDtoCopyWith<$Res>
    implements $MatchingUsersDtoCopyWith<$Res> {
  factory _$MatchingUsersDtoCopyWith(
          _MatchingUsersDto value, $Res Function(_MatchingUsersDto) _then) =
      __$MatchingUsersDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String otherUserName,
      String otherUserMainPhotoUrl,
      String currentUserMainPhotoUrl});
}

/// @nodoc
class __$MatchingUsersDtoCopyWithImpl<$Res>
    implements _$MatchingUsersDtoCopyWith<$Res> {
  __$MatchingUsersDtoCopyWithImpl(this._self, this._then);

  final _MatchingUsersDto _self;
  final $Res Function(_MatchingUsersDto) _then;

  /// Create a copy of MatchingUsersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otherUserName = null,
    Object? otherUserMainPhotoUrl = null,
    Object? currentUserMainPhotoUrl = null,
  }) {
    return _then(_MatchingUsersDto(
      otherUserName: null == otherUserName
          ? _self.otherUserName
          : otherUserName // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserMainPhotoUrl: null == otherUserMainPhotoUrl
          ? _self.otherUserMainPhotoUrl
          : otherUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserMainPhotoUrl: null == currentUserMainPhotoUrl
          ? _self.currentUserMainPhotoUrl
          : currentUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
