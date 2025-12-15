import 'package:flutter/material.dart';
import 'package:reimi_app/presentation/shared/pages/blur_loading_overlay.dart';
import 'package:reimi_app/presentation/shared/widgets/arc_background.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});
  static String get routeName => 'loading';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Stack(
        children: [
          ...ArcBackground.buildArcs(
            context: context,
            topArcColor: theme.colorScheme.secondary,
            bottomArcColor: theme.colorScheme.tertiary,
          ),
          const BlurLoadingOverlay(),
        ],
      ),
    );
  }
}
