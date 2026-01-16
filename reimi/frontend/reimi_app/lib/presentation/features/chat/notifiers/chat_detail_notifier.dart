import 'dart:async';

import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/params/send_message_params.dart';
import 'package:reimi_app/domain/read_models/chat_message_read_model.dart';
import 'package:reimi_app/domain/value_objects/message_type.dart';
import 'package:reimi_app/presentation/features/chat/enum/chat_segment.dart';
import 'package:reimi_app/presentation/features/chat/states/chat_detail_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_detail_notifier.g.dart';

@riverpod
class ChatDetailNotifier extends _$ChatDetailNotifier {
  StreamSubscription<List<ChatMessageReadModel>>? _chatMessagesSub;
  late final String _chatRoomId;
  late final String _otherUserId;
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
    required String otherUserId,
    required String currentUserId,
  }) async {
    _chatRoomId = chatRoomId;
    _otherUserId = otherUserId;
    _currentUserId = currentUserId;
    await Future.wait([
      loadMessages(),
      loadUserProfile(),
    ]);
  }

  Future<void> changeSegment(ChatSegment segment) async {
    if (state.segment == segment) return;

    state = state.copyWith(
      segment: segment,
    );

    switch (segment) {
      case ChatSegment.message:
        await loadMessages();
      case ChatSegment.profile:
        await loadUserProfile();
    }
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
          await ref.read(getUserProfileUseCaseProvider).call(_otherUserId);
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
      final params = SendMessageParams(
        chatRoomId: _chatRoomId,
        senderId: _currentUserId,
        messageType: MessageType.text,
        content: text,
        sentAt: DateTime.now(),
      );
      await sendMessage.call(params);

      state = state.copyWith(inputText: '');
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }

  Future<void> refresh() async {
    await Future.wait([
      loadMessages(),
      loadUserProfile(),
    ]);
  }
}
