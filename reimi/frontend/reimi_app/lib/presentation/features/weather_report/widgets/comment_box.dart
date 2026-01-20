import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({
    super.key,
    required this.comment,
    required this.controller,
    required this.onChanged,
  });
  final String? comment;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    return Container(
      height: 140,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: comment != null && comment!.isNotEmpty
            ? Border.all(
                color: Colors.white.withValues(alpha: 0.4),
                width: 1.6,
              )
            : null,
      ),
      child: TextField(
        controller: controller,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        style: theme.textTheme.bodyMedium!.copyWith(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hint: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                t.weatherReportPostPage.placeHolder.comment1,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.white60,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                t.weatherReportPostPage.placeHolder.comment2,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: Colors.white60,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          hintStyle: theme.textTheme.bodyLarge!.copyWith(
            color: Colors.white70,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
