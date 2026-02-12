// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prefecture_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrefectureCity {
  String get prefecture;
  String get city;

  /// Create a copy of PrefectureCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrefectureCityCopyWith<PrefectureCity> get copyWith =>
      _$PrefectureCityCopyWithImpl<PrefectureCity>(
          this as PrefectureCity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrefectureCity &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefecture, city);

  @override
  String toString() {
    return 'PrefectureCity(prefecture: $prefecture, city: $city)';
  }
}

/// @nodoc
abstract mixin class $PrefectureCityCopyWith<$Res> {
  factory $PrefectureCityCopyWith(
          PrefectureCity value, $Res Function(PrefectureCity) _then) =
      _$PrefectureCityCopyWithImpl;
  @useResult
  $Res call({String prefecture, String city});
}

/// @nodoc
class _$PrefectureCityCopyWithImpl<$Res>
    implements $PrefectureCityCopyWith<$Res> {
  _$PrefectureCityCopyWithImpl(this._self, this._then);

  final PrefectureCity _self;
  final $Res Function(PrefectureCity) _then;

  /// Create a copy of PrefectureCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefecture = null,
    Object? city = null,
  }) {
    return _then(_self.copyWith(
      prefecture: null == prefecture
          ? _self.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PrefectureCity].
extension PrefectureCityPatterns on PrefectureCity {
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
    TResult Function(_PrefectureCity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PrefectureCity() when $default != null:
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
    TResult Function(_PrefectureCity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrefectureCity():
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
    TResult? Function(_PrefectureCity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrefectureCity() when $default != null:
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
    TResult Function(String prefecture, String city)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PrefectureCity() when $default != null:
        return $default(_that.prefecture, _that.city);
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
    TResult Function(String prefecture, String city) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrefectureCity():
        return $default(_that.prefecture, _that.city);
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
    TResult? Function(String prefecture, String city)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PrefectureCity() when $default != null:
        return $default(_that.prefecture, _that.city);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PrefectureCity extends PrefectureCity {
  const _PrefectureCity({required this.prefecture, required this.city})
      : super._();

  @override
  final String prefecture;
  @override
  final String city;

  /// Create a copy of PrefectureCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrefectureCityCopyWith<_PrefectureCity> get copyWith =>
      __$PrefectureCityCopyWithImpl<_PrefectureCity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrefectureCity &&
            (identical(other.prefecture, prefecture) ||
                other.prefecture == prefecture) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefecture, city);

  @override
  String toString() {
    return 'PrefectureCity(prefecture: $prefecture, city: $city)';
  }
}

/// @nodoc
abstract mixin class _$PrefectureCityCopyWith<$Res>
    implements $PrefectureCityCopyWith<$Res> {
  factory _$PrefectureCityCopyWith(
          _PrefectureCity value, $Res Function(_PrefectureCity) _then) =
      __$PrefectureCityCopyWithImpl;
  @override
  @useResult
  $Res call({String prefecture, String city});
}

/// @nodoc
class __$PrefectureCityCopyWithImpl<$Res>
    implements _$PrefectureCityCopyWith<$Res> {
  __$PrefectureCityCopyWithImpl(this._self, this._then);

  final _PrefectureCity _self;
  final $Res Function(_PrefectureCity) _then;

  /// Create a copy of PrefectureCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? prefecture = null,
    Object? city = null,
  }) {
    return _then(_PrefectureCity(
      prefecture: null == prefecture
          ? _self.prefecture
          : prefecture // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
