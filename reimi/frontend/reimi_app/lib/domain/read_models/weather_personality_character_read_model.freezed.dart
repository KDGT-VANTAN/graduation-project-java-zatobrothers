// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_personality_character_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherPersonalityCharacterReadModel {
  WeatherPersonalityCode get typeCode;
  String get typeName;
  String get typeCatchphrase;
  String get typeImageUrl;

  /// Create a copy of WeatherPersonalityCharacterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherPersonalityCharacterReadModelCopyWith<
          WeatherPersonalityCharacterReadModel>
      get copyWith => _$WeatherPersonalityCharacterReadModelCopyWithImpl<
              WeatherPersonalityCharacterReadModel>(
          this as WeatherPersonalityCharacterReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherPersonalityCharacterReadModel &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCatchphrase, typeCatchphrase) ||
                other.typeCatchphrase == typeCatchphrase) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, typeCode, typeName, typeCatchphrase, typeImageUrl);

  @override
  String toString() {
    return 'WeatherPersonalityCharacterReadModel(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeImageUrl: $typeImageUrl)';
  }
}

/// @nodoc
abstract mixin class $WeatherPersonalityCharacterReadModelCopyWith<$Res> {
  factory $WeatherPersonalityCharacterReadModelCopyWith(
          WeatherPersonalityCharacterReadModel value,
          $Res Function(WeatherPersonalityCharacterReadModel) _then) =
      _$WeatherPersonalityCharacterReadModelCopyWithImpl;
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeCatchphrase,
      String typeImageUrl});
}

/// @nodoc
class _$WeatherPersonalityCharacterReadModelCopyWithImpl<$Res>
    implements $WeatherPersonalityCharacterReadModelCopyWith<$Res> {
  _$WeatherPersonalityCharacterReadModelCopyWithImpl(this._self, this._then);

  final WeatherPersonalityCharacterReadModel _self;
  final $Res Function(WeatherPersonalityCharacterReadModel) _then;

  /// Create a copy of WeatherPersonalityCharacterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCatchphrase = null,
    Object? typeImageUrl = null,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [WeatherPersonalityCharacterReadModel].
extension WeatherPersonalityCharacterReadModelPatterns
    on WeatherPersonalityCharacterReadModel {
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
    TResult Function(_WeatherPersonalityCharacterReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterReadModel() when $default != null:
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
    TResult Function(_WeatherPersonalityCharacterReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterReadModel():
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
    TResult? Function(_WeatherPersonalityCharacterReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterReadModel() when $default != null:
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
    TResult Function(WeatherPersonalityCode typeCode, String typeName,
            String typeCatchphrase, String typeImageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterReadModel() when $default != null:
        return $default(_that.typeCode, _that.typeName, _that.typeCatchphrase,
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
    TResult Function(WeatherPersonalityCode typeCode, String typeName,
            String typeCatchphrase, String typeImageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterReadModel():
        return $default(_that.typeCode, _that.typeName, _that.typeCatchphrase,
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
    TResult? Function(WeatherPersonalityCode typeCode, String typeName,
            String typeCatchphrase, String typeImageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherPersonalityCharacterReadModel() when $default != null:
        return $default(_that.typeCode, _that.typeName, _that.typeCatchphrase,
            _that.typeImageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherPersonalityCharacterReadModel
    implements WeatherPersonalityCharacterReadModel {
  const _WeatherPersonalityCharacterReadModel(
      {required this.typeCode,
      required this.typeName,
      required this.typeCatchphrase,
      required this.typeImageUrl});

  @override
  final WeatherPersonalityCode typeCode;
  @override
  final String typeName;
  @override
  final String typeCatchphrase;
  @override
  final String typeImageUrl;

  /// Create a copy of WeatherPersonalityCharacterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherPersonalityCharacterReadModelCopyWith<
          _WeatherPersonalityCharacterReadModel>
      get copyWith => __$WeatherPersonalityCharacterReadModelCopyWithImpl<
          _WeatherPersonalityCharacterReadModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherPersonalityCharacterReadModel &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.typeCatchphrase, typeCatchphrase) ||
                other.typeCatchphrase == typeCatchphrase) &&
            (identical(other.typeImageUrl, typeImageUrl) ||
                other.typeImageUrl == typeImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, typeCode, typeName, typeCatchphrase, typeImageUrl);

  @override
  String toString() {
    return 'WeatherPersonalityCharacterReadModel(typeCode: $typeCode, typeName: $typeName, typeCatchphrase: $typeCatchphrase, typeImageUrl: $typeImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$WeatherPersonalityCharacterReadModelCopyWith<$Res>
    implements $WeatherPersonalityCharacterReadModelCopyWith<$Res> {
  factory _$WeatherPersonalityCharacterReadModelCopyWith(
          _WeatherPersonalityCharacterReadModel value,
          $Res Function(_WeatherPersonalityCharacterReadModel) _then) =
      __$WeatherPersonalityCharacterReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherPersonalityCode typeCode,
      String typeName,
      String typeCatchphrase,
      String typeImageUrl});
}

/// @nodoc
class __$WeatherPersonalityCharacterReadModelCopyWithImpl<$Res>
    implements _$WeatherPersonalityCharacterReadModelCopyWith<$Res> {
  __$WeatherPersonalityCharacterReadModelCopyWithImpl(this._self, this._then);

  final _WeatherPersonalityCharacterReadModel _self;
  final $Res Function(_WeatherPersonalityCharacterReadModel) _then;

  /// Create a copy of WeatherPersonalityCharacterReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeCode = null,
    Object? typeName = null,
    Object? typeCatchphrase = null,
    Object? typeImageUrl = null,
  }) {
    return _then(_WeatherPersonalityCharacterReadModel(
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
    ));
  }
}

// dart format on
