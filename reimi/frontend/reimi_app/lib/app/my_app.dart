import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/core/locale/locale_notifier.dart';
import 'package:reimi_app/core/theme/reimi_theme.dart';
import 'package:reimi_app/core/router/app_router.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    useEffect(() {
      Future.microtask(() {
        ref.read(localeNotifierProvider.notifier).initialize();
      });
      return null;
    }, const []);

    final appLocale = ref.watch(localeNotifierProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Router
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      // Theme
      theme: reimiTheme,
      // Locale
      locale: appLocale.flutterLocale,
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
