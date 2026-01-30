// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityDetailDto {
  WeatherPersonalityCode get typeCode;
  String get typeName;
  String get typeCatchphrase;
  String get typeImageUrl;
  String get rulingStatement;
  List<AxisFeatureDto> get axisFeatures;
  Map<WeatherPersonalityAxis, int> get userAxisScore;
  List<BehaviorTendencyDto> get behaviorTendencies;
  List<TypeCompatibilityDto> get compatibleTypes;
  List<TypeCompatibilityDto> get incompatibleTypes;
  String get godsMessage;

  /// Create a copy of WeatherPersonalityDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityDetailDtoCopyWith<WeatherPersonalityDetailDto>
      get copyWith => _$WeatherPersonalityDetailDtoCopyWithImpl<
              WeatherPersonalityDetailDto>(
          this as WeatherPersonalityDetailDto, _$identity);

  /// Serializes this WeatherPersonalityDetailDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityDetailDto &&
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
                .equals(other.userAxisScore, userAxisScore) &&
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
      const DeepCollectionEquality().hash(userAxisScore),
      const DeepCollectionEquality().hash(behaviorTendencies),
      const DeepCollectionEquality().hash(compatibleTypes),
      const DeepCollectionEquality().hash(incompatibleTypes),
      godsMessage);

  @override
  String toString() {
    return 'WeatherPersonalityDetailDto(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeImageUrl: $typeImageUrl, rulingStatement: $rulingStatement, axisFeatures: $axisFeatures, userAxisScore: $userAxisScore, behaviorTendencies: $behaviorTendencies, compatibleTypes: $compatibleTypes, incompatibleTypes: $incompatibleTypes, godsMessage: $godsMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityDetailDtoCopyWith<$Res> {
  factory $WeatherPersonalityDetailDtoCopyWith(
          WeatherPersonalityDetailDto value,
          $Res Function(WeatherPersonalityDetailDto) _then) =
      _$WeatherPersonalityDetailDtoCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeCatchphrase,
      String typeImageUrl,
      String rulingStatement,
      List<AxisFeatureDto> axisFeatures,
      Map<WeatherPersonalityAxis, int> userAxisScore,
      List<BehaviorTendencyDto> behaviorTendencies,
      List<TypeCompatibilityDto> compatibleTypes,
      List<TypeCompatibilityDto> incompatibleTypes,
      String godsMessage});
}

