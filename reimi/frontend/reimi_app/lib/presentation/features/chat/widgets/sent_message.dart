import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  const SentMessage({
    super.key,
    required this.text,
    required this.time,
  });

  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              text,
              style: theme.textTheme.bodySmall!.copyWith(
                color: Colors.white,
              ),
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
    );
  }
}
