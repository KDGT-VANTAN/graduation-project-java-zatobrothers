// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatDetailState {
  List<ChatMessageReadModel> get chatMessages;
  UserWithProfileReadModel? get userProfile;
  bool get isLoadingMessages;
  bool get isLoadingProfile;
  String? get errorMessage;
  String get inputText;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatDetailStateCopyWith<ChatDetailState> get copyWith =>
      _$ChatDetailStateCopyWithImpl<ChatDetailState>(
          this as ChatDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatDetailState &&
            const DeepCollectionEquality()
                .equals(other.chatMessages, chatMessages) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.isLoadingMessages, isLoadingMessages) ||
                other.isLoadingMessages == isLoadingMessages) &&
            (identical(other.isLoadingProfile, isLoadingProfile) ||
                other.isLoadingProfile == isLoadingProfile) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.inputText, inputText) ||
                other.inputText == inputText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatMessages),
      userProfile,
      isLoadingMessages,
      isLoadingProfile,
      errorMessage,
      inputText);

  @override
  String toString() {
    return 'ChatDetailState(chatMessages: $chatMessages, userProfile: $userProfile, isLoadingMessages: $isLoadingMessages, isLoadingProfile: $isLoadingProfile, errorMessage: $errorMessage, inputText: $inputText)';
  }
}