/// @nodoc
class _$WeatherPersonalityDetailDtoCopyWithImpl<$Res>
    implements $WeatherPersonalityDetailDtoCopyWith<$Res> {
  _$WeatherPersonalityDetailDtoCopyWithImpl(this._self, this._then);

  final WeatherPersonalityDetailDto _self;
  final $Res Function(WeatherPersonalityDetailDto) _then;

  /// Create a copy of WeatherPersonalityDetailDto
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
    Object? userAxisScore = null,
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
      userAxisScore: null == userAxisScore
          ? _self.userAxisScore
          : userAxisScore // ignore: cast_nullable_to_non_nullable
              as Map<WeatherPersonalityAxis, int>,
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

/// Adds pattern-matching-related methods to [WeatherPersonalityDetailDto].
extension WeatherPersonalityDetailDtoPatterns on WeatherPersonalityDetailDto {
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
    TResult Function(_WeatherPersonalityDetailDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailDto() when $default != null:
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
    TResult Function(_WeatherPersonalityDetailDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailDto():
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
    TResult? Function(_WeatherPersonalityDetailDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailDto() when $default != null:
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
            Map<WeatherPersonalityAxis, int> userAxisScore,
            List<BehaviorTendencyDto> behaviorTendencies,
            List<TypeCompatibilityDto> compatibleTypes,
            List<TypeCompatibilityDto> incompatibleTypes,
            String godsMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailDto() when $default != null:
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.userAxisScore,
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
            Map<WeatherPersonalityAxis, int> userAxisScore,
            List<BehaviorTendencyDto> behaviorTendencies,
            List<TypeCompatibilityDto> compatibleTypes,
            List<TypeCompatibilityDto> incompatibleTypes,
            String godsMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailDto():
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.userAxisScore,
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
            Map<WeatherPersonalityAxis, int> userAxisScore,
            List<BehaviorTendencyDto> behaviorTendencies,
            List<TypeCompatibilityDto> compatibleTypes,
            List<TypeCompatibilityDto> incompatibleTypes,
            String godsMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityDetailDto() when $default != null:
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.userAxisScore,
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
class _WeatherPersonalityDetailDto implements WeatherPersonalityDetailDto {
  const _WeatherPersonalityDetailDto(
      {required this.typeCode,
      required this.typeName,
      required this.typeCatchphrase,
      required this.typeImageUrl,
      required this.rulingStatement,
      required final List<AxisFeatureDto> axisFeatures,
      required final Map<WeatherPersonalityAxis, int> userAxisScore,
      required final List<BehaviorTendencyDto> behaviorTendencies,
      required final List<TypeCompatibilityDto> compatibleTypes,
      required final List<TypeCompatibilityDto> incompatibleTypes,
      required this.godsMessage})
      : _axisFeatures = axisFeatures,
        _userAxisScore = userAxisScore,
        _behaviorTendencies = behaviorTendencies,
        _compatibleTypes = compatibleTypes,
        _incompatibleTypes = incompatibleTypes;
  factory _WeatherPersonalityDetailDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherPersonalityDetailDtoFromJson(json);

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

  final Map<WeatherPersonalityAxis, int> _userAxisScore;
  @override
  Map<WeatherPersonalityAxis, int> get userAxisScore {
    if (_userAxisScore is EqualUnmodifiableMapView) return _userAxisScore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userAxisScore);
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

  /// Create a copy of WeatherPersonalityDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityDetailDtoCopyWith<_WeatherPersonalityDetailDto>
      get copyWith => __$WeatherPersonalityDetailDtoCopyWithImpl<
          _WeatherPersonalityDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherPersonalityDetailDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityDetailDto &&
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
                .equals(other._userAxisScore, _userAxisScore) &&
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
      const DeepCollectionEquality().hash(_userAxisScore),
      const DeepCollectionEquality().hash(_behaviorTendencies),
      const DeepCollectionEquality().hash(_compatibleTypes),
      const DeepCollectionEquality().hash(_incompatibleTypes),
      godsMessage);

  @override
  String toString() {
    return 'WeatherPersonalityDetailDto(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeImageUrl: $typeImageUrl, rulingStatement: $rulingStatement, axisFeatures: $axisFeatures, userAxisScore: $userAxisScore, behaviorTendencies: $behaviorTendencies, compatibleTypes: $compatibleTypes, incompatibleTypes: $incompatibleTypes, godsMessage: $godsMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityDetailDtoCopyWith<$Res>
    implements $WeatherPersonalityDetailDtoCopyWith<$Res> {
  factory _$WeatherPersonalityDetailDtoCopyWith(
          _WeatherPersonalityDetailDto value,
          $Res Function(_WeatherPersonalityDetailDto) _then) =
      __$WeatherPersonalityDetailDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeCatchphrase,
      String typeImageUrl,
      String rulingStatement,
      List<AxisFeatureDto> axisFeatures,
      Map<WeatherPersonalityAxis, int> userAxisScore,
      List<BehaviorTendencyDto> behaviorTendencies,
      List<TypeCompatibilityDto> compatibleTypes,
      List<TypeCompatibilityDto> incompatibleTypes,
      String godsMessage});
}

/// @nodoc
class __$WeatherPersonalityDetailDtoCopyWithImpl<$Res>
    implements _$WeatherPersonalityDetailDtoCopyWith<$Res> {
  __$WeatherPersonalityDetailDtoCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityDetailDto _self;
  final $Res Function(_WeatherPersonalityDetailDto) _then;

  /// Create a copy of WeatherPersonalityDetailDto
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
    Object? userAxisScore = null,
    Object? behaviorTendencies = null,
    Object? compatibleTypes = null,
    Object? incompatibleTypes = null,
    Object? godsMessage = null,
  }) {
    return _then(_WeatherPersonalityDetailDto(
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
      userAxisScore: null == userAxisScore
          ? _self._userAxisScore
          : userAxisScore // ignore: cast_nullable_to_non_nullable
              as Map<WeatherPersonalityAxis, int>,
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
