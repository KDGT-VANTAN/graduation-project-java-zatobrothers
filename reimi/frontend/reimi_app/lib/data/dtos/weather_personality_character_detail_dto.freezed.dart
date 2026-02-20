// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_character_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityCharacterDetailDto {
  WeatherPersonalityCode get typeCode;
  String get typeName;
  String get typeCatchphrase;
  String get typeImageUrl;
  String get rulingStatement;
  List<AxisFeatureDto> get axisFeatures;
  List<BehaviorTendencyDto> get behaviorTendencies;
  List<TypeCompatibilityDto> get compatibleTypes;
  List<TypeCompatibilityDto> get incompatibleTypes;
  String get godsMessage;

  /// Create a copy of WeatherPersonalityCharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityCharacterDetailDtoCopyWith<
          WeatherPersonalityCharacterDetailDto>
      get copyWith => _$WeatherPersonalityCharacterDetailDtoCopyWithImpl<
              WeatherPersonalityCharacterDetailDto>(
          this as WeatherPersonalityCharacterDetailDto, _$identity);

  /// Serializes this WeatherPersonalityCharacterDetailDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityCharacterDetailDto &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCatchphrase, typeCatchphrase) ||
                other.typeCatchphrase == typeCatchphrase) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.rulingStatement, rulingStatement) ||
                other.rulingStatement == rulingStatement) &&
            const DeepCollectionEquality()
                .equals(other.axisFeatures, axisFeatures) &&
            const DeepCollectionEquality()
                .equals(other.behaviorTendencies, behaviorTendencies) &&
            const DeepCollectionEquality()
                .equals(other.compatibleTypes, compatibleTypes) &&
            const DeepCollectionEquality()
                .equals(other.incompatibleTypes, incompatibleTypes) &&
            (identical(other.godsMessage, godsMessage) ||
                other.godsMessage == godsMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeCode,
      typeName,
      typeCatchphrase,
      typeImageUrl,
      rulingStatement,
      const DeepCollectionEquality().hash(axisFeatures),
      const DeepCollectionEquality().hash(behaviorTendencies),
      const DeepCollectionEquality().hash(compatibleTypes),
      const DeepCollectionEquality().hash(incompatibleTypes),
      godsMessage);

  @override
  String toString() {
    return 'WeatherPersonalityCharacterDetailDto(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeImageUrl: $typeImageUrl, rulingStatement: $rulingStatement, axisFeatures: $axisFeatures, behaviorTendencies: $behaviorTendencies, compatibleTypes: $compatibleTypes, incompatibleTypes: $incompatibleTypes, godsMessage: $godsMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityCharacterDetailDtoCopyWith<$Res> {
  factory $WeatherPersonalityCharacterDetailDtoCopyWith(
          WeatherPersonalityCharacterDetailDto value,
          $Res Function(WeatherPersonalityCharacterDetailDto) _then) =
      _$WeatherPersonalityCharacterDetailDtoCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeCatchphrase,
      String typeImageUrl,
      String rulingStatement,
      List<AxisFeatureDto> axisFeatures,
      List<BehaviorTendencyDto> behaviorTendencies,
      List<TypeCompatibilityDto> compatibleTypes,
      List<TypeCompatibilityDto> incompatibleTypes,
      String godsMessage});
}

