import 'dart:async';

import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/presentation/features/chat/states/chat_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_notifier.g.dart';

@riverpod
class ChatNotifier extends _$ChatNotifier {
  @override
  ChatState build() {
    return const ChatState();
  }

  Future<void> init() async {
    await Future.wait([
      loadUnmessagedMatchUsers(),
      loadChatRoomSummaries(),
    ]);
  }

  Future<void> loadUnmessagedMatchUsers() async {
    state = state.copyWith(isLoadingUsers: true, errorMessage: null);
    try {
      final unmessagedMatchUsers =
          await ref.read(getUnmessagedMatchUsersUseCaseProvider).call();
      state = state.copyWith(
        unmessagedMatchUsers: unmessagedMatchUsers,
        isLoadingUsers: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingUsers: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> loadChatRoomSummaries() async {
    state = state.copyWith(isLoadingSummaries: true, errorMessage: null);
    try {
      final chatRoomSummaries =
          await ref.read(getChatRoomSummariesUseCaseProvider).call();
      state = state.copyWith(
        chatRoomSummaries: chatRoomSummaries,
        isLoadingSummaries: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoadingSummaries: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await Future.wait([
      loadUnmessagedMatchUsers(),
      loadChatRoomSummaries(),
    ]);
  }
}
