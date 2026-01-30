// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'behavior_tendency_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BehaviorTendencyDto {
  String get summary;
  String get detail;

  /// Create a copy of BehaviorTendencyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BehaviorTendencyDtoCopyWith<BehaviorTendencyDto> get copyWith =>
      _$BehaviorTendencyDtoCopyWithImpl<BehaviorTendencyDto>(
          this as BehaviorTendencyDto, _$identity);

  /// Serializes this BehaviorTendencyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BehaviorTendencyDto &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, summary, detail);

  @override
  String toString() {
    return 'BehaviorTendencyDto(summary: $summary, detail: $detail)';
  }
}

/// @nodoc
abstract mixin class $BehaviorTendencyDtoCopyWith<$Res> {
  factory $BehaviorTendencyDtoCopyWith(
          BehaviorTendencyDto value, $Res Function(BehaviorTendencyDto) _then) =
      _$BehaviorTendencyDtoCopyWithImpl;
  @useResult
  $Res call({String summary, String detail});
}

/// @nodoc
class _$BehaviorTendencyDtoCopyWithImpl<$Res>
    implements $BehaviorTendencyDtoCopyWith<$Res> {
  _$BehaviorTendencyDtoCopyWithImpl(this._self, this._then);

  final BehaviorTendencyDto _self;
  final $Res Function(BehaviorTendencyDto) _then;

  /// Create a copy of BehaviorTendencyDto
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

/// Adds pattern-matching-related methods to [BehaviorTendencyDto].
extension BehaviorTendencyDtoPatterns on BehaviorTendencyDto {
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
    TResult Function(_BehaviorTendencyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyDto() when $default != null:
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
    TResult Function(_BehaviorTendencyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyDto():
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
    TResult? Function(_BehaviorTendencyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorTendencyDto() when $default != null:
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
      case _BehaviorTendencyDto() when $default != null:
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
      case _BehaviorTendencyDto():
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
      case _BehaviorTendencyDto() when $default != null:
        return $default(_that.summary, _that.detail);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BehaviorTendencyDto implements BehaviorTendencyDto {
  const _BehaviorTendencyDto({required this.summary, required this.detail});
  factory _BehaviorTendencyDto.fromJson(Map<String, dynamic> json) =>
      _$BehaviorTendencyDtoFromJson(json);

  @override
  final String summary;
  @override
  final String detail;

  /// Create a copy of BehaviorTendencyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BehaviorTendencyDtoCopyWith<_BehaviorTendencyDto> get copyWith =>
      __$BehaviorTendencyDtoCopyWithImpl<_BehaviorTendencyDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BehaviorTendencyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BehaviorTendencyDto &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, summary, detail);

  @override
  String toString() {
    return 'BehaviorTendencyDto(summary: $summary, detail: $detail)';
  }
}

/// @nodoc
abstract mixin class _$BehaviorTendencyDtoCopyWith<$Res>
    implements $BehaviorTendencyDtoCopyWith<$Res> {
  factory _$BehaviorTendencyDtoCopyWith(_BehaviorTendencyDto value,
          $Res Function(_BehaviorTendencyDto) _then) =
      __$BehaviorTendencyDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String summary, String detail});
}

/// @nodoc
class __$BehaviorTendencyDtoCopyWithImpl<$Res>
    implements _$BehaviorTendencyDtoCopyWith<$Res> {
  __$BehaviorTendencyDtoCopyWithImpl(this._self, this._then);

  final _BehaviorTendencyDto _self;
  final $Res Function(_BehaviorTendencyDto) _then;

  /// Create a copy of BehaviorTendencyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? summary = null,
    Object? detail = null,
  }) {
    return _then(_BehaviorTendencyDto(
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
