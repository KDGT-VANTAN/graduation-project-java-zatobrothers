// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'behavior_tendency_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BehaviorTendencyReadModel {
  String get summary;
  String get detail;

  /// Create a copy of BehaviorTendencyReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BehaviorTendencyReadModelCopyWith<BehaviorTendencyReadModel> get copyWith =>
      _$BehaviorTendencyReadModelCopyWithImpl<BehaviorTendencyReadModel>(
          this as BehaviorTendencyReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BehaviorTendencyReadModel &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary, detail);

  @override
  String toString() {
    return 'BehaviorTendencyReadModel(summary: $summary, detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $BehaviorTendencyReadModelCopyWith<$Res> {
  factory $BehaviorTendencyReadModelCopyWith(BehaviorTendencyReadModel value,
          $Res Function(BehaviorTendencyReadModel) _then) =
      _$BehaviorTendencyReadModelCopyWithImpl;
  @useResult
  $Res call({String summary, String detail});
}

/// @nodoc
class _$BehaviorTendencyReadModelCopyWithImpl<$Res>
    implements $BehaviorTendencyReadModelCopyWith<$Res> {
  _$BehaviorTendencyReadModelCopyWithImpl(this._self, this._then);

  final BehaviorTendencyReadModel _self;
  final $Res Function(BehaviorTendencyReadModel) _then;

  /// Create a copy of BehaviorTendencyReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? detail = null,
  }) {
    return _then(_self.copyWith(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BehaviorTendencyReadModel].
extension BehaviorTendencyReadModelPatterns on BehaviorTendencyReadModel {
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
    TResult Function(String summary, String detail)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel() when $default != null:
        return $default(_that.summary, _that.detail);
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
    TResult Function(String summary, String detail) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel():
        return $default(_that.summary, _that.detail);
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
    TResult? Function(String summary, String detail)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyReadModel() when $default != null:
        return $default(_that.summary, _that.detail);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BehaviorTendencyReadModel implements BehaviorTendencyReadModel {
  const _BehaviorTendencyReadModel(
      {required this.summary, required this.detail});

  @override
  final String summary;
  @override
  final String detail;

  /// Create a copy of BehaviorTendencyReadModel
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
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary, detail);

  @override
  String toString() {
    return 'BehaviorTendencyReadModel(summary: $summary, detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$BehaviorTendencyReadModelCopyWith<$Res>
    implements $BehaviorTendencyReadModelCopyWith<$Res> {
  factory _$BehaviorTendencyReadModelCopyWith(_BehaviorTendencyReadModel value,
          $Res Function(_BehaviorTendencyReadModel) _then) =
      __$BehaviorTendencyReadModelCopyWithImpl;
  @override
  @useResult
  $Res call({String summary, String detail});
}

/// @nodoc
class __$BehaviorTendencyReadModelCopyWithImpl<$Res>
    implements _$BehaviorTendencyReadModelCopyWith<$Res> {
  __$BehaviorTendencyReadModelCopyWithImpl(this._self, this._then);

  final _BehaviorTendencyReadModel _self;
  final $Res Function(_BehaviorTendencyReadModel) _then;

  /// Create a copy of BehaviorTendencyReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? summary = null,
    Object? detail = null,
  }) {
    return _then(_BehaviorTendencyReadModel(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
