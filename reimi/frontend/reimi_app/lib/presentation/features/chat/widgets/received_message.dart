import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';

class ReceivedMessage extends StatelessWidget {
  const ReceivedMessage({
    super.key,
    required this.text,
    required this.time,
    required this.mainPhotoUrl,
  });
  final String text;
  final String time;
  final String mainPhotoUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: theme.colorScheme.primary,
            backgroundImage: mainPhotoUrl.toImageProvider(),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 300),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  text,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 9,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
