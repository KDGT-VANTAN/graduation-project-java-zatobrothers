// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matching_users_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchingUsersReadModel {
  String get otherUserName;
  String get otherUserMainPhotoUrl;
  String get currentUserMainPhotoUrl;

  /// Create a copy of MatchingUsersReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MatchingUsersReadModelCopyWith<MatchingUsersReadModel> get copyWith =>
      _$MatchingUsersReadModelCopyWithImpl<MatchingUsersReadModel>(
          this as MatchingUsersReadModel, _$identity);

  /// Serializes this MatchingUsersReadModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MatchingUsersReadModel &&
            (identical(other.otherUserName, otherUserName) ||
                other.otherUserName == otherUserName) &&
            (identical(other.otherUserMainPhotoUrl, otherUserMainPhotoUrl) ||
                other.otherUserMainPhotoUrl == otherUserMainPhotoUrl) &&
            (identical(
                    other.currentUserMainPhotoUrl, currentUserMainPhotoUrl) ||
                other.currentUserMainPhotoUrl == currentUserMainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otherUserName,
      otherUserMainPhotoUrl, currentUserMainPhotoUrl);

  @override
  String toString() {
    return 'MatchingUsersReadModel(otherUserName: $otherUserName, otherUserMainPhotoUrl: $otherUserMainPhotoUrl, currentUserMainPhotoUrl: $currentUserMainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class $MatchingUsersReadModelCopyWith<$Res> {
  factory $MatchingUsersReadModelCopyWith(MatchingUsersReadModel value,
          $Res Function(MatchingUsersReadModel) _then) =
      _$MatchingUsersReadModelCopyWithImpl;
  @useResult
  $Res call(
      {String otherUserName,
      String otherUserMainPhotoUrl,
      String currentUserMainPhotoUrl});
}

/// @nodoc
class _$MatchingUsersReadModelCopyWithImpl<$Res>
    implements $MatchingUsersReadModelCopyWith<$Res> {
  _$MatchingUsersReadModelCopyWithImpl(this._self, this._then);

  final MatchingUsersReadModel _self;
  final $Res Function(MatchingUsersReadModel) _then;

  /// Create a copy of MatchingUsersReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherUserName = null,
    Object? otherUserMainPhotoUrl = null,
    Object? currentUserMainPhotoUrl = null,
  }) {
    return _then(_self.copyWith(
      otherUserName: null == otherUserName
          ? _self.otherUserName
          : otherUserName // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserMainPhotoUrl: null == otherUserMainPhotoUrl
          ? _self.otherUserMainPhotoUrl
          : otherUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserMainPhotoUrl: null == currentUserMainPhotoUrl
          ? _self.currentUserMainPhotoUrl
          : currentUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MatchingUsersReadModel].
extension MatchingUsersReadModelPatterns on MatchingUsersReadModel {
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
    TResult Function(_MatchingUsersReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersReadModel() when $default != null:
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
    TResult Function(_MatchingUsersReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersReadModel():
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
    TResult? Function(_MatchingUsersReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersReadModel() when $default != null:
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
    TResult Function(String otherUserName, String otherUserMainPhotoUrl,
            String currentUserMainPhotoUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersReadModel() when $default != null:
        return $default(_that.otherUserName, _that.otherUserMainPhotoUrl,
            _that.currentUserMainPhotoUrl);
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
    TResult Function(String otherUserName, String otherUserMainPhotoUrl,
            String currentUserMainPhotoUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersReadModel():
        return $default(_that.otherUserName, _that.otherUserMainPhotoUrl,
            _that.currentUserMainPhotoUrl);
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
    TResult? Function(String otherUserName, String otherUserMainPhotoUrl,
            String currentUserMainPhotoUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MatchingUsersReadModel() when $default != null:
        return $default(_that.otherUserName, _that.otherUserMainPhotoUrl,
            _that.currentUserMainPhotoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MatchingUsersReadModel implements MatchingUsersReadModel {
  const _MatchingUsersReadModel(
      {required this.otherUserName,
      required this.otherUserMainPhotoUrl,
      required this.currentUserMainPhotoUrl});
  factory _MatchingUsersReadModel.fromJson(Map<String, dynamic> json) =>
      _$MatchingUsersReadModelFromJson(json);

  @override
  final String otherUserName;
  @override
  final String otherUserMainPhotoUrl;
  @override
  final String currentUserMainPhotoUrl;

  /// Create a copy of MatchingUsersReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MatchingUsersReadModelCopyWith<_MatchingUsersReadModel> get copyWith =>
      __$MatchingUsersReadModelCopyWithImpl<_MatchingUsersReadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MatchingUsersReadModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchingUsersReadModel &&
            (identical(other.otherUserName, otherUserName) ||
                other.otherUserName == otherUserName) &&
            (identical(other.otherUserMainPhotoUrl, otherUserMainPhotoUrl) ||
                other.otherUserMainPhotoUrl == otherUserMainPhotoUrl) &&
            (identical(
                    other.currentUserMainPhotoUrl, currentUserMainPhotoUrl) ||
                other.currentUserMainPhotoUrl == currentUserMainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otherUserName,
      otherUserMainPhotoUrl, currentUserMainPhotoUrl);

  @override
  String toString() {
    return 'MatchingUsersReadModel(otherUserName: $otherUserName, otherUserMainPhotoUrl: $otherUserMainPhotoUrl, currentUserMainPhotoUrl: $currentUserMainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class _$MatchingUsersReadModelCopyWith<$Res>
    implements $MatchingUsersReadModelCopyWith<$Res> {
  factory _$MatchingUsersReadModelCopyWith(_MatchingUsersReadModel value,
          $Res Function(_MatchingUsersReadModel) _then) =
      __$MatchingUsersReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String otherUserName,
      String otherUserMainPhotoUrl,
      String currentUserMainPhotoUrl});
}

/// @nodoc
class __$MatchingUsersReadModelCopyWithImpl<$Res>
    implements _$MatchingUsersReadModelCopyWith<$Res> {
  __$MatchingUsersReadModelCopyWithImpl(this._self, this._then);

  final _MatchingUsersReadModel _self;
  final $Res Function(_MatchingUsersReadModel) _then;

  /// Create a copy of MatchingUsersReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otherUserName = null,
    Object? otherUserMainPhotoUrl = null,
    Object? currentUserMainPhotoUrl = null,
  }) {
    return _then(_MatchingUsersReadModel(
      otherUserName: null == otherUserName
          ? _self.otherUserName
          : otherUserName // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserMainPhotoUrl: null == otherUserMainPhotoUrl
          ? _self.otherUserMainPhotoUrl
          : otherUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentUserMainPhotoUrl: null == currentUserMainPhotoUrl
          ? _self.currentUserMainPhotoUrl
          : currentUserMainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
