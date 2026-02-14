// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_out_suggestion_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoOutSuggestionReadModel {
  @YyyyMmDdDateConverter()
  DateTime get date;
  String get place;
  GoOutPlanReadModel get goOutPlan;
  String get weatherTrendency;

  /// Create a copy of GoOutSuggestionReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoOutSuggestionReadModelCopyWith<GoOutSuggestionReadModel> get copyWith =>
      _$GoOutSuggestionReadModelCopyWithImpl<GoOutSuggestionReadModel>(
          this as GoOutSuggestionReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoOutSuggestionReadModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.goOutPlan, goOutPlan) ||
                other.goOutPlan == goOutPlan) &&
            (identical(other.weatherTrendency, weatherTrendency) ||
                other.weatherTrendency == weatherTrendency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, place, goOutPlan, weatherTrendency);

  @override
  String toString() {
    return 'GoOutSuggestionReadModel(date: $date, place: $place, goOutPlan: $goOutPlan, weatherTrendency: $weatherTrendency)';
  }
}

/// @nodoc
abstract mixin class $GoOutSuggestionReadModelCopyWith<$Res> {
  factory $GoOutSuggestionReadModelCopyWith(GoOutSuggestionReadModel value,
          $Res Function(GoOutSuggestionReadModel) _then) =
      _$GoOutSuggestionReadModelCopyWithImpl;
  @useResult
  $Res call(
      {@YyyyMmDdDateConverter() DateTime date,
      String place,
      GoOutPlanReadModel goOutPlan,
      String weatherTrendency});

  $GoOutPlanReadModelCopyWith<$Res> get goOutPlan;
}

/// @nodoc
class _$GoOutSuggestionReadModelCopyWithImpl<$Res>
    implements $GoOutSuggestionReadModelCopyWith<$Res> {
  _$GoOutSuggestionReadModelCopyWithImpl(this._self, this._then);

  final GoOutSuggestionReadModel _self;
  final $Res Function(GoOutSuggestionReadModel) _then;

  /// Create a copy of GoOutSuggestionReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? place = null,
    Object? goOutPlan = null,
    Object? weatherTrendency = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      goOutPlan: null == goOutPlan
          ? _self.goOutPlan
          : goOutPlan // ignore: cast_nullable_to_non_nullable
              as GoOutPlanReadModel,
      weatherTrendency: null == weatherTrendency
          ? _self.weatherTrendency
          : weatherTrendency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of GoOutSuggestionReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoOutPlanReadModelCopyWith<$Res> get goOutPlan {
    return $GoOutPlanReadModelCopyWith<$Res>(_self.goOutPlan, (value) {
      return _then(_self.copyWith(goOutPlan: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GoOutSuggestionReadModel].
extension GoOutSuggestionReadModelPatterns on GoOutSuggestionReadModel {
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
    TResult Function(_GoOutSuggestionReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoOutSuggestionReadModel() when $default != null:
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
    TResult Function(_GoOutSuggestionReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutSuggestionReadModel():
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
    TResult? Function(_GoOutSuggestionReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutSuggestionReadModel() when $default != null:
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
    TResult Function(@YyyyMmDdDateConverter() DateTime date, String place,
            GoOutPlanReadModel goOutPlan, String weatherTrendency)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoOutSuggestionReadModel() when $default != null:
        return $default(
            _that.date, _that.place, _that.goOutPlan, _that.weatherTrendency);
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
    TResult Function(@YyyyMmDdDateConverter() DateTime date, String place,
            GoOutPlanReadModel goOutPlan, String weatherTrendency)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutSuggestionReadModel():
        return $default(
            _that.date, _that.place, _that.goOutPlan, _that.weatherTrendency);
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
    TResult? Function(@YyyyMmDdDateConverter() DateTime date, String place,
            GoOutPlanReadModel goOutPlan, String weatherTrendency)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoOutSuggestionReadModel() when $default != null:
        return $default(
            _that.date, _that.place, _that.goOutPlan, _that.weatherTrendency);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GoOutSuggestionReadModel implements GoOutSuggestionReadModel {
  const _GoOutSuggestionReadModel(
      {@YyyyMmDdDateConverter() required this.date,
      required this.place,
      required this.goOutPlan,
      required this.weatherTrendency});

  @override
  @YyyyMmDdDateConverter()
  final DateTime date;
  @override
  final String place;
  @override
  final GoOutPlanReadModel goOutPlan;
  @override
  final String weatherTrendency;

  /// Create a copy of GoOutSuggestionReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoOutSuggestionReadModelCopyWith<_GoOutSuggestionReadModel> get copyWith =>
      __$GoOutSuggestionReadModelCopyWithImpl<_GoOutSuggestionReadModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoOutSuggestionReadModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.goOutPlan, goOutPlan) ||
                other.goOutPlan == goOutPlan) &&
            (identical(other.weatherTrendency, weatherTrendency) ||
                other.weatherTrendency == weatherTrendency));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, place, goOutPlan, weatherTrendency);

  @override
  String toString() {
    return 'GoOutSuggestionReadModel(date: $date, place: $place, goOutPlan: $goOutPlan, weatherTrendency: $weatherTrendency)';
  }
}

/// @nodoc
abstract mixin class _$GoOutSuggestionReadModelCopyWith<$Res>
    implements $GoOutSuggestionReadModelCopyWith<$Res> {
  factory _$GoOutSuggestionReadModelCopyWith(_GoOutSuggestionReadModel value,
          $Res Function(_GoOutSuggestionReadModel) _then) =
      __$GoOutSuggestionReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@YyyyMmDdDateConverter() DateTime date,
      String place,
      GoOutPlanReadModel goOutPlan,
      String weatherTrendency});

  @override
  $GoOutPlanReadModelCopyWith<$Res> get goOutPlan;
}

/// @nodoc
class __$GoOutSuggestionReadModelCopyWithImpl<$Res>
    implements _$GoOutSuggestionReadModelCopyWith<$Res> {
  __$GoOutSuggestionReadModelCopyWithImpl(this._self, this._then);

  final _GoOutSuggestionReadModel _self;
  final $Res Function(_GoOutSuggestionReadModel) _then;

  /// Create a copy of GoOutSuggestionReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? place = null,
    Object? goOutPlan = null,
    Object? weatherTrendency = null,
  }) {
    return _then(_GoOutSuggestionReadModel(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      goOutPlan: null == goOutPlan
          ? _self.goOutPlan
          : goOutPlan // ignore: cast_nullable_to_non_nullable
              as GoOutPlanReadModel,
      weatherTrendency: null == weatherTrendency
          ? _self.weatherTrendency
          : weatherTrendency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of GoOutSuggestionReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoOutPlanReadModelCopyWith<$Res> get goOutPlan {
    return $GoOutPlanReadModelCopyWith<$Res>(_self.goOutPlan, (value) {
      return _then(_self.copyWith(goOutPlan: value));
    });
  }
}

// dart format on
