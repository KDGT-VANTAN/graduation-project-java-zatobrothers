import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';

Future<void> confirmationDialog({
  required BuildContext context,
  required String title,
  required String contentText1,
  required String contentText2,
  required String value,
  required VoidCallback onConfirm,
  required bool isLargeConfirmation,
  Widget? child,
}) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withValues(alpha: 0.6),
    builder: (_) {
      final theme = Theme.of(context);
      final t = Translations.of(context).button;
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A2F34),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      contentText1,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: const Color(0xFF1A2F34),
                      ),
                    ),
                    isLargeConfirmation
                        ? const SizedBox.shrink()
                        : Flexible(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                value,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
                if (isLargeConfirmation && child != null) ...[
                  const SizedBox(height: 10),
                  Align(alignment: Alignment.center, child: child),
                  const SizedBox(height: 10),
                ],
                Text(
                  contentText2,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF1A2F34),
                  ),
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFE6E8EC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            t.cancel,
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A2F34),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            onConfirm();
                          },
                          child: Text(
                            t.confirmation,
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
