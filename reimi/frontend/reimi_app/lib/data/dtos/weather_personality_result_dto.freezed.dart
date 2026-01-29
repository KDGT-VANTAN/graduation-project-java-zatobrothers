// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityResultDto {
  String get typeCode;
  String get typeName;
  String get typeCatchphrase;
  String get typeCharacterImageUrl;
  String get rulingStatement;
  List<String> get axisFeatures;
  List<int> get axisScore;
  List<String> get behaviorTendencyList;
  String get godsMessage;

  /// Create a copy of WeatherPersonalityResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityResultDtoCopyWith<WeatherPersonalityResultDto>
      get copyWith => _$WeatherPersonalityResultDtoCopyWithImpl<
              WeatherPersonalityResultDto>(
          this as WeatherPersonalityResultDto, _$identity);

  /// Serializes this WeatherPersonalityResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityResultDto &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCatchphrase, typeCatchphrase) ||
                other.typeCatchphrase == typeCatchphrase) &&
            (identical(other.typeCharacterImageUrl, typeCharacterImageUrl) ||
                other.typeCharacterImageUrl == typeCharacterImageUrl) &&
            (identical(other.rulingStatement, rulingStatement) ||
                other.rulingStatement == rulingStatement) &&
            const DeepCollectionEquality()
                .equals(other.axisFeatures, axisFeatures) &&
            const DeepCollectionEquality().equals(other.axisScore, axisScore) &&
            const DeepCollectionEquality()
                .equals(other.behaviorTendencyList, behaviorTendencyList) &&
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
      typeCharacterImageUrl,
      rulingStatement,
      const DeepCollectionEquality().hash(axisFeatures),
      const DeepCollectionEquality().hash(axisScore),
      const DeepCollectionEquality().hash(behaviorTendencyList),
      godsMessage);

  @override
  String toString() {
    return 'WeatherPersonalityResultDto(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeCharacterImageUrl: $typeCharacterImageUrl, rulingStatement: $rulingStatement, axisFeatures: $axisFeatures, axisScore: $axisScore, behaviorTendencyList: $behaviorTendencyList, godsMessage: $godsMessage)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityResultDtoCopyWith<$Res> {
  factory $WeatherPersonalityResultDtoCopyWith(
          WeatherPersonalityResultDto value,
          $Res Function(WeatherPersonalityResultDto) _then) =
      _$WeatherPersonalityResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {String typeCode,
      String typeName,
      String typeCatchphrase,
      String typeCharacterImageUrl,
      String rulingStatement,
      List<String> axisFeatures,
      List<int> axisScore,
      List<String> behaviorTendencyList,
      String godsMessage});
}

