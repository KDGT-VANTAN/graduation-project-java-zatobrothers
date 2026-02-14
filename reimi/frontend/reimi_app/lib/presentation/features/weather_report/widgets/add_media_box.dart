import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';

class AddMediaBox extends StatelessWidget {
  const AddMediaBox({
    super.key,
    required this.onTap,
    required this.weatherPhoto,
  });
  final void Function()? onTap;
  final String? weatherPhoto;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white30,
            width: 1.5,
            style: BorderStyle.solid,
          ),
        ),
        child: weatherPhoto == null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    LineIcons.camera,
                    color: Color(0xFF7EC9BE),
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.weatherReportPostPage.placeHolder.media,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white60,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  image: weatherPhoto!.toImageProvider(),
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
