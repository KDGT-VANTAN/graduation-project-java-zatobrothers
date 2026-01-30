// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'axis_feature_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AxisFeatureReadModel {
  WeatherPersonalityAxis get axis;
  WeatherPersonalityPolarity get polarity;
  String get description;

  /// Create a copy of AxisFeatureReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AxisFeatureReadModelCopyWith<AxisFeatureReadModel> get copyWith =>
      _$AxisFeatureReadModelCopyWithImpl<AxisFeatureReadModel>(
          this as AxisFeatureReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AxisFeatureReadModel &&
            (identical(other.axis, axis) || other.axis == axis) &&
            (identical(other.polarity, polarity) ||
                other.polarity == polarity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, axis, polarity, description);

  @override
  String toString() {
    return 'AxisFeatureReadModel(axis: $axis, polarity: $polarity, description: $description)';
  }
}

/// @nodoc
abstract mixin class $AxisFeatureReadModelCopyWith<$Res> {
  factory $AxisFeatureReadModelCopyWith(AxisFeatureReadModel value,
          $Res Function(AxisFeatureReadModel) _then) =
      _$AxisFeatureReadModelCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityAxis axis,
      WeatherPersonalityPolarity polarity,
      String description});
}

/// @nodoc
class _$AxisFeatureReadModelCopyWithImpl<$Res>
    implements $AxisFeatureReadModelCopyWith<$Res> {
  _$AxisFeatureReadModelCopyWithImpl(this._self, this._then);

  final AxisFeatureReadModel _self;
  final $Res Function(AxisFeatureReadModel) _then;

  /// Create a copy of AxisFeatureReadModel
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

/// Adds pattern-matching-related methods to [AxisFeatureReadModel].
extension AxisFeatureReadModelPatterns on AxisFeatureReadModel {
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
    TResult Function(_AxisFeatureReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureReadModel() when $default != null:
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
    TResult Function(_AxisFeatureReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureReadModel():
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
    TResult? Function(_AxisFeatureReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AxisFeatureReadModel() when $default != null:
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
      case _AxisFeatureReadModel() when $default != null:
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
      case _AxisFeatureReadModel():
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
      case _AxisFeatureReadModel() when $default != null:
        return $default(_that.axis, _that.polarity, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AxisFeatureReadModel implements AxisFeatureReadModel {
  const _AxisFeatureReadModel(
      {required this.axis, required this.polarity, required this.description});

  @override
  final WeatherPersonalityAxis axis;
  @override
  final WeatherPersonalityPolarity polarity;
  @override
  final String description;

  /// Create a copy of AxisFeatureReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AxisFeatureReadModelCopyWith<_AxisFeatureReadModel> get copyWith =>
      __$AxisFeatureReadModelCopyWithImpl<_AxisFeatureReadModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AxisFeatureReadModel &&
            (identical(other.axis, axis) || other.axis == axis) &&
            (identical(other.polarity, polarity) ||
                other.polarity == polarity) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, axis, polarity, description);

  @override
  String toString() {
    return 'AxisFeatureReadModel(axis: $axis, polarity: $polarity, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$AxisFeatureReadModelCopyWith<$Res>
    implements $AxisFeatureReadModelCopyWith<$Res> {
  factory _$AxisFeatureReadModelCopyWith(_AxisFeatureReadModel value,
          $Res Function(_AxisFeatureReadModel) _then) =
      __$AxisFeatureReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityAxis axis,
      WeatherPersonalityPolarity polarity,
      String description});
}

/// @nodoc
class __$AxisFeatureReadModelCopyWithImpl<$Res>
    implements _$AxisFeatureReadModelCopyWith<$Res> {
  __$AxisFeatureReadModelCopyWithImpl(this._self, this._then);

  final _AxisFeatureReadModel _self;
  final $Res Function(_AxisFeatureReadModel) _then;

  /// Create a copy of AxisFeatureReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? axis = null,
    Object? polarity = null,
    Object? description = null,
  }) {
    return _then(_AxisFeatureReadModel(
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
