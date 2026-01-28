import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';

class SubPhotoCard extends StatelessWidget {
  const SubPhotoCard({
    super.key,
    required this.label,
    required this.subPhotoUrl,
    required this.onTap,
    required this.onDelete,
  });
  final String label;
  final String? subPhotoUrl;
  final void Function()? onTap;
  final void Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (subPhotoUrl == null || subPhotoUrl!.isEmpty) ...[
              const Icon(
                LineIcons.retroCamera,
                color: Colors.black54,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: theme.textTheme.titleSmall!.copyWith(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ] else ...[
              Stack(
                alignment: AlignmentGeometry.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      // 正方形
                      aspectRatio: 1,
                      child: Image(
                        image: subPhotoUrl.toImageProvider(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (onTap != null)
                    Positioned(
                      right: 3,
                      bottom: 3,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          alignment: AlignmentGeometry.center,
                          icon: Icon(
                            LineIcons.alternateTrash,
                            size: 20,
                            color: theme.colorScheme.primary,
                          ),
                          onPressed: onDelete,
                        ),
                      ),
                    ),
                ],
              ),
            ]
          ],
        ),
      ),
    );
  }
}
