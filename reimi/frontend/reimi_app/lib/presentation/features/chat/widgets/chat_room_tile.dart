import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';
import 'package:reimi_app/data/models/chat_room_summary_model.dart';

class ChatRoomTile extends StatelessWidget {
  const ChatRoomTile({
    super.key,
    required this.chatRoomSummary,
    required this.onTap,
  });

  final ChatRoomSummaryModel chatRoomSummary;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: const Color(0xFF7CC2CC),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: chatRoomSummary.mainPhotoUrl.toImageProvider(),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        chatRoomSummary.name,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        chatRoomSummary.birthDate.toAge,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 11,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '・${chatRoomSummary.address.displayName(context)}',
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 11,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    chatRoomSummary.lastMessageText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 11,
                      color: Colors.black.withValues(alpha: 0.4),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chatRoomSummary.lastSentAt.toDisplayDateText(),
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontSize: 10,
                  ),
                ),
                if (chatRoomSummary.unreadCount > 0)
                  Column(
                    children: [
                      const SizedBox(height: 8),
                      Container(
                        width: 22,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFF7A4A),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            chatRoomSummary.unreadCount.toString(),
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