/// @nodoc
class _$WeatherPersonalityResultDtoCopyWithImpl<$Res>
    implements $WeatherPersonalityResultDtoCopyWith<$Res> {
  _$WeatherPersonalityResultDtoCopyWithImpl(this._self, this._then);

  final WeatherPersonalityResultDto _self;
  final $Res Function(WeatherPersonalityResultDto) _then;

  /// Create a copy of WeatherPersonalityResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCatchphrase = null,
    Object? typeCharacterImageUrl = null,
    Object? rulingStatement = null,
    Object? axisFeatures = null,
    Object? axisScore = null,
    Object? behaviorTendencyList = null,
    Object? godsMessage = null,
  }) {
    return _then(_self.copyWith(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeCatchphrase: null == typeCatchphrase
          ? _self.typeCatchphrase
          : typeCatchphrase // ignore: cast_nullable_to_non_nullable
              as String,
      typeCharacterImageUrl: null == typeCharacterImageUrl
          ? _self.typeCharacterImageUrl
          : typeCharacterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rulingStatement: null == rulingStatement
          ? _self.rulingStatement
          : rulingStatement // ignore: cast_nullable_to_non_nullable
              as String,
      axisFeatures: null == axisFeatures
          ? _self.axisFeatures
          : axisFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      axisScore: null == axisScore
          ? _self.axisScore
          : axisScore // ignore: cast_nullable_to_non_nullable
              as List<int>,
      behaviorTendencyList: null == behaviorTendencyList
          ? _self.behaviorTendencyList
          : behaviorTendencyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      godsMessage: null == godsMessage
          ? _self.godsMessage
          : godsMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityResultDto].
extension WeatherPersonalityResultDtoPatterns on WeatherPersonalityResultDto {
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
    TResult Function(_WeatherPersonalityResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityResultDto() when $default != null:
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
    TResult Function(_WeatherPersonalityResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityResultDto():
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
    TResult? Function(_WeatherPersonalityResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityResultDto() when $default != null:
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
            String typeCode,
            String typeName,
            String typeCatchphrase,
            String typeCharacterImageUrl,
            String rulingStatement,
            List<String> axisFeatures,
            List<int> axisScore,
            List<String> behaviorTendencyList,
            String godsMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityResultDto() when $default != null:
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeCharacterImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.axisScore,
            _that.behaviorTendencyList,
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
            String typeCode,
            String typeName,
            String typeCatchphrase,
            String typeCharacterImageUrl,
            String rulingStatement,
            List<String> axisFeatures,
            List<int> axisScore,
            List<String> behaviorTendencyList,
            String godsMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityResultDto():
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeCharacterImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.axisScore,
            _that.behaviorTendencyList,
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
            String typeCode,
            String typeName,
            String typeCatchphrase,
            String typeCharacterImageUrl,
            String rulingStatement,
            List<String> axisFeatures,
            List<int> axisScore,
            List<String> behaviorTendencyList,
            String godsMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityResultDto() when $default != null:
        return $default(
            _that.typeCode,
            _that.typeName,
            _that.typeCatchphrase,
            _that.typeCharacterImageUrl,
            _that.rulingStatement,
            _that.axisFeatures,
            _that.axisScore,
            _that.behaviorTendencyList,
            _that.godsMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WeatherPersonalityResultDto implements WeatherPersonalityResultDto {
  const _WeatherPersonalityResultDto(
      {required this.typeCode,
      required this.typeName,
      required this.typeCatchphrase,
      required this.typeCharacterImageUrl,
      required this.rulingStatement,
      required final List<String> axisFeatures,
      required final List<int> axisScore,
      required final List<String> behaviorTendencyList,
      required this.godsMessage})
      : _axisFeatures = axisFeatures,
        _axisScore = axisScore,
        _behaviorTendencyList = behaviorTendencyList;
  factory _WeatherPersonalityResultDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherPersonalityResultDtoFromJson(json);

  @override
  final String typeCode;
  @override
  final String typeName;
  @override
  final String typeCatchphrase;
  @override
  final String typeCharacterImageUrl;
  @override
  final String rulingStatement;
  final List<String> _axisFeatures;
  @override
  List<String> get axisFeatures {
    if (_axisFeatures is EqualUnmodifiableListView) return _axisFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_axisFeatures);
  }

  final List<int> _axisScore;
  @override
  List<int> get axisScore {
    if (_axisScore is EqualUnmodifiableListView) return _axisScore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_axisScore);
  }

  final List<String> _behaviorTendencyList;
  @override
  List<String> get behaviorTendencyList {
    if (_behaviorTendencyList is EqualUnmodifiableListView)
      return _behaviorTendencyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_behaviorTendencyList);
  }

  @override
  final String godsMessage;

  /// Create a copy of WeatherPersonalityResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityResultDtoCopyWith<_WeatherPersonalityResultDto>
      get copyWith => __$WeatherPersonalityResultDtoCopyWithImpl<
          _WeatherPersonalityResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherPersonalityResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityResultDto &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCatchphrase, typeCatchphrase) ||
                other.typeCatchphrase == typeCatchphrase) &&
            (identical(other.typeCharacterImageUrl, typeCharacterImageUrl) ||
                other.typeCharacterImageUrl == typeCharacterImageUrl) &&
            (identical(other.rulingStatement, rulingStatement) ||
                other.rulingStatement == rulingStatement) &&
            const DeepCollectionEquality()
                .equals(other._axisFeatures, _axisFeatures) &&
            const DeepCollectionEquality()
                .equals(other._axisScore, _axisScore) &&
            const DeepCollectionEquality()
                .equals(other._behaviorTendencyList, _behaviorTendencyList) &&
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
      typeCharacterImageUrl,
      rulingStatement,
      const DeepCollectionEquality().hash(_axisFeatures),
      const DeepCollectionEquality().hash(_axisScore),
      const DeepCollectionEquality().hash(_behaviorTendencyList),
      godsMessage);

  @override
  String toString() {
    return 'WeatherPersonalityResultDto(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeCharacterImageUrl: $typeCharacterImageUrl, rulingStatement: $rulingStatement, axisFeatures: $axisFeatures, axisScore: $axisScore, behaviorTendencyList: $behaviorTendencyList, godsMessage: $godsMessage)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityResultDtoCopyWith<$Res>
    implements $WeatherPersonalityResultDtoCopyWith<$Res> {
  factory _$WeatherPersonalityResultDtoCopyWith(
          _WeatherPersonalityResultDto value,
          $Res Function(_WeatherPersonalityResultDto) _then) =
      __$WeatherPersonalityResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String typeCode,
      String typeName,
      String typeCatchphrase,
      String typeCharacterImageUrl,
      String rulingStatement,
      List<String> axisFeatures,
      List<int> axisScore,
      List<String> behaviorTendencyList,
      String godsMessage});
}

/// @nodoc
class __$WeatherPersonalityResultDtoCopyWithImpl<$Res>
    implements _$WeatherPersonalityResultDtoCopyWith<$Res> {
  __$WeatherPersonalityResultDtoCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityResultDto _self;
  final $Res Function(_WeatherPersonalityResultDto) _then;

  /// Create a copy of WeatherPersonalityResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCatchphrase = null,
    Object? typeCharacterImageUrl = null,
    Object? rulingStatement = null,
    Object? axisFeatures = null,
    Object? axisScore = null,
    Object? behaviorTendencyList = null,
    Object? godsMessage = null,
  }) {
    return _then(_WeatherPersonalityResultDto(
      typeCode: null == typeCode
          ? _self.typeCode
          : typeCode // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: null == typeName
          ? _self.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      typeCatchphrase: null == typeCatchphrase
          ? _self.typeCatchphrase
          : typeCatchphrase // ignore: cast_nullable_to_non_nullable
              as String,
      typeCharacterImageUrl: null == typeCharacterImageUrl
          ? _self.typeCharacterImageUrl
          : typeCharacterImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rulingStatement: null == rulingStatement
          ? _self.rulingStatement
          : rulingStatement // ignore: cast_nullable_to_non_nullable
              as String,
      axisFeatures: null == axisFeatures
          ? _self._axisFeatures
          : axisFeatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      axisScore: null == axisScore
          ? _self._axisScore
          : axisScore // ignore: cast_nullable_to_non_nullable
              as List<int>,
      behaviorTendencyList: null == behaviorTendencyList
          ? _self._behaviorTendencyList
          : behaviorTendencyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      godsMessage: null == godsMessage
          ? _self.godsMessage
          : godsMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
