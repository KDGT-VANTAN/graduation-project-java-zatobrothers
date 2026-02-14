// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_out_plan_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoOutPlanReadModel {
  String get title;
  String get description;

  /// Create a copy of GoOutPlanReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoOutPlanReadModelCopyWith<GoOutPlanReadModel> get copyWith =>
      _$GoOutPlanReadModelCopyWithImpl<GoOutPlanReadModel>(
          this as GoOutPlanReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoOutPlanReadModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'GoOutPlanReadModel(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $GoOutPlanReadModelCopyWith<$Res> {
  factory $GoOutPlanReadModelCopyWith(
          GoOutPlanReadModel value, $Res Function(GoOutPlanReadModel) _then) =
      _$GoOutPlanReadModelCopyWithImpl;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$GoOutPlanReadModelCopyWithImpl<$Res>
    implements $GoOutPlanReadModelCopyWith<$Res> {
  _$GoOutPlanReadModelCopyWithImpl(this._self, this._then);

  final GoOutPlanReadModel _self;
  final $Res Function(GoOutPlanReadModel) _then;

  /// Create a copy of GoOutPlanReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [GoOutPlanReadModel].
extension GoOutPlanReadModelPatterns on GoOutPlanReadModel {
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
    TResult Function(_BehaviorTendencyReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel() when $default != null:
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
    TResult Function(_BehaviorTendencyReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel():
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
    TResult? Function(_BehaviorTendencyReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel() when $default != null:
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
    TResult Function(String title, String description)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel() when $default != null:
        return $default(_that.title, _that.description);
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
    TResult Function(String title, String description) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel():
        return $default(_that.title, _that.description);
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
    TResult? Function(String title, String description)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel() when $default != null:
        return $default(_that.title, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BehaviorTendencyReadModel implements GoOutPlanReadModel {
  const _BehaviorTendencyReadModel(
      {required this.title, required this.description});

  @override
  final String title;
  @override
  final String description;

  /// Create a copy of GoOutPlanReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BehaviorTendencyReadModelCopyWith<_BehaviorTendencyReadModel>
      get copyWith =>
          __$BehaviorTendencyReadModelCopyWithImpl<_BehaviorTendencyReadModel>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BehaviorTendencyReadModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'GoOutPlanReadModel(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$BehaviorTendencyReadModelCopyWith<$Res>
    implements $GoOutPlanReadModelCopyWith<$Res> {
  factory _$BehaviorTendencyReadModelCopyWith(_BehaviorTendencyReadModel value,
          $Res Function(_BehaviorTendencyReadModel) _then) =
      __$BehaviorTendencyReadModelCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$BehaviorTendencyReadModelCopyWithImpl<$Res>
    implements _$BehaviorTendencyReadModelCopyWith<$Res> {
  __$BehaviorTendencyReadModelCopyWithImpl(this._self, this._then);

  final _BehaviorTendencyReadModel _self;
  final $Res Function(_BehaviorTendencyReadModel) _then;

  /// Create a copy of GoOutPlanReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_BehaviorTendencyReadModel(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
