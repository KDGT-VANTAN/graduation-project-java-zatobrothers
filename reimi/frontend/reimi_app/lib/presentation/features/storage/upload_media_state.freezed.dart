// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_media_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadMediaState {
  File? get file;
  MediaType? get mediaType;
  MediaPurpose? get mediaPurpose;
  bool get isLoading;
  String? get downloadUrl;
  String? get errorMessage;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UploadMediaStateCopyWith<UploadMediaState> get copyWith =>
      _$UploadMediaStateCopyWithImpl<UploadMediaState>(
          this as UploadMediaState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UploadMediaState &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.mediaPurpose, mediaPurpose) ||
                other.mediaPurpose == mediaPurpose) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, mediaType, mediaPurpose,
      isLoading, downloadUrl, errorMessage);

  @override
  String toString() {
    return 'UploadMediaState(file: $file, mediaType: $mediaType, mediaPurpose: $mediaPurpose, isLoading: $isLoading, downloadUrl: $downloadUrl, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $UploadMediaStateCopyWith<$Res> {
  factory $UploadMediaStateCopyWith(
          UploadMediaState value, $Res Function(UploadMediaState) _then) =
      _$UploadMediaStateCopyWithImpl;
  @useResult
  $Res call(
      {File? file,
      MediaType? mediaType,
      MediaPurpose? mediaPurpose,
      bool isLoading,
      String? downloadUrl,
      String? errorMessage});
}

/// @nodoc
class _$UploadMediaStateCopyWithImpl<$Res>
    implements $UploadMediaStateCopyWith<$Res> {
  _$UploadMediaStateCopyWithImpl(this._self, this._then);

  final UploadMediaState _self;
  final $Res Function(UploadMediaState) _then;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
    Object? mediaType = freezed,
    Object? mediaPurpose = freezed,
    Object? isLoading = null,
    Object? downloadUrl = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      mediaType: freezed == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      mediaPurpose: freezed == mediaPurpose
          ? _self.mediaPurpose
          : mediaPurpose // ignore: cast_nullable_to_non_nullable
              as MediaPurpose?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadUrl: freezed == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UploadMediaState].
extension UploadMediaStatePatterns on UploadMediaState {
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
    TResult Function(_UploadMediaState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UploadMediaState() when $default != null:
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
    TResult Function(_UploadMediaState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadMediaState():
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
    TResult? Function(_UploadMediaState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadMediaState() when $default != null:
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
            File? file,
            MediaType? mediaType,
            MediaPurpose? mediaPurpose,
            bool isLoading,
            String? downloadUrl,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UploadMediaState() when $default != null:
        return $default(_that.file, _that.mediaType, _that.mediaPurpose,
            _that.isLoading, _that.downloadUrl, _that.errorMessage);
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
            File? file,
            MediaType? mediaType,
            MediaPurpose? mediaPurpose,
            bool isLoading,
            String? downloadUrl,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadMediaState():
        return $default(_that.file, _that.mediaType, _that.mediaPurpose,
            _that.isLoading, _that.downloadUrl, _that.errorMessage);
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
            File? file,
            MediaType? mediaType,
            MediaPurpose? mediaPurpose,
            bool isLoading,
            String? downloadUrl,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UploadMediaState() when $default != null:
        return $default(_that.file, _that.mediaType, _that.mediaPurpose,
            _that.isLoading, _that.downloadUrl, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UploadMediaState implements UploadMediaState {
  const _UploadMediaState(
      {this.file,
      this.mediaType,
      this.mediaPurpose,
      this.isLoading = false,
      this.downloadUrl,
      this.errorMessage});

  @override
  final File? file;
  @override
  final MediaType? mediaType;
  @override
  final MediaPurpose? mediaPurpose;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? downloadUrl;
  @override
  final String? errorMessage;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UploadMediaStateCopyWith<_UploadMediaState> get copyWith =>
      __$UploadMediaStateCopyWithImpl<_UploadMediaState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadMediaState &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.mediaPurpose, mediaPurpose) ||
                other.mediaPurpose == mediaPurpose) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, mediaType, mediaPurpose,
      isLoading, downloadUrl, errorMessage);

  @override
  String toString() {
    return 'UploadMediaState(file: $file, mediaType: $mediaType, mediaPurpose: $mediaPurpose, isLoading: $isLoading, downloadUrl: $downloadUrl, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$UploadMediaStateCopyWith<$Res>
    implements $UploadMediaStateCopyWith<$Res> {
  factory _$UploadMediaStateCopyWith(
          _UploadMediaState value, $Res Function(_UploadMediaState) _then) =
      __$UploadMediaStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {File? file,
      MediaType? mediaType,
      MediaPurpose? mediaPurpose,
      bool isLoading,
      String? downloadUrl,
      String? errorMessage});
}

/// @nodoc
class __$UploadMediaStateCopyWithImpl<$Res>
    implements _$UploadMediaStateCopyWith<$Res> {
  __$UploadMediaStateCopyWithImpl(this._self, this._then);

  final _UploadMediaState _self;
  final $Res Function(_UploadMediaState) _then;

  /// Create a copy of UploadMediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = freezed,
    Object? mediaType = freezed,
    Object? mediaPurpose = freezed,
    Object? isLoading = null,
    Object? downloadUrl = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_UploadMediaState(
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      mediaType: freezed == mediaType
          ? _self.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      mediaPurpose: freezed == mediaPurpose
          ? _self.mediaPurpose
          : mediaPurpose // ignore: cast_nullable_to_non_nullable
              as MediaPurpose?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadUrl: freezed == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
