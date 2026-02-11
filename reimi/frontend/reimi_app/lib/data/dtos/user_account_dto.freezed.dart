// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAccountDto {
  String get id;
  String get name;
  String get mainPhotoUrl;
  WeatherPersonalityCode? get typeCode;
  String? get typeName;
  String? get typeImageUrl;
  Map<ItemTypeCode, int> get items;

  /// Create a copy of UserAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAccountDtoCopyWith<UserAccountDto> get copyWith =>
      _$UserAccountDtoCopyWithImpl<UserAccountDto>(
          this as UserAccountDto, _$identity);

  /// Serializes this UserAccountDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mainPhotoUrl, typeCode,
      typeName, typeImageUrl, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'UserAccountDto(id: $id, name: $name, mainPhotoUrl: $mainPhotoUrl, typeCode: $typeCode, typeName: $typeName, typeImageUrl: $typeImageUrl, items: $items)';
  }
}

/// @nodoc
abstract mixin class $UserAccountDtoCopyWith<$Res> {
  factory $UserAccountDtoCopyWith(
          UserAccountDto value, $Res Function(UserAccountDto) _then) =
      _$UserAccountDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String mainPhotoUrl,
      WeatherPersonalityCode? typeCode,
      String? typeName,
      String? typeImageUrl,
      Map<ItemTypeCode, int> items});
}

/// @nodoc
class _$UserAccountDtoCopyWithImpl<$Res>
    implements $UserAccountDtoCopyWith<$Res> {
  _$UserAccountDtoCopyWithImpl(this._self, this._then);

  final UserAccountDto _self;
  final $Res Function(UserAccountDto) _then;

  /// Create a copy of UserAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainPhotoUrl = null,
    Object? typeCode = freezed,
    Object? typeName = freezed,
    Object? typeImageUrl = freezed,
    Object? items = null,
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
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeCode: freezed == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode?,
      typeName: freezed == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeImageUrl: freezed == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<ItemTypeCode, int>,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserAccountDto].
extension UserAccountDtoPatterns on UserAccountDto {
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
    TResult Function(_UserAccountDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserAccountDto() when $default != null:
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
    TResult Function(_UserAccountDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAccountDto():
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
    TResult? Function(_UserAccountDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAccountDto() when $default != null:
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
            String mainPhotoUrl,
            WeatherPersonalityCode? typeCode,
            String? typeName,
            String? typeImageUrl,
            Map<ItemTypeCode, int> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserAccountDto() when $default != null:
        return $default(_that.id, _that.name, _that.mainPhotoUrl,
            _that.typeCode, _that.typeName, _that.typeImageUrl, _that.items);
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
            String mainPhotoUrl,
            WeatherPersonalityCode? typeCode,
            String? typeName,
            String? typeImageUrl,
            Map<ItemTypeCode, int> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAccountDto():
        return $default(_that.id, _that.name, _that.mainPhotoUrl,
            _that.typeCode, _that.typeName, _that.typeImageUrl, _that.items);
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
            String mainPhotoUrl,
            WeatherPersonalityCode? typeCode,
            String? typeName,
            String? typeImageUrl,
            Map<ItemTypeCode, int> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserAccountDto() when $default != null:
        return $default(_that.id, _that.name, _that.mainPhotoUrl,
            _that.typeCode, _that.typeName, _that.typeImageUrl, _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserAccountDto implements UserAccountDto {
  const _UserAccountDto(
      {required this.id,
      required this.name,
      required this.mainPhotoUrl,
      this.typeCode,
      this.typeName,
      this.typeImageUrl,
      required final Map<ItemTypeCode, int> items})
      : _items = items;
  factory _UserAccountDto.fromJson(Map<String, dynamic> json) =>
      _$UserAccountDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String mainPhotoUrl;
  @override
  final WeatherPersonalityCode? typeCode;
  @override
  final String? typeName;
  @override
  final String? typeImageUrl;
  final Map<ItemTypeCode, int> _items;
  @override
  Map<ItemTypeCode, int> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  /// Create a copy of UserAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserAccountDtoCopyWith<_UserAccountDto> get copyWith =>
      __$UserAccountDtoCopyWithImpl<_UserAccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserAccountDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mainPhotoUrl, typeCode,
      typeName, typeImageUrl, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'UserAccountDto(id: $id, name: $name, mainPhotoUrl: $mainPhotoUrl, typeCode: $typeCode, typeName: $typeName, typeImageUrl: $typeImageUrl, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$UserAccountDtoCopyWith<$Res>
    implements $UserAccountDtoCopyWith<$Res> {
  factory _$UserAccountDtoCopyWith(
          _UserAccountDto value, $Res Function(_UserAccountDto) _then) =
      __$UserAccountDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String mainPhotoUrl,
      WeatherPersonalityCode? typeCode,
      String? typeName,
      String? typeImageUrl,
      Map<ItemTypeCode, int> items});
}

/// @nodoc
class __$UserAccountDtoCopyWithImpl<$Res>
    implements _$UserAccountDtoCopyWith<$Res> {
  __$UserAccountDtoCopyWithImpl(this._self, this._then);

  final _UserAccountDto _self;
  final $Res Function(_UserAccountDto) _then;

  /// Create a copy of UserAccountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mainPhotoUrl = null,
    Object? typeCode = freezed,
    Object? typeName = freezed,
    Object? typeImageUrl = freezed,
    Object? items = null,
  }) {
    return _then(_UserAccountDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      typeCode: freezed == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode?,
      typeName: freezed == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeImageUrl: freezed == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<ItemTypeCode, int>,
    ));
  }
}

// dart format on
