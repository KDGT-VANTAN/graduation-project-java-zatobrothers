// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatState {
  List<UnmessagedMatchUserReadModel> get unmessagedMatchUsers;
  List<ChatRoomSummaryReadModel> get chatRoomSummaries;
  bool get isLoadingUsers;
  bool get isLoadingSummaries;
  String? get errorMessage;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatStateCopyWith<ChatState> get copyWith =>
      _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatState &&
            const DeepCollectionEquality()
                .equals(other.unmessagedMatchUsers, unmessagedMatchUsers) &&
            const DeepCollectionEquality()
                .equals(other.chatRoomSummaries, chatRoomSummaries) &&
            (identical(other.isLoadingUsers, isLoadingUsers) ||
                other.isLoadingUsers == isLoadingUsers) &&
            (identical(other.isLoadingSummaries, isLoadingSummaries) ||
                other.isLoadingSummaries == isLoadingSummaries) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unmessagedMatchUsers),
      const DeepCollectionEquality().hash(chatRoomSummaries),
      isLoadingUsers,
      isLoadingSummaries,
      errorMessage);

  @override
  String toString() {
    return 'ChatState(unmessagedMatchUsers: $unmessagedMatchUsers, chatRoomSummaries: $chatRoomSummaries, isLoadingUsers: $isLoadingUsers, isLoadingSummaries: $isLoadingSummaries, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) =
      _$ChatStateCopyWithImpl;
  @useResult
  $Res call(
      {List<UnmessagedMatchUserReadModel> unmessagedMatchUsers,
      List<ChatRoomSummaryReadModel> chatRoomSummaries,
      bool isLoadingUsers,
      bool isLoadingSummaries,
      String? errorMessage});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unmessagedMatchUsers = null,
    Object? chatRoomSummaries = null,
    Object? isLoadingUsers = null,
    Object? isLoadingSummaries = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      unmessagedMatchUsers: null == unmessagedMatchUsers
          ? _self.unmessagedMatchUsers
          : unmessagedMatchUsers // ignore: cast_nullable_to_non_nullable
              as List<UnmessagedMatchUserReadModel>,
      chatRoomSummaries: null == chatRoomSummaries
          ? _self.chatRoomSummaries
          : chatRoomSummaries // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomSummaryReadModel>,
      isLoadingUsers: null == isLoadingUsers
          ? _self.isLoadingUsers
          : isLoadingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSummaries: null == isLoadingSummaries
          ? _self.isLoadingSummaries
          : isLoadingSummaries // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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
    TResult Function(_ChatState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
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
    TResult Function(_ChatState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState():
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
    TResult? Function(_ChatState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
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
            List<UnmessagedMatchUserReadModel> unmessagedMatchUsers,
            List<ChatRoomSummaryReadModel> chatRoomSummaries,
            bool isLoadingUsers,
            bool isLoadingSummaries,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
        return $default(_that.unmessagedMatchUsers, _that.chatRoomSummaries,
            _that.isLoadingUsers, _that.isLoadingSummaries, _that.errorMessage);
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
            List<UnmessagedMatchUserReadModel> unmessagedMatchUsers,
            List<ChatRoomSummaryReadModel> chatRoomSummaries,
            bool isLoadingUsers,
            bool isLoadingSummaries,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState():
        return $default(_that.unmessagedMatchUsers, _that.chatRoomSummaries,
            _that.isLoadingUsers, _that.isLoadingSummaries, _that.errorMessage);
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
            List<UnmessagedMatchUserReadModel> unmessagedMatchUsers,
            List<ChatRoomSummaryReadModel> chatRoomSummaries,
            bool isLoadingUsers,
            bool isLoadingSummaries,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatState() when $default != null:
        return $default(_that.unmessagedMatchUsers, _that.chatRoomSummaries,
            _that.isLoadingUsers, _that.isLoadingSummaries, _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChatState implements ChatState {
  const _ChatState(
      {final List<UnmessagedMatchUserReadModel> unmessagedMatchUsers =
          const <UnmessagedMatchUserReadModel>[],
      final List<ChatRoomSummaryReadModel> chatRoomSummaries =
          const <ChatRoomSummaryReadModel>[],
      this.isLoadingUsers = false,
      this.isLoadingSummaries = false,
      this.errorMessage})
      : _unmessagedMatchUsers = unmessagedMatchUsers,
        _chatRoomSummaries = chatRoomSummaries;

  final List<UnmessagedMatchUserReadModel> _unmessagedMatchUsers;
  @override
  @JsonKey()
  List<UnmessagedMatchUserReadModel> get unmessagedMatchUsers {
    if (_unmessagedMatchUsers is EqualUnmodifiableListView)
      return _unmessagedMatchUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unmessagedMatchUsers);
  }

  final List<ChatRoomSummaryReadModel> _chatRoomSummaries;
  @override
  @JsonKey()
  List<ChatRoomSummaryReadModel> get chatRoomSummaries {
    if (_chatRoomSummaries is EqualUnmodifiableListView)
      return _chatRoomSummaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatRoomSummaries);
  }

  @override
  @JsonKey()
  final bool isLoadingUsers;
  @override
  @JsonKey()
  final bool isLoadingSummaries;
  @override
  final String? errorMessage;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatState &&
            const DeepCollectionEquality()
                .equals(other._unmessagedMatchUsers, _unmessagedMatchUsers) &&
            const DeepCollectionEquality()
                .equals(other._chatRoomSummaries, _chatRoomSummaries) &&
            (identical(other.isLoadingUsers, isLoadingUsers) ||
                other.isLoadingUsers == isLoadingUsers) &&
            (identical(other.isLoadingSummaries, isLoadingSummaries) ||
                other.isLoadingSummaries == isLoadingSummaries) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_unmessagedMatchUsers),
      const DeepCollectionEquality().hash(_chatRoomSummaries),
      isLoadingUsers,
      isLoadingSummaries,
      errorMessage);

  @override
  String toString() {
    return 'ChatState(unmessagedMatchUsers: $unmessagedMatchUsers, chatRoomSummaries: $chatRoomSummaries, isLoadingUsers: $isLoadingUsers, isLoadingSummaries: $isLoadingSummaries, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) _then) =
      __$ChatStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<UnmessagedMatchUserReadModel> unmessagedMatchUsers,
      List<ChatRoomSummaryReadModel> chatRoomSummaries,
      bool isLoadingUsers,
      bool isLoadingSummaries,
      String? errorMessage});
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? unmessagedMatchUsers = null,
    Object? chatRoomSummaries = null,
    Object? isLoadingUsers = null,
    Object? isLoadingSummaries = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_ChatState(
      unmessagedMatchUsers: null == unmessagedMatchUsers
          ? _self._unmessagedMatchUsers
          : unmessagedMatchUsers // ignore: cast_nullable_to_non_nullable
              as List<UnmessagedMatchUserReadModel>,
      chatRoomSummaries: null == chatRoomSummaries
          ? _self._chatRoomSummaries
          : chatRoomSummaries // ignore: cast_nullable_to_non_nullable
              as List<ChatRoomSummaryReadModel>,
      isLoadingUsers: null == isLoadingUsers
          ? _self.isLoadingUsers
          : isLoadingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSummaries: null == isLoadingSummaries
          ? _self.isLoadingSummaries
          : isLoadingSummaries // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