/// @nodoc
class _$WeatherPersonalityCharacterDetailDtoCopyWithImpl<$Res>
    implements $WeatherPersonalityCharacterDetailDtoCopyWith<$Res> {
  _$WeatherPersonalityCharacterDetailDtoCopyWithImpl(this._self, this._then);

  final WeatherPersonalityCharacterDetailDto _self;
  final $Res Function(WeatherPersonalityCharacterDetailDto) _then;

  /// Create a copy of WeatherPersonalityCharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCatchphrase = null,
    Object? typeImageUrl = null,
    Object? rulingStatement = null,
    Object? axisFeatures = null,
    Object? behaviorTendencies = null,
    Object? compatibleTypes = null,
    Object? incompatibleTypes = null,
    Object? godsMessage = null,
  }) {
    return _then(_self.copyWith(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeCatchphrase: null == typeCatchphrase
          ? _self.typeCatchphrase
          : typeCatchphrase // ignore: cast_nullable_to_non_nullable
              as String,
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rulingStatement: null == rulingStatement
          ? _self.rulingStatement
          : rulingStatement // ignore: cast_nullable_to_non_nullable
              as String,
      axisFeatures: null == axisFeatures
          ? _self.axisFeatures
          : axisFeatures // ignore: cast_nullable_to_non_nullable
              as List<AxisFeatureDto>,
      behaviorTendencies: null == behaviorTendencies
          ? _self.behaviorTendencies
          : behaviorTendencies // ignore: cast_nullable_to_non_nullable
              as List<BehaviorTendencyDto>,
      compatibleTypes: null == compatibleTypes
          ? _self.compatibleTypes
          : compatibleTypes // ignore: cast_nullable_to_non_nullable
              as List<TypeCompatibilityDto>,
      incompatibleTypes: null == incompatibleTypes
          ? _self.incompatibleTypes
          : incompatibleTypes // ignore: cast_nullable_to_non_nullable
              as List<TypeCompatibilityDto>,
      godsMessage: null == godsMessage
          ? _self.godsMessage
          : godsMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityCharacterDetailDto].
extension WeatherPersonalityCharacterDetailDtoPatterns
    on WeatherPersonalityCharacterDetailDto {
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
    TResult Function(_WeatherPersonalityCharacterDetailDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailDto() when $default != null:
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
    TResult Function(_WeatherPersonalityCharacterDetailDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailDto():
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
    TResult? Function(_WeatherPersonalityCharacterDetailDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailDto() when $default != null:
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
            WeatherPersonalityCode typeCode,
            String typeName,
            String typeCatchphrase,
            String typeImageUrl,
            String rulingStatement,
            List<AxisFeatureDto> axisFeatures,
            List<BehaviorTendencyDto> behaviorTendencies,
            List<TypeCompatibilityDto> compatibleTypes,
            List<TypeCompatibilityDto> incompatibleTypes,
            String godsMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailDto() when $default != null:
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.behaviorTendencies,
            _that.compatibleTypes,
            _that.incompatibleTypes,
            _that.godsMessage);
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
            WeatherPersonalityCode typeCode,
            String typeName,
            String typeCatchphrase,
            String typeImageUrl,
            String rulingStatement,
            List<AxisFeatureDto> axisFeatures,
            List<BehaviorTendencyDto> behaviorTendencies,
            List<TypeCompatibilityDto> compatibleTypes,
            List<TypeCompatibilityDto> incompatibleTypes,
            String godsMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailDto():
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.behaviorTendencies,
            _that.compatibleTypes,
            _that.incompatibleTypes,
            _that.godsMessage);
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
            WeatherPersonalityCode typeCode,
            String typeName,
            String typeCatchphrase,
            String typeImageUrl,
            String rulingStatement,
            List<AxisFeatureDto> axisFeatures,
            List<BehaviorTendencyDto> behaviorTendencies,
            List<TypeCompatibilityDto> compatibleTypes,
            List<TypeCompatibilityDto> incompatibleTypes,
            String godsMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterDetailDto() when $default != null:
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.behaviorTendencies,
            _that.compatibleTypes,
            _that.incompatibleTypes,
            _that.godsMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherPersonalityCharacterDetailDto
    implements WeatherPersonalityCharacterDetailDto {
  const _WeatherPersonalityCharacterDetailDto(
      {required this.typeCode,
      required this.typeName,
      required this.typeCatchphrase,
      required this.typeImageUrl,
      required this.rulingStatement,
      required final List<AxisFeatureDto> axisFeatures,
      required final List<BehaviorTendencyDto> behaviorTendencies,
      required final List<TypeCompatibilityDto> compatibleTypes,
      required final List<TypeCompatibilityDto> incompatibleTypes,
      required this.godsMessage})
      : _axisFeatures = axisFeatures,
        _behaviorTendencies = behaviorTendencies,
        _compatibleTypes = compatibleTypes,
        _incompatibleTypes = incompatibleTypes;
  factory _WeatherPersonalityCharacterDetailDto.fromJson(
          Map<String, dynamic> json) =>
      _$WeatherPersonalityCharacterDetailDtoFromJson(json);

  @override
  final WeatherPersonalityCode typeCode;
  @override
  final String typeName;
  @override
  final String typeCatchphrase;
  @override
  final String typeImageUrl;
  @override
  final String rulingStatement;
  final List<AxisFeatureDto> _axisFeatures;
  @override
  List<AxisFeatureDto> get axisFeatures {
    if (_axisFeatures is EqualUnmodifiableListView) return _axisFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_axisFeatures);
  }

  final List<BehaviorTendencyDto> _behaviorTendencies;
  @override
  List<BehaviorTendencyDto> get behaviorTendencies {
    if (_behaviorTendencies is EqualUnmodifiableListView)
      return _behaviorTendencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_behaviorTendencies);
  }

  final List<TypeCompatibilityDto> _compatibleTypes;
  @override
  List<TypeCompatibilityDto> get compatibleTypes {
    if (_compatibleTypes is EqualUnmodifiableListView) return _compatibleTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_compatibleTypes);
  }

  final List<TypeCompatibilityDto> _incompatibleTypes;
  @override
  List<TypeCompatibilityDto> get incompatibleTypes {
    if (_incompatibleTypes is EqualUnmodifiableListView)
      return _incompatibleTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incompatibleTypes);
  }

  @override
  final String godsMessage;

  /// Create a copy of WeatherPersonalityCharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityCharacterDetailDtoCopyWith<
          _WeatherPersonalityCharacterDetailDto>
      get copyWith => __$WeatherPersonalityCharacterDetailDtoCopyWithImpl<
          _WeatherPersonalityCharacterDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherPersonalityCharacterDetailDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityCharacterDetailDto &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCatchphrase, typeCatchphrase) ||
                other.typeCatchphrase == typeCatchphrase) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl) &&
            (identical(other.rulingStatement, rulingStatement) ||
                other.rulingStatement == rulingStatement) &&
            const DeepCollectionEquality()
                .equals(other._axisFeatures, _axisFeatures) &&
            const DeepCollectionEquality()
                .equals(other._behaviorTendencies, _behaviorTendencies) &&
            const DeepCollectionEquality()
                .equals(other._compatibleTypes, _compatibleTypes) &&
            const DeepCollectionEquality()
                .equals(other._incompatibleTypes, _incompatibleTypes) &&
            (identical(other.godsMessage, godsMessage) ||
                other.godsMessage == godsMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeCode,
      typeName,
      typeCatchphrase,
      typeImageUrl,
      rulingStatement,
      const DeepCollectionEquality().hash(_axisFeatures),
      const DeepCollectionEquality().hash(_behaviorTendencies),
      const DeepCollectionEquality().hash(_compatibleTypes),
      const DeepCollectionEquality().hash(_incompatibleTypes),
      godsMessage);

  @override
  String toString() {
    return 'WeatherPersonalityCharacterDetailDto(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeImageUrl: $typeImageUrl, rulingStatement: $rulingStatement, axisFeatures: $axisFeatures, behaviorTendencies: $behaviorTendencies, compatibleTypes: $compatibleTypes, incompatibleTypes: $incompatibleTypes, godsMessage: $godsMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityCharacterDetailDtoCopyWith<$Res>
    implements $WeatherPersonalityCharacterDetailDtoCopyWith<$Res> {
  factory _$WeatherPersonalityCharacterDetailDtoCopyWith(
          _WeatherPersonalityCharacterDetailDto value,
          $Res Function(_WeatherPersonalityCharacterDetailDto) _then) =
      __$WeatherPersonalityCharacterDetailDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeCatchphrase,
      String typeImageUrl,
      String rulingStatement,
      List<AxisFeatureDto> axisFeatures,
      List<BehaviorTendencyDto> behaviorTendencies,
      List<TypeCompatibilityDto> compatibleTypes,
      List<TypeCompatibilityDto> incompatibleTypes,
      String godsMessage});
}

