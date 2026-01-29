// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_summary_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoomSummaryReadModel {
  String get chatRoomId;
  String get userId;
  String get name;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get lastMessageText;
  DateTime get lastSentAt;
  int get unreadCount;

  /// Create a copy of ChatRoomSummaryReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatRoomSummaryReadModelCopyWith<ChatRoomSummaryReadModel> get copyWith =>
      _$ChatRoomSummaryReadModelCopyWithImpl<ChatRoomSummaryReadModel>(
          this as ChatRoomSummaryReadModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatRoomSummaryReadModel &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastSentAt, lastSentAt) ||
                other.lastSentAt == lastSentAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatRoomId,
      userId,
      name,
      birthDate,
      address,
      mainPhotoUrl,
      lastMessageText,
      lastSentAt,
      unreadCount);

  @override
  String toString() {
    return 'ChatRoomSummaryReadModel(chatRoomId: $chatRoomId, userId: $userId, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, lastMessageText: $lastMessageText, lastSentAt: $lastSentAt, unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class $ChatRoomSummaryReadModelCopyWith<$Res> {
  factory $ChatRoomSummaryReadModelCopyWith(ChatRoomSummaryReadModel value,
          $Res Function(ChatRoomSummaryReadModel) _then) =
      _$ChatRoomSummaryReadModelCopyWithImpl;
  @useResult
  $Res call(
      {String chatRoomId,
      String userId,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String lastMessageText,
      DateTime lastSentAt,
      int unreadCount});
}

/// @nodoc
class _$ChatRoomSummaryReadModelCopyWithImpl<$Res>
    implements $ChatRoomSummaryReadModelCopyWith<$Res> {
  _$ChatRoomSummaryReadModelCopyWithImpl(this._self, this._then);

  final ChatRoomSummaryReadModel _self;
  final $Res Function(ChatRoomSummaryReadModel) _then;

  /// Create a copy of ChatRoomSummaryReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomId = null,
    Object? userId = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? lastMessageText = null,
    Object? lastSentAt = null,
    Object? unreadCount = null,
  }) {
    return _then(_self.copyWith(
      chatRoomId: null == chatRoomId
          ? _self.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageText: null == lastMessageText
          ? _self.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String,
      lastSentAt: null == lastSentAt
          ? _self.lastSentAt
          : lastSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChatRoomSummaryReadModel].
extension ChatRoomSummaryReadModelPatterns on ChatRoomSummaryReadModel {
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
    TResult Function(_ChatRoomSummaryReadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatRoomSummaryReadModel() when $default != null:
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
    TResult Function(_ChatRoomSummaryReadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomSummaryReadModel():
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
    TResult? Function(_ChatRoomSummaryReadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomSummaryReadModel() when $default != null:
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
            String userId,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String lastMessageText,
            DateTime lastSentAt,
            int unreadCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatRoomSummaryReadModel() when $default != null:
        return $default(
            _that.chatRoomId,
            _that.userId,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.lastMessageText,
            _that.lastSentAt,
            _that.unreadCount);
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
            String userId,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String lastMessageText,
            DateTime lastSentAt,
            int unreadCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomSummaryReadModel():
        return $default(
            _that.chatRoomId,
            _that.userId,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.lastMessageText,
            _that.lastSentAt,
            _that.unreadCount);
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
            String userId,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String lastMessageText,
            DateTime lastSentAt,
            int unreadCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatRoomSummaryReadModel() when $default != null:
        return $default(
            _that.chatRoomId,
            _that.userId,
            _that.name,
            _that.birthDate,
            _that.address,
            _that.mainPhotoUrl,
            _that.lastMessageText,
            _that.lastSentAt,
            _that.unreadCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChatRoomSummaryReadModel implements ChatRoomSummaryReadModel {
  const _ChatRoomSummaryReadModel(
      {required this.chatRoomId,
      required this.userId,
      required this.name,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.lastMessageText,
      required this.lastSentAt,
      this.unreadCount = 0});

  @override
  final String chatRoomId;
  @override
  final String userId;
  @override
  final String name;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String lastMessageText;
  @override
  final DateTime lastSentAt;
  @override
  @JsonKey()
  final int unreadCount;

  /// Create a copy of ChatRoomSummaryReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatRoomSummaryReadModelCopyWith<_ChatRoomSummaryReadModel> get copyWith =>
      __$ChatRoomSummaryReadModelCopyWithImpl<_ChatRoomSummaryReadModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoomSummaryReadModel &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastSentAt, lastSentAt) ||
                other.lastSentAt == lastSentAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatRoomId,
      userId,
      name,
      birthDate,
      address,
      mainPhotoUrl,
      lastMessageText,
      lastSentAt,
      unreadCount);

  @override
  String toString() {
    return 'ChatRoomSummaryReadModel(chatRoomId: $chatRoomId, userId: $userId, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, lastMessageText: $lastMessageText, lastSentAt: $lastSentAt, unreadCount: $unreadCount)';
  }
}

/// @nodoc
abstract mixin class _$ChatRoomSummaryReadModelCopyWith<$Res>
    implements $ChatRoomSummaryReadModelCopyWith<$Res> {
  factory _$ChatRoomSummaryReadModelCopyWith(_ChatRoomSummaryReadModel value,
          $Res Function(_ChatRoomSummaryReadModel) _then) =
      __$ChatRoomSummaryReadModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String chatRoomId,
      String userId,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String lastMessageText,
      DateTime lastSentAt,
      int unreadCount});
}

/// @nodoc
class __$ChatRoomSummaryReadModelCopyWithImpl<$Res>
    implements _$ChatRoomSummaryReadModelCopyWith<$Res> {
  __$ChatRoomSummaryReadModelCopyWithImpl(this._self, this._then);

  final _ChatRoomSummaryReadModel _self;
  final $Res Function(_ChatRoomSummaryReadModel) _then;

  /// Create a copy of ChatRoomSummaryReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatRoomId = null,
    Object? userId = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? lastMessageText = null,
    Object? lastSentAt = null,
    Object? unreadCount = null,
  }) {
    return _then(_ChatRoomSummaryReadModel(
      chatRoomId: null == chatRoomId
          ? _self.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageText: null == lastMessageText
          ? _self.lastMessageText
          : lastMessageText // ignore: cast_nullable_to_non_nullable
              as String,
      lastSentAt: null == lastSentAt
          ? _self.lastSentAt
          : lastSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