/// @nodoc
abstract mixin class $ChatDetailStateCopyWith<$Res> {
  factory $ChatDetailStateCopyWith(
          ChatDetailState value, $Res Function(ChatDetailState) _then) =
      _$ChatDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ChatMessageReadModel> chatMessages,
      UserWithProfileReadModel? userProfile,
      bool isLoadingMessages,
      bool isLoadingProfile,
      String? errorMessage,
      String inputText});

  $UserWithProfileReadModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$ChatDetailStateCopyWithImpl<$Res>
    implements $ChatDetailStateCopyWith<$Res> {
  _$ChatDetailStateCopyWithImpl(this._self, this._then);

  final ChatDetailState _self;
  final $Res Function(ChatDetailState) _then;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessages = null,
    Object? userProfile = freezed,
    Object? isLoadingMessages = null,
    Object? isLoadingProfile = null,
    Object? errorMessage = freezed,
    Object? inputText = null,
  }) {
    return _then(_self.copyWith(
      chatMessages: null == chatMessages
          ? _self.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageReadModel>,
      userProfile: freezed == userProfile
          ? _self.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserWithProfileReadModel?,
      isLoadingMessages: null == isLoadingMessages
          ? _self.isLoadingMessages
          : isLoadingMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingProfile: null == isLoadingProfile
          ? _self.isLoadingProfile
          : isLoadingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      inputText: null == inputText
          ? _self.inputText
          : inputText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWithProfileReadModelCopyWith<$Res>? get userProfile {
    if (_self.userProfile == null) {
      return null;
    }

    return $UserWithProfileReadModelCopyWith<$Res>(_self.userProfile!, (value) {
      return _then(_self.copyWith(userProfile: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatDetailState].
extension ChatDetailStatePatterns on ChatDetailState {
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
    TResult Function(_ChatDetailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatDetailState() when $default != null:
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
    TResult Function(_ChatDetailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatDetailState():
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
    TResult? Function(_ChatDetailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatDetailState() when $default != null:
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
            List<ChatMessageReadModel> chatMessages,
            UserWithProfileReadModel? userProfile,
            bool isLoadingMessages,
            bool isLoadingProfile,
            String? errorMessage,
            String inputText)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatDetailState() when $default != null:
        return $default(
            _that.chatMessages,
            _that.userProfile,
            _that.isLoadingMessages,
            _that.isLoadingProfile,
            _that.errorMessage,
            _that.inputText);
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
            List<ChatMessageReadModel> chatMessages,
            UserWithProfileReadModel? userProfile,
            bool isLoadingMessages,
            bool isLoadingProfile,
            String? errorMessage,
            String inputText)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatDetailState():
        return $default(
            _that.chatMessages,
            _that.userProfile,
            _that.isLoadingMessages,
            _that.isLoadingProfile,
            _that.errorMessage,
            _that.inputText);
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
            List<ChatMessageReadModel> chatMessages,
            UserWithProfileReadModel? userProfile,
            bool isLoadingMessages,
            bool isLoadingProfile,
            String? errorMessage,
            String inputText)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatDetailState() when $default != null:
        return $default(
            _that.chatMessages,
            _that.userProfile,
            _that.isLoadingMessages,
            _that.isLoadingProfile,
            _that.errorMessage,
            _that.inputText);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChatDetailState implements ChatDetailState {
  const _ChatDetailState(
      {final List<ChatMessageReadModel> chatMessages =
          const <ChatMessageReadModel>[],
      this.userProfile,
      this.isLoadingMessages = false,
      this.isLoadingProfile = false,
      this.errorMessage,
      this.inputText = ''})
      : _chatMessages = chatMessages;

  final List<ChatMessageReadModel> _chatMessages;
  @override
  @JsonKey()
  List<ChatMessageReadModel> get chatMessages {
    if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessages);
  }

  @override
  final UserWithProfileReadModel? userProfile;
  @override
  @JsonKey()
  final bool isLoadingMessages;
  @override
  @JsonKey()
  final bool isLoadingProfile;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final String inputText;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatDetailStateCopyWith<_ChatDetailState> get copyWith =>
      __$ChatDetailStateCopyWithImpl<_ChatDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatDetailState &&
            const DeepCollectionEquality()
                .equals(other._chatMessages, _chatMessages) &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.isLoadingMessages, isLoadingMessages) ||
                other.isLoadingMessages == isLoadingMessages) &&
            (identical(other.isLoadingProfile, isLoadingProfile) ||
                other.isLoadingProfile == isLoadingProfile) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.inputText, inputText) ||
                other.inputText == inputText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatMessages),
      userProfile,
      isLoadingMessages,
      isLoadingProfile,
      errorMessage,
      inputText);

  @override
  String toString() {
    return 'ChatDetailState(chatMessages: $chatMessages, userProfile: $userProfile, isLoadingMessages: $isLoadingMessages, isLoadingProfile: $isLoadingProfile, errorMessage: $errorMessage, inputText: $inputText)';
  }
}

/// @nodoc
abstract mixin class _$ChatDetailStateCopyWith<$Res>
    implements $ChatDetailStateCopyWith<$Res> {
  factory _$ChatDetailStateCopyWith(
          _ChatDetailState value, $Res Function(_ChatDetailState) _then) =
      __$ChatDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ChatMessageReadModel> chatMessages,
      UserWithProfileReadModel? userProfile,
      bool isLoadingMessages,
      bool isLoadingProfile,
      String? errorMessage,
      String inputText});

  @override
  $UserWithProfileReadModelCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$ChatDetailStateCopyWithImpl<$Res>
    implements _$ChatDetailStateCopyWith<$Res> {
  __$ChatDetailStateCopyWithImpl(this._self, this._then);

  final _ChatDetailState _self;
  final $Res Function(_ChatDetailState) _then;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatMessages = null,
    Object? userProfile = freezed,
    Object? isLoadingMessages = null,
    Object? isLoadingProfile = null,
    Object? errorMessage = freezed,
    Object? inputText = null,
  }) {
    return _then(_ChatDetailState(
      chatMessages: null == chatMessages
          ? _self._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageReadModel>,
      userProfile: freezed == userProfile
          ? _self.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserWithProfileReadModel?,
      isLoadingMessages: null == isLoadingMessages
          ? _self.isLoadingMessages
          : isLoadingMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingProfile: null == isLoadingProfile
          ? _self.isLoadingProfile
          : isLoadingProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      inputText: null == inputText
          ? _self.inputText
          : inputText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserWithProfileReadModelCopyWith<$Res>? get userProfile {
    if (_self.userProfile == null) {
      return null;
    }

    return $UserWithProfileReadModelCopyWith<$Res>(_self.userProfile!, (value) {
      return _then(_self.copyWith(userProfile: value));
    });
  }
}

// dart format on
