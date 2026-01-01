import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/i18n/strings.g.dart';

Future<void> weatherReportCompleteDialog({
  required BuildContext context,
  required void Function() onConfirm,
}) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withValues(alpha: 0.6),
    builder: (_) {
      final theme = Theme.of(context);
      final t = Translations.of(context);
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  t.dialog.weatherReportComplete.title,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A2F34),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 86,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: Assets.images.items.rainbowLike.path
                          .toImageProvider(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  t.dialog.weatherReportComplete.contentText,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 15,
                    color: const Color(0xFF1A2F34),
                  ),
                ),
                const SizedBox(height: 28),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE6E8EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      onConfirm();
                    },
                    child: Text(
                      t.button.confirmation,
                      style: theme.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1A2F34),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
