// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendMessageDto {
  String get chatRoomId;
  String get senderId;
  MessageType get messageType;
  String get content;
  @IsoDateTimeConverter()
  DateTime get sentAt;

  /// Create a copy of SendMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendMessageDtoCopyWith<SendMessageDto> get copyWith =>
      _$SendMessageDtoCopyWithImpl<SendMessageDto>(
          this as SendMessageDto, _$identity);

  /// Serializes this SendMessageDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMessageDto &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, chatRoomId, senderId, messageType, content, sentAt);

  @override
  String toString() {
    return 'SendMessageDto(chatRoomId: $chatRoomId, senderId: $senderId, messageType: $messageType, content: $content, sentAt: $sentAt)';
  }
}

/// @nodoc
abstract mixin class $SendMessageDtoCopyWith<$Res> {
  factory $SendMessageDtoCopyWith(
          SendMessageDto value, $Res Function(SendMessageDto) _then) =
      _$SendMessageDtoCopyWithImpl;
  @useResult
  $Res call(
      {String chatRoomId,
      String senderId,
      MessageType messageType,
      String content,
      @IsoDateTimeConverter() DateTime sentAt});
}

/// @nodoc
class _$SendMessageDtoCopyWithImpl<$Res>
    implements $SendMessageDtoCopyWith<$Res> {
  _$SendMessageDtoCopyWithImpl(this._self, this._then);

  final SendMessageDto _self;
  final $Res Function(SendMessageDto) _then;

  /// Create a copy of SendMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomId = null,
    Object? senderId = null,
    Object? messageType = null,
    Object? content = null,
    Object? sentAt = null,
  }) {
    return _then(_self.copyWith(
      chatRoomId: null == chatRoomId
          ? _self.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [SendMessageDto].
extension SendMessageDtoPatterns on SendMessageDto {
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
    TResult Function(_SendMessageDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendMessageDto() when $default != null:
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
    TResult Function(_SendMessageDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendMessageDto():
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
    TResult? Function(_SendMessageDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendMessageDto() when $default != null:
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
            String chatRoomId,
            String senderId,
            MessageType messageType,
            String content,
            @IsoDateTimeConverter() DateTime sentAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendMessageDto() when $default != null:
        return $default(_that.chatRoomId, _that.senderId, _that.messageType,
            _that.content, _that.sentAt);
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
            String chatRoomId,
            String senderId,
            MessageType messageType,
            String content,
            @IsoDateTimeConverter() DateTime sentAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendMessageDto():
        return $default(_that.chatRoomId, _that.senderId, _that.messageType,
            _that.content, _that.sentAt);
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
            String chatRoomId,
            String senderId,
            MessageType messageType,
            String content,
            @IsoDateTimeConverter() DateTime sentAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendMessageDto() when $default != null:
        return $default(_that.chatRoomId, _that.senderId, _that.messageType,
            _that.content, _that.sentAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SendMessageDto implements SendMessageDto {
  const _SendMessageDto(
      {required this.chatRoomId,
      required this.senderId,
      required this.messageType,
      required this.content,
      @IsoDateTimeConverter() required this.sentAt});
  factory _SendMessageDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageDtoFromJson(json);

  @override
  final String chatRoomId;
  @override
  final String senderId;
  @override
  final MessageType messageType;
  @override
  final String content;
  @override
  @IsoDateTimeConverter()
  final DateTime sentAt;

  /// Create a copy of SendMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendMessageDtoCopyWith<_SendMessageDto> get copyWith =>
      __$SendMessageDtoCopyWithImpl<_SendMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendMessageDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendMessageDto &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, chatRoomId, senderId, messageType, content, sentAt);

  @override
  String toString() {
    return 'SendMessageDto(chatRoomId: $chatRoomId, senderId: $senderId, messageType: $messageType, content: $content, sentAt: $sentAt)';
  }
}

/// @nodoc
abstract mixin class _$SendMessageDtoCopyWith<$Res>
    implements $SendMessageDtoCopyWith<$Res> {
  factory _$SendMessageDtoCopyWith(
          _SendMessageDto value, $Res Function(_SendMessageDto) _then) =
      __$SendMessageDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String chatRoomId,
      String senderId,
      MessageType messageType,
      String content,
      @IsoDateTimeConverter() DateTime sentAt});
}

/// @nodoc
class __$SendMessageDtoCopyWithImpl<$Res>
    implements _$SendMessageDtoCopyWith<$Res> {
  __$SendMessageDtoCopyWithImpl(this._self, this._then);

  final _SendMessageDto _self;
  final $Res Function(_SendMessageDto) _then;

  /// Create a copy of SendMessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatRoomId = null,
    Object? senderId = null,
    Object? messageType = null,
    Object? content = null,
    Object? sentAt = null,
  }) {
    return _then(_SendMessageDto(
      chatRoomId: null == chatRoomId
          ? _self.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _self.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: null == messageType
          ? _self.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _self.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
