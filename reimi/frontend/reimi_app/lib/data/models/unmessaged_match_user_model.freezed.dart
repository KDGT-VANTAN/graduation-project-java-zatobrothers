// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unmessaged_match_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnmessagedMatchUserModel {
  String get matchId;
  String get userId;
  String get mainPhotoUrl;

  /// Create a copy of UnmessagedMatchUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnmessagedMatchUserModelCopyWith<UnmessagedMatchUserModel> get copyWith =>
      _$UnmessagedMatchUserModelCopyWithImpl<UnmessagedMatchUserModel>(
          this as UnmessagedMatchUserModel, _$identity);

  /// Serializes this UnmessagedMatchUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnmessagedMatchUserModel &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, matchId, userId, mainPhotoUrl);

  @override
  String toString() {
    return 'UnmessagedMatchUserModel(matchId: $matchId, userId: $userId, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class $UnmessagedMatchUserModelCopyWith<$Res> {
  factory $UnmessagedMatchUserModelCopyWith(UnmessagedMatchUserModel value,
          $Res Function(UnmessagedMatchUserModel) _then) =
      _$UnmessagedMatchUserModelCopyWithImpl;
  @useResult
  $Res call({String matchId, String userId, String mainPhotoUrl});
}

/// @nodoc
class _$UnmessagedMatchUserModelCopyWithImpl<$Res>
    implements $UnmessagedMatchUserModelCopyWith<$Res> {
  _$UnmessagedMatchUserModelCopyWithImpl(this._self, this._then);

  final UnmessagedMatchUserModel _self;
  final $Res Function(UnmessagedMatchUserModel) _then;

  /// Create a copy of UnmessagedMatchUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? userId = null,
    Object? mainPhotoUrl = null,
  }) {
    return _then(_self.copyWith(
      matchId: null == matchId
          ? _self.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnmessagedMatchUserModel].
extension UnmessagedMatchUserModelPatterns on UnmessagedMatchUserModel {
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
    TResult Function(_UnmessagedMatchUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserModel() when $default != null:
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
    TResult Function(_UnmessagedMatchUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserModel():
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
    TResult? Function(_UnmessagedMatchUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserModel() when $default != null:
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
    TResult Function(String matchId, String userId, String mainPhotoUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserModel() when $default != null:
        return $default(_that.matchId, _that.userId, _that.mainPhotoUrl);
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
    TResult Function(String matchId, String userId, String mainPhotoUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserModel():
        return $default(_that.matchId, _that.userId, _that.mainPhotoUrl);
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
    TResult? Function(String matchId, String userId, String mainPhotoUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UnmessagedMatchUserModel() when $default != null:
        return $default(_that.matchId, _that.userId, _that.mainPhotoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _UnmessagedMatchUserModel implements UnmessagedMatchUserModel {
  const _UnmessagedMatchUserModel(
      {required this.matchId,
      required this.userId,
      required this.mainPhotoUrl});
  factory _UnmessagedMatchUserModel.fromJson(Map<String, dynamic> json) =>
      _$UnmessagedMatchUserModelFromJson(json);

  @override
  final String matchId;
  @override
  final String userId;
  @override
  final String mainPhotoUrl;

  /// Create a copy of UnmessagedMatchUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnmessagedMatchUserModelCopyWith<_UnmessagedMatchUserModel> get copyWith =>
      __$UnmessagedMatchUserModelCopyWithImpl<_UnmessagedMatchUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnmessagedMatchUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnmessagedMatchUserModel &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, matchId, userId, mainPhotoUrl);

  @override
  String toString() {
    return 'UnmessagedMatchUserModel(matchId: $matchId, userId: $userId, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class _$UnmessagedMatchUserModelCopyWith<$Res>
    implements $UnmessagedMatchUserModelCopyWith<$Res> {
  factory _$UnmessagedMatchUserModelCopyWith(_UnmessagedMatchUserModel value,
          $Res Function(_UnmessagedMatchUserModel) _then) =
      __$UnmessagedMatchUserModelCopyWithImpl;
  @override
  @useResult
  $Res call({String matchId, String userId, String mainPhotoUrl});
}

/// @nodoc
class __$UnmessagedMatchUserModelCopyWithImpl<$Res>
    implements _$UnmessagedMatchUserModelCopyWith<$Res> {
  __$UnmessagedMatchUserModelCopyWithImpl(this._self, this._then);

  final _UnmessagedMatchUserModel _self;
  final $Res Function(_UnmessagedMatchUserModel) _then;

  /// Create a copy of UnmessagedMatchUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? matchId = null,
    Object? userId = null,
    Object? mainPhotoUrl = null,
  }) {
    return _then(_UnmessagedMatchUserModel(
      matchId: null == matchId
          ? _self.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
