import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/data/models/chat_message_model.dart';
import 'package:reimi_app/presentation/features/chat/widgets/received_message.dart';
import 'package:reimi_app/presentation/features/chat/widgets/sent_message.dart';

List<Widget> chatMessageList({
  required BuildContext context,
  required List<ChatMessageModel> chatMessages,
  required String currentUserId,
  required String mainPhotoUrl,
}) {
  return [
    SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final message = chatMessages[index];
            final isMe = message.senderId == currentUserId;

            if (isMe) {
              return SentMessage(
                text: message.content,
                time: message.sentAt.toMessageSentAtDisplay(),
              );
            } else {
              return ReceivedMessage(
                text: message.content,
                time: message.sentAt.toMessageSentAtDisplay(),
                mainPhotoUrl: mainPhotoUrl,
              );
            }
          },
          childCount: chatMessages.length,
        ),
      ),
    )
  ];
}
