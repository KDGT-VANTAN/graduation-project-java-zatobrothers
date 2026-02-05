// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LikeUserDto {
  String get id;
  String get name;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String? get introduction;
  bool? get isTodayReported;
  String? get typeImageUrl;

  /// Create a copy of LikeUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LikeUserDtoCopyWith<LikeUserDto> get copyWith =>
      _$LikeUserDtoCopyWithImpl<LikeUserDto>(this as LikeUserDto, _$identity);

  /// Serializes this LikeUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LikeUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, introduction, isTodayReported, typeImageUrl);

  @override
  String toString() {
    return 'LikeUserDto(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported, typeImageUrl: $typeImageUrl)';
  }
}

/// @nodoc
abstract mixin class $LikeUserDtoCopyWith<$Res> {
  factory $LikeUserDtoCopyWith(
          LikeUserDto value, $Res Function(LikeUserDto) _then) =
      _$LikeUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String? introduction,
      bool? isTodayReported,
      String? typeImageUrl});
}

/// @nodoc
class _$LikeUserDtoCopyWithImpl<$Res> implements $LikeUserDtoCopyWith<$Res> {
  _$LikeUserDtoCopyWithImpl(this._self, this._then);

  final LikeUserDto _self;
  final $Res Function(LikeUserDto) _then;

  /// Create a copy of LikeUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = freezed,
    Object? isTodayReported = freezed,
    Object? typeImageUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeImageUrl: freezed == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LikeUserDto].
extension LikeUserDtoPatterns on LikeUserDto {
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
    TResult Function(_LikeUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeUserDto() when $default != null:
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
    TResult Function(_LikeUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserDto():
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
    TResult? Function(_LikeUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserDto() when $default != null:
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
    TResult Function(
            String id,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String? introduction,
            bool? isTodayReported,
            String? typeImageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LikeUserDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.isTodayReported,
            _that.typeImageUrl);
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
    TResult Function(
            String id,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String? introduction,
            bool? isTodayReported,
            String? typeImageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserDto():
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.isTodayReported,
            _that.typeImageUrl);
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
    TResult? Function(
            String id,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String? introduction,
            bool? isTodayReported,
            String? typeImageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LikeUserDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.introduction,
            _that.isTodayReported,
            _that.typeImageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LikeUserDto implements LikeUserDto {
  const _LikeUserDto(
      {required this.id,
      required this.name,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      this.introduction,
      this.isTodayReported,
      this.typeImageUrl});
  factory _LikeUserDto.fromJson(Map<String, dynamic> json) =>
      _$LikeUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String? introduction;
  @override
  final bool? isTodayReported;
  @override
  final String? typeImageUrl;

  /// Create a copy of LikeUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LikeUserDtoCopyWith<_LikeUserDto> get copyWith =>
      __$LikeUserDtoCopyWithImpl<_LikeUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LikeUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, introduction, isTodayReported, typeImageUrl);

  @override
  String toString() {
    return 'LikeUserDto(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported, typeImageUrl: $typeImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$LikeUserDtoCopyWith<$Res>
    implements $LikeUserDtoCopyWith<$Res> {
  factory _$LikeUserDtoCopyWith(
          _LikeUserDto value, $Res Function(_LikeUserDto) _then) =
      __$LikeUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String? introduction,
      bool? isTodayReported,
      String? typeImageUrl});
}

/// @nodoc
class __$LikeUserDtoCopyWithImpl<$Res> implements _$LikeUserDtoCopyWith<$Res> {
  __$LikeUserDtoCopyWithImpl(this._self, this._then);

  final _LikeUserDto _self;
  final $Res Function(_LikeUserDto) _then;

  /// Create a copy of LikeUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = freezed,
    Object? isTodayReported = freezed,
    Object? typeImageUrl = freezed,
  }) {
    return _then(_LikeUserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      isTodayReported: freezed == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool?,
      typeImageUrl: freezed == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
