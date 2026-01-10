// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unmessaged_match_user_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnmessagedMatchUserReadModel {
  String get id;
  String get mainPhotoUrl;

  /// Create a copy of UnmessagedMatchUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnmessagedMatchUserReadModelCopyWith<UnmessagedMatchUserReadModel>
      get copyWith => _$UnmessagedMatchUserReadModelCopyWithImpl<
              UnmessagedMatchUserReadModel>(
          this as UnmessagedMatchUserReadModel, _$identity);

  /// Serializes this UnmessagedMatchUserReadModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnmessagedMatchUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, mainPhotoUrl);

  @override
  String toString() {
    return 'UnmessagedMatchUserReadModel(id: $id, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class $UnmessagedMatchUserReadModelCopyWith<$Res> {
  factory $UnmessagedMatchUserReadModelCopyWith(
          UnmessagedMatchUserReadModel value,
          $Res Function(UnmessagedMatchUserReadModel) _then) =
      _$UnmessagedMatchUserReadModelCopyWithImpl;
  @useResult
  $Res call({String id, String mainPhotoUrl});
}

/// @nodoc
class _$UnmessagedMatchUserReadModelCopyWithImpl<$Res>
    implements $UnmessagedMatchUserReadModelCopyWith<$Res> {
  _$UnmessagedMatchUserReadModelCopyWithImpl(this._self, this._then);

  final UnmessagedMatchUserReadModel _self;
  final $Res Function(UnmessagedMatchUserReadModel) _then;

  /// Create a copy of UnmessagedMatchUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mainPhotoUrl = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnmessagedMatchUserReadModel].
extension UnmessagedMatchUserReadModelPatterns on UnmessagedMatchUserReadModel {
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
    TResult Function(_UnmessagedMatchUserReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserReadModel() when $default != null:
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
    TResult Function(_UnmessagedMatchUserReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserReadModel():
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
    TResult? Function(_UnmessagedMatchUserReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserReadModel() when $default != null:
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
    TResult Function(String id, String mainPhotoUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserReadModel() when $default != null:
        return $default(_that.id, _that.mainPhotoUrl);
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
    TResult Function(String id, String mainPhotoUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserReadModel():
        return $default(_that.id, _that.mainPhotoUrl);
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
    TResult? Function(String id, String mainPhotoUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserReadModel() when $default != null:
        return $default(_that.id, _that.mainPhotoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UnmessagedMatchUserReadModel implements UnmessagedMatchUserReadModel {
  const _UnmessagedMatchUserReadModel(
      {required this.id, required this.mainPhotoUrl});
  factory _UnmessagedMatchUserReadModel.fromJson(Map<String, dynamic> json) =>
      _$UnmessagedMatchUserReadModelFromJson(json);

  @override
  final String id;
  @override
  final String mainPhotoUrl;

  /// Create a copy of UnmessagedMatchUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnmessagedMatchUserReadModelCopyWith<_UnmessagedMatchUserReadModel>
      get copyWith => __$UnmessagedMatchUserReadModelCopyWithImpl<
          _UnmessagedMatchUserReadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnmessagedMatchUserReadModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnmessagedMatchUserReadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, mainPhotoUrl);

  @override
  String toString() {
    return 'UnmessagedMatchUserReadModel(id: $id, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class _$UnmessagedMatchUserReadModelCopyWith<$Res>
    implements $UnmessagedMatchUserReadModelCopyWith<$Res> {
  factory _$UnmessagedMatchUserReadModelCopyWith(
          _UnmessagedMatchUserReadModel value,
          $Res Function(_UnmessagedMatchUserReadModel) _then) =
      __$UnmessagedMatchUserReadModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String mainPhotoUrl});
}

/// @nodoc
class __$UnmessagedMatchUserReadModelCopyWithImpl<$Res>
    implements _$UnmessagedMatchUserReadModelCopyWith<$Res> {
  __$UnmessagedMatchUserReadModelCopyWithImpl(this._self, this._then);

  final _UnmessagedMatchUserReadModel _self;
  final $Res Function(_UnmessagedMatchUserReadModel) _then;

  /// Create a copy of UnmessagedMatchUserReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? mainPhotoUrl = null,
  }) {
    return _then(_UnmessagedMatchUserReadModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
