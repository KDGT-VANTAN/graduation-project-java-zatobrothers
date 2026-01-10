// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendMessageParams {
  String get chatRoomId;
  String get senderId;
  MessageType get messageType;
  String get content;
  @IsoDateTimeConverter()
  DateTime get sentAt;

  /// Create a copy of SendMessageParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendMessageParamsCopyWith<SendMessageParams> get copyWith =>
      _$SendMessageParamsCopyWithImpl<SendMessageParams>(
          this as SendMessageParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMessageParams &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatRoomId, senderId, messageType, content, sentAt);

  @override
  String toString() {
    return 'SendMessageParams(chatRoomId: $chatRoomId, senderId: $senderId, messageType: $messageType, content: $content, sentAt: $sentAt)';
  }
}

/// @nodoc
abstract mixin class $SendMessageParamsCopyWith<$Res> {
  factory $SendMessageParamsCopyWith(
          SendMessageParams value, $Res Function(SendMessageParams) _then) =
      _$SendMessageParamsCopyWithImpl;
  @useResult
  $Res call(
      {String chatRoomId,
      String senderId,
      MessageType messageType,
      String content,
      @IsoDateTimeConverter() DateTime sentAt});
}

/// @nodoc
class _$SendMessageParamsCopyWithImpl<$Res>
    implements $SendMessageParamsCopyWith<$Res> {
  _$SendMessageParamsCopyWithImpl(this._self, this._then);

  final SendMessageParams _self;
  final $Res Function(SendMessageParams) _then;

  /// Create a copy of SendMessageParams
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

/// Adds pattern-matching-related methods to [SendMessageParams].
extension SendMessageParamsPatterns on SendMessageParams {
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
    TResult Function(_SendMessageParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SendMessageParams() when $default != null:
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
    TResult Function(_SendMessageParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendMessageParams():
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
    TResult? Function(_SendMessageParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SendMessageParams() when $default != null:
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
      case _SendMessageParams() when $default != null:
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
      case _SendMessageParams():
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
      case _SendMessageParams() when $default != null:
        return $default(_that.chatRoomId, _that.senderId, _that.messageType,
            _that.content, _that.sentAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SendMessageParams implements SendMessageParams {
  const _SendMessageParams(
      {required this.chatRoomId,
      required this.senderId,
      required this.messageType,
      required this.content,
      @IsoDateTimeConverter() required this.sentAt});

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

  /// Create a copy of SendMessageParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendMessageParamsCopyWith<_SendMessageParams> get copyWith =>
      __$SendMessageParamsCopyWithImpl<_SendMessageParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendMessageParams &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chatRoomId, senderId, messageType, content, sentAt);

  @override
  String toString() {
    return 'SendMessageParams(chatRoomId: $chatRoomId, senderId: $senderId, messageType: $messageType, content: $content, sentAt: $sentAt)';
  }
}

/// @nodoc
abstract mixin class _$SendMessageParamsCopyWith<$Res>
    implements $SendMessageParamsCopyWith<$Res> {
  factory _$SendMessageParamsCopyWith(
          _SendMessageParams value, $Res Function(_SendMessageParams) _then) =
      __$SendMessageParamsCopyWithImpl;
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
class __$SendMessageParamsCopyWithImpl<$Res>
    implements _$SendMessageParamsCopyWith<$Res> {
  __$SendMessageParamsCopyWithImpl(this._self, this._then);

  final _SendMessageParams _self;
  final $Res Function(_SendMessageParams) _then;

  /// Create a copy of SendMessageParams
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
    return _then(_SendMessageParams(
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
