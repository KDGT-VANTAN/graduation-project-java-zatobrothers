import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/theme/reimi_theme.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/routers/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: reimiTheme,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates:  GlobalMaterialLocalizations.delegates,
      // デバイスのロケール設定の言語に対応していなければ英語にフォールバック
      localeListResolutionCallback: (locales, supportedLocales) {
        if (locales == null || locales.isEmpty) {
          return const Locale('ja');
        }
        for (final locale in locales) {
          if (supportedLocales.contains(Locale(locale.languageCode))) {
            return Locale(locale.languageCode);
          }
        }
        return const Locale('en');
      },
    );
  }
}