/// @nodoc
class __$WeatherPersonalityCharacterDetailDtoCopyWithImpl<$Res>
    implements _$WeatherPersonalityCharacterDetailDtoCopyWith<$Res> {
  __$WeatherPersonalityCharacterDetailDtoCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityCharacterDetailDto _self;
  final $Res Function(_WeatherPersonalityCharacterDetailDto) _then;

  /// Create a copy of WeatherPersonalityCharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCatchphrase = null,
    Object? typeImageUrl = null,
    Object? rulingStatement = null,
    Object? axisFeatures = null,
    Object? behaviorTendencies = null,
    Object? compatibleTypes = null,
    Object? incompatibleTypes = null,
    Object? godsMessage = null,
  }) {
    return _then(_WeatherPersonalityCharacterDetailDto(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityCode,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeCatchphrase: null == typeCatchphrase
          ? _self.typeCatchphrase
          : typeCatchphrase // ignore: cast_nullable_to_non_nullable
              as String,
      typeImageUrl: null == typeImageUrl
          ? _self.typeImageUrl
          : typeImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rulingStatement: null == rulingStatement
          ? _self.rulingStatement
          : rulingStatement // ignore: cast_nullable_to_non_nullable
              as String,
      axisFeatures: null == axisFeatures
          ? _self._axisFeatures
          : axisFeatures // ignore: cast_nullable_to_non_nullable
              as List<AxisFeatureDto>,
      behaviorTendencies: null == behaviorTendencies
          ? _self._behaviorTendencies
          : behaviorTendencies // ignore: cast_nullable_to_non_nullable
              as List<BehaviorTendencyDto>,
      compatibleTypes: null == compatibleTypes
          ? _self._compatibleTypes
          : compatibleTypes // ignore: cast_nullable_to_non_nullable
              as List<TypeCompatibilityDto>,
      incompatibleTypes: null == incompatibleTypes
          ? _self._incompatibleTypes
          : incompatibleTypes // ignore: cast_nullable_to_non_nullable
              as List<TypeCompatibilityDto>,
      godsMessage: null == godsMessage
          ? _self.godsMessage
          : godsMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
