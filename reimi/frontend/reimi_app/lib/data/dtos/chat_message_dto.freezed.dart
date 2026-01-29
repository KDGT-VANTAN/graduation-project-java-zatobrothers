// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageDto {
  String get messageId;
  String get chatRoomId;
  String get senderId;
  String get content;
  MessageType get messageType;
  DateTime get sentAt;

  /// Create a copy of ChatMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMessageDtoCopyWith<ChatMessageDto> get copyWith =>
      _$ChatMessageDtoCopyWithImpl<ChatMessageDto>(
          this as ChatMessageDto, _$identity);

  /// Serializes this ChatMessageDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatMessageDto &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageId, chatRoomId, senderId,
      content, messageType, sentAt);

  @override
  String toString() {
    return 'ChatMessageDto(messageId: $messageId, chatRoomId: $chatRoomId, senderId: $senderId, content: $content, messageType: $messageType, sentAt: $sentAt)';
  }
}

/// @nodoc
abstract mixin class $ChatMessageDtoCopyWith<$Res> {
  factory $ChatMessageDtoCopyWith(
          ChatMessageDto value, $Res Function(ChatMessageDto) _then) =
      _$ChatMessageDtoCopyWithImpl;
  @useResult
  $Res call(
      {String messageId,
      String chatRoomId,
      String senderId,
      String content,
      MessageType messageType,
      DateTime sentAt});
}

/// @nodoc
class _$ChatMessageDtoCopyWithImpl<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  _$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final ChatMessageDto _self;
  final $Res Function(ChatMessageDto) _then;

  /// Create a copy of ChatMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? chatRoomId = null,
    Object? senderId = null,
    Object? content = null,
    Object? messageType = null,
    Object? sentAt = null,
  }) {
    return _then(_self.copyWith(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      chatRoomId: null == chatRoomId
          ? _self.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      sentAt: null == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatMessageDto].
extension ChatMessageDtoPatterns on ChatMessageDto {
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
    TResult Function(_ChatMessageDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMessageDto() when $default != null:
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
    TResult Function(_ChatMessageDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageDto():
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
    TResult? Function(_ChatMessageDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageDto() when $default != null:
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
    TResult Function(String messageId, String chatRoomId, String senderId,
            String content, MessageType messageType, DateTime sentAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatMessageDto() when $default != null:
        return $default(_that.messageId, _that.chatRoomId, _that.senderId,
            _that.content, _that.messageType, _that.sentAt);
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
    TResult Function(String messageId, String chatRoomId, String senderId,
            String content, MessageType messageType, DateTime sentAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageDto():
        return $default(_that.messageId, _that.chatRoomId, _that.senderId,
            _that.content, _that.messageType, _that.sentAt);
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
    TResult? Function(String messageId, String chatRoomId, String senderId,
            String content, MessageType messageType, DateTime sentAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatMessageDto() when $default != null:
        return $default(_that.messageId, _that.chatRoomId, _that.senderId,
            _that.content, _that.messageType, _that.sentAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatMessageDto implements ChatMessageDto {
  const _ChatMessageDto(
      {required this.messageId,
      required this.chatRoomId,
      required this.senderId,
      required this.content,
      required this.messageType,
      required this.sentAt});
  factory _ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDtoFromJson(json);

  @override
  final String messageId;
  @override
  final String chatRoomId;
  @override
  final String senderId;
  @override
  final String content;
  @override
  final MessageType messageType;
  @override
  final DateTime sentAt;

  /// Create a copy of ChatMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatMessageDtoCopyWith<_ChatMessageDto> get copyWith =>
      __$ChatMessageDtoCopyWithImpl<_ChatMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMessageDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatMessageDto &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageId, chatRoomId, senderId,
      content, messageType, sentAt);

  @override
  String toString() {
    return 'ChatMessageDto(messageId: $messageId, chatRoomId: $chatRoomId, senderId: $senderId, content: $content, messageType: $messageType, sentAt: $sentAt)';
  }
}

/// @nodoc
abstract mixin class _$ChatMessageDtoCopyWith<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  factory _$ChatMessageDtoCopyWith(
          _ChatMessageDto value, $Res Function(_ChatMessageDto) _then) =
      __$ChatMessageDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String messageId,
      String chatRoomId,
      String senderId,
      String content,
      MessageType messageType,
      DateTime sentAt});
}

/// @nodoc
class __$ChatMessageDtoCopyWithImpl<$Res>
    implements _$ChatMessageDtoCopyWith<$Res> {
  __$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final _ChatMessageDto _self;
  final $Res Function(_ChatMessageDto) _then;

  /// Create a copy of ChatMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageId = null,
    Object? chatRoomId = null,
    Object? senderId = null,
    Object? content = null,
    Object? messageType = null,
    Object? sentAt = null,
  }) {
    return _then(_ChatMessageDto(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      chatRoomId: null == chatRoomId
          ? _self.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      sentAt: null == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
