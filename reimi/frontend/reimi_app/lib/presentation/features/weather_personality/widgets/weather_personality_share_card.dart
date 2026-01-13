import 'package:flutter/material.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';

class WeatherPersonalityShareCard extends StatelessWidget {
  const WeatherPersonalityShareCard({
    super.key,
    required this.typeCode,
    required this.typeName,
    required this.catchphrase,
    required this.characterImageUrl,
  });

  final String typeCode;
  final String typeName;
  final String catchphrase;
  final String characterImageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.secondary,
              theme.colorScheme.primary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'あなたのタイプは',
                  style: theme.textTheme.labelMedium!.copyWith(
                    color: Colors.white70,
                  ),
                ),
                Text(
                  typeCode,
                  style: theme.textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  typeName,
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(flex: 1),
            Container(
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(4),
              child: Image(
                image: characterImageUrl.toImageProvider(),
              ),
            ),
            const Spacer(flex: 1),
            Column(
              children: [
                Text(
                  '「$catchphrase」',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '診断 by Weather Personality',
                  style: theme.textTheme.labelSmall!.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
