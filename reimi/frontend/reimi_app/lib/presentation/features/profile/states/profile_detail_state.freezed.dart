// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDetailState {
  UserWithProfileReadModel? get profile;
  bool get isLoading;
  String? get errorMessage;
  bool get isLiked;
  bool get isRainbowLiked;
  bool get isSkipped;

  /// Create a copy of ProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileDetailStateCopyWith<ProfileDetailState> get copyWith =>
      _$ProfileDetailStateCopyWithImpl<ProfileDetailState>(
          this as ProfileDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileDetailState &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isRainbowLiked, isRainbowLiked) ||
                other.isRainbowLiked == isRainbowLiked) &&
            (identical(other.isSkipped, isSkipped) ||
                other.isSkipped == isSkipped));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, isLoading, errorMessage,
      isLiked, isRainbowLiked, isSkipped);

  @override
  String toString() {
    return 'ProfileDetailState(profile: $profile, isLoading: $isLoading, errorMessage: $errorMessage, isLiked: $isLiked, isRainbowLiked: $isRainbowLiked, isSkipped: $isSkipped)';
  }
}

/// @nodoc
abstract mixin class $ProfileDetailStateCopyWith<$Res> {
  factory $ProfileDetailStateCopyWith(
          ProfileDetailState value, $Res Function(ProfileDetailState) _then) =
      _$ProfileDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {UserWithProfileReadModel? profile,
      bool isLoading,
      String? errorMessage,
      bool isLiked,
      bool isRainbowLiked,
      bool isSkipped});

  $UserWithProfileReadModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ProfileDetailStateCopyWithImpl<$Res>
    implements $ProfileDetailStateCopyWith<$Res> {
  _$ProfileDetailStateCopyWithImpl(this._self, this._then);

  final ProfileDetailState _self;
  final $Res Function(ProfileDetailState) _then;

  /// Create a copy of ProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? isLiked = null,
    Object? isRainbowLiked = null,
    Object? isSkipped = null,
  }) {
    return _then(_self.copyWith(
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserWithProfileReadModel?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: null == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isRainbowLiked: null == isRainbowLiked
          ? _self.isRainbowLiked
          : isRainbowLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSkipped: null == isSkipped
          ? _self.isSkipped
          : isSkipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWithProfileReadModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
      return null;
    }

    return $UserWithProfileReadModelCopyWith<$Res>(_self.profile!, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProfileDetailState].
extension ProfileDetailStatePatterns on ProfileDetailState {
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
    TResult Function(_ProfileDetailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileDetailState() when $default != null:
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
    TResult Function(_ProfileDetailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDetailState():
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
    TResult? Function(_ProfileDetailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDetailState() when $default != null:
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
    TResult Function(
            UserWithProfileReadModel? profile,
            bool isLoading,
            String? errorMessage,
            bool isLiked,
            bool isRainbowLiked,
            bool isSkipped)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileDetailState() when $default != null:
        return $default(_that.profile, _that.isLoading, _that.errorMessage,
            _that.isLiked, _that.isRainbowLiked, _that.isSkipped);
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
    TResult Function(
            UserWithProfileReadModel? profile,
            bool isLoading,
            String? errorMessage,
            bool isLiked,
            bool isRainbowLiked,
            bool isSkipped)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDetailState():
        return $default(_that.profile, _that.isLoading, _that.errorMessage,
            _that.isLiked, _that.isRainbowLiked, _that.isSkipped);
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
    TResult? Function(
            UserWithProfileReadModel? profile,
            bool isLoading,
            String? errorMessage,
            bool isLiked,
            bool isRainbowLiked,
            bool isSkipped)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileDetailState() when $default != null:
        return $default(_that.profile, _that.isLoading, _that.errorMessage,
            _that.isLiked, _that.isRainbowLiked, _that.isSkipped);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileDetailState implements ProfileDetailState {
  const _ProfileDetailState(
      {this.profile,
      this.isLoading = false,
      this.errorMessage,
      this.isLiked = false,
      this.isRainbowLiked = false,
      this.isSkipped = false});

  @override
  final UserWithProfileReadModel? profile;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  @JsonKey()
  final bool isRainbowLiked;
  @override
  @JsonKey()
  final bool isSkipped;

  /// Create a copy of ProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileDetailStateCopyWith<_ProfileDetailState> get copyWith =>
      __$ProfileDetailStateCopyWithImpl<_ProfileDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDetailState &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isRainbowLiked, isRainbowLiked) ||
                other.isRainbowLiked == isRainbowLiked) &&
            (identical(other.isSkipped, isSkipped) ||
                other.isSkipped == isSkipped));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, isLoading, errorMessage,
      isLiked, isRainbowLiked, isSkipped);

  @override
  String toString() {
    return 'ProfileDetailState(profile: $profile, isLoading: $isLoading, errorMessage: $errorMessage, isLiked: $isLiked, isRainbowLiked: $isRainbowLiked, isSkipped: $isSkipped)';
  }
}

/// @nodoc
abstract mixin class _$ProfileDetailStateCopyWith<$Res>
    implements $ProfileDetailStateCopyWith<$Res> {
  factory _$ProfileDetailStateCopyWith(
          _ProfileDetailState value, $Res Function(_ProfileDetailState) _then) =
      __$ProfileDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {UserWithProfileReadModel? profile,
      bool isLoading,
      String? errorMessage,
      bool isLiked,
      bool isRainbowLiked,
      bool isSkipped});

  @override
  $UserWithProfileReadModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$ProfileDetailStateCopyWithImpl<$Res>
    implements _$ProfileDetailStateCopyWith<$Res> {
  __$ProfileDetailStateCopyWithImpl(this._self, this._then);

  final _ProfileDetailState _self;
  final $Res Function(_ProfileDetailState) _then;

  /// Create a copy of ProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profile = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? isLiked = null,
    Object? isRainbowLiked = null,
    Object? isSkipped = null,
  }) {
    return _then(_ProfileDetailState(
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserWithProfileReadModel?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: null == isLiked
          ? _self.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isRainbowLiked: null == isRainbowLiked
          ? _self.isRainbowLiked
          : isRainbowLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isSkipped: null == isSkipped
          ? _self.isSkipped
          : isSkipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWithProfileReadModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
      return null;
    }

    return $UserWithProfileReadModelCopyWith<$Res>(_self.profile!, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }
}

// dart format on
