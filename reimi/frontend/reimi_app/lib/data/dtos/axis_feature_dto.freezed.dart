// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'axis_feature_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AxisFeatureDto {
  WeatherPersonalityAxis get axis;
  WeatherPersonalityPolarity get polarity;
  String get description;

  /// Create a copy of AxisFeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AxisFeatureDtoCopyWith<AxisFeatureDto> get copyWith =>
      _$AxisFeatureDtoCopyWithImpl<AxisFeatureDto>(
          this as AxisFeatureDto, _$identity);

  /// Serializes this AxisFeatureDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AxisFeatureDto &&
            (identical(other.axis, axis) || other.axis == axis) &&
            (identical(other.polarity, polarity) ||
                other.polarity == polarity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, axis, polarity, description);

  @override
  String toString() {
    return 'AxisFeatureDto(axis: $axis, polarity: $polarity, description: $description)';
  }
}

/// @nodoc
abstract mixin class $AxisFeatureDtoCopyWith<$Res> {
  factory $AxisFeatureDtoCopyWith(
          AxisFeatureDto value, $Res Function(AxisFeatureDto) _then) =
      _$AxisFeatureDtoCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityAxis axis,
      WeatherPersonalityPolarity polarity,
      String description});
}

/// @nodoc
class _$AxisFeatureDtoCopyWithImpl<$Res>
    implements $AxisFeatureDtoCopyWith<$Res> {
  _$AxisFeatureDtoCopyWithImpl(this._self, this._then);

  final AxisFeatureDto _self;
  final $Res Function(AxisFeatureDto) _then;

  /// Create a copy of AxisFeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axis = null,
    Object? polarity = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      axis: null == axis
          ? _self.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityAxis,
      polarity: null == polarity
          ? _self.polarity
          : polarity // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityPolarity,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AxisFeatureDto].
extension AxisFeatureDtoPatterns on AxisFeatureDto {
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
    TResult Function(_AxisFeatureDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureDto() when $default != null:
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
    TResult Function(_AxisFeatureDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureDto():
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
    TResult? Function(_AxisFeatureDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureDto() when $default != null:
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
    TResult Function(WeatherPersonalityAxis axis,
            WeatherPersonalityPolarity polarity, String description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureDto() when $default != null:
        return $default(_that.axis, _that.polarity, _that.description);
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
    TResult Function(WeatherPersonalityAxis axis,
            WeatherPersonalityPolarity polarity, String description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureDto():
        return $default(_that.axis, _that.polarity, _that.description);
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
    TResult? Function(WeatherPersonalityAxis axis,
            WeatherPersonalityPolarity polarity, String description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureDto() when $default != null:
        return $default(_that.axis, _that.polarity, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AxisFeatureDto implements AxisFeatureDto {
  const _AxisFeatureDto(
      {required this.axis, required this.polarity, required this.description});
  factory _AxisFeatureDto.fromJson(Map<String, dynamic> json) =>
      _$AxisFeatureDtoFromJson(json);

  @override
  final WeatherPersonalityAxis axis;
  @override
  final WeatherPersonalityPolarity polarity;
  @override
  final String description;

  /// Create a copy of AxisFeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AxisFeatureDtoCopyWith<_AxisFeatureDto> get copyWith =>
      __$AxisFeatureDtoCopyWithImpl<_AxisFeatureDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AxisFeatureDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AxisFeatureDto &&
            (identical(other.axis, axis) || other.axis == axis) &&
            (identical(other.polarity, polarity) ||
                other.polarity == polarity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, axis, polarity, description);

  @override
  String toString() {
    return 'AxisFeatureDto(axis: $axis, polarity: $polarity, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$AxisFeatureDtoCopyWith<$Res>
    implements $AxisFeatureDtoCopyWith<$Res> {
  factory _$AxisFeatureDtoCopyWith(
          _AxisFeatureDto value, $Res Function(_AxisFeatureDto) _then) =
      __$AxisFeatureDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityAxis axis,
      WeatherPersonalityPolarity polarity,
      String description});
}

/// @nodoc
class __$AxisFeatureDtoCopyWithImpl<$Res>
    implements _$AxisFeatureDtoCopyWith<$Res> {
  __$AxisFeatureDtoCopyWithImpl(this._self, this._then);

  final _AxisFeatureDto _self;
  final $Res Function(_AxisFeatureDto) _then;

  /// Create a copy of AxisFeatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? axis = null,
    Object? polarity = null,
    Object? description = null,
  }) {
    return _then(_AxisFeatureDto(
      axis: null == axis
          ? _self.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityAxis,
      polarity: null == polarity
          ? _self.polarity
          : polarity // ignore: cast_nullable_to_non_nullable
              as WeatherPersonalityPolarity,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
