import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/domain/read_models/like_user_item.dart';

Future<void> showMessageDialog({
  required BuildContext context,
  required LikeUserItem user,
}) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.55),
    builder: (_) => MessageDialog(user: user),
  );
}

class MessageDialog extends StatelessWidget {
  const MessageDialog({
    super.key,
    required this.user,
  });
  final LikeUserItem user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              padding: const EdgeInsets.fromLTRB(20, 56, 20, 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    t.dialog.likeMessage.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color:
                              theme.colorScheme.primary.withValues(alpha: 0.6),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(LineIcons.handPointingDown,
                          color: theme.colorScheme.primary, size: 22),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Divider(
                          color:
                              theme.colorScheme.primary.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    user.message ?? t.dialog.likeMessage.nullCase,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.close,
                          color: Colors.black87,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          t.button.close,
                          style: theme.textTheme.bodySmall!
                              .copyWith(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -36,
              child: CircleAvatar(
                radius: 36,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: user.mainPhotoUrl.toImageProvider(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
