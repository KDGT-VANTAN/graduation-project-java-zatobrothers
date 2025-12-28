import 'dart:async';

import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';
import 'package:reimi_app/presentation/features/chat/chat_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_detail_notifier.g.dart';

@riverpod
class ChatDetailNotifier extends _$ChatDetailNotifier {
  StreamSubscription<List<ChatMessageModel>>? _chatMessagesSub;
  late final String _chatRoomId;
  late final String _userId;
  late final String _currentUserId;

  @override
  ChatDetailState build() {
    ref.onDispose(() {
      _chatMessagesSub?.cancel();
    });
    return const ChatDetailState();
  }

  Future<void> init({
    required String chatRoomId,
    required String userId,
    required String currentUserId,
  }) async {
    _chatRoomId = chatRoomId;
    _userId = userId;
    _currentUserId = currentUserId;
    await Future.wait([
      loadMessages(),
      loadUserProfile(),
    ]);
  }

  Future<void> loadMessages() async {
    state = state.copyWith(isLoadingMessages: true, errorMessage: null);
    final watchMessages = ref.read(watchMessagesUseCaseProvider);
    _chatMessagesSub?.cancel();
    _chatMessagesSub = watchMessages.call(_chatRoomId).listen(
      (messages) {
        state = state.copyWith(
          chatMessages: messages,
          isLoadingMessages: false,
        );
      },
      onError: (e, _) {
        state = state.copyWith(
          isLoadingMessages: false,
          errorMessage: e.toString(),
        );
      },
    );
  }

  Future<void> loadUserProfile() async {
    state = state.copyWith(isLoadingProfile: true, errorMessage: null);
    try {
      final userProfile =
          await ref.read(getUserProfileUseCaseProvider).call(_userId);
      state = state.copyWith(
        userProfile: userProfile,
        isLoadingProfile: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingProfile: false,
        errorMessage: e.toString(),
      );
    }
  }

  void updateInput(String text) {
    state = state.copyWith(inputText: text);
  }

  Future<void> sendMessage() async {
    final text = state.inputText.trim();
    if (_chatRoomId.isEmpty || _currentUserId.isEmpty || text.isEmpty) return;

    try {
      final sendMessage = ref.read(sendMessageUseCaseProvider);
      await sendMessage.call(
        chatRoomId: _chatRoomId,
        senderId: _currentUserId,
        messageType: MessageType.text,
        content: text,
        sentAt: DateTime.now(),
      );

      state = state.copyWith(inputText: '');
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }
}
