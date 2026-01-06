// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_report_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherReportPostState {
  WeatherReportPostModel? get data;
  bool get canSubmit;
  bool get isSubmitting;
  bool get isChanged;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherReportPostStateCopyWith<WeatherReportPostState> get copyWith =>
      _$WeatherReportPostStateCopyWithImpl<WeatherReportPostState>(
          this as WeatherReportPostState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherReportPostState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, canSubmit, isSubmitting, isChanged);

  @override
  String toString() {
    return 'WeatherReportPostState(data: $data, canSubmit: $canSubmit, isSubmitting: $isSubmitting, isChanged: $isChanged)';
  }
}

/// @nodoc
abstract mixin class $WeatherReportPostStateCopyWith<$Res> {
  factory $WeatherReportPostStateCopyWith(WeatherReportPostState value,
          $Res Function(WeatherReportPostState) _then) =
      _$WeatherReportPostStateCopyWithImpl;
  @useResult
  $Res call(
      {WeatherReportPostModel? data,
      bool canSubmit,
      bool isSubmitting,
      bool isChanged});

  $WeatherReportPostModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$WeatherReportPostStateCopyWithImpl<$Res>
    implements $WeatherReportPostStateCopyWith<$Res> {
  _$WeatherReportPostStateCopyWithImpl(this._self, this._then);

  final WeatherReportPostState _self;
  final $Res Function(WeatherReportPostState) _then;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? canSubmit = null,
    Object? isSubmitting = null,
    Object? isChanged = null,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherReportPostModel?,
      canSubmit: null == canSubmit
          ? _self.canSubmit
          : canSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherReportPostModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $WeatherReportPostModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [WeatherReportPostState].
extension WeatherReportPostStatePatterns on WeatherReportPostState {
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
    TResult Function(_WeatherReportPostState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
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
    TResult Function(_WeatherReportPostState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState():
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
    TResult? Function(_WeatherReportPostState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
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
    TResult Function(WeatherReportPostModel? data, bool canSubmit,
            bool isSubmitting, bool isChanged)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
        return $default(
            _that.data, _that.canSubmit, _that.isSubmitting, _that.isChanged);
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
    TResult Function(WeatherReportPostModel? data, bool canSubmit,
            bool isSubmitting, bool isChanged)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState():
        return $default(
            _that.data, _that.canSubmit, _that.isSubmitting, _that.isChanged);
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
    TResult? Function(WeatherReportPostModel? data, bool canSubmit,
            bool isSubmitting, bool isChanged)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WeatherReportPostState() when $default != null:
        return $default(
            _that.data, _that.canSubmit, _that.isSubmitting, _that.isChanged);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WeatherReportPostState implements WeatherReportPostState {
  const _WeatherReportPostState(
      {this.data,
      this.canSubmit = false,
      this.isSubmitting = false,
      this.isChanged = false});

  @override
  final WeatherReportPostModel? data;
  @override
  @JsonKey()
  final bool canSubmit;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isChanged;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherReportPostStateCopyWith<_WeatherReportPostState> get copyWith =>
      __$WeatherReportPostStateCopyWithImpl<_WeatherReportPostState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherReportPostState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isChanged, isChanged) ||
                other.isChanged == isChanged));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, canSubmit, isSubmitting, isChanged);

  @override
  String toString() {
    return 'WeatherReportPostState(data: $data, canSubmit: $canSubmit, isSubmitting: $isSubmitting, isChanged: $isChanged)';
  }
}

/// @nodoc
abstract mixin class _$WeatherReportPostStateCopyWith<$Res>
    implements $WeatherReportPostStateCopyWith<$Res> {
  factory _$WeatherReportPostStateCopyWith(_WeatherReportPostState value,
          $Res Function(_WeatherReportPostState) _then) =
      __$WeatherReportPostStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherReportPostModel? data,
      bool canSubmit,
      bool isSubmitting,
      bool isChanged});

  @override
  $WeatherReportPostModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$WeatherReportPostStateCopyWithImpl<$Res>
    implements _$WeatherReportPostStateCopyWith<$Res> {
  __$WeatherReportPostStateCopyWithImpl(this._self, this._then);

  final _WeatherReportPostState _self;
  final $Res Function(_WeatherReportPostState) _then;

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? canSubmit = null,
    Object? isSubmitting = null,
    Object? isChanged = null,
  }) {
    return _then(_WeatherReportPostState(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherReportPostModel?,
      canSubmit: null == canSubmit
          ? _self.canSubmit
          : canSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _self.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isChanged: null == isChanged
          ? _self.isChanged
          : isChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of WeatherReportPostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherReportPostModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $WeatherReportPostModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
