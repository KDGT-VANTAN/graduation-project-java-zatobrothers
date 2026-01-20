import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'locale_provider.dart';

part 'locale_notifier.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  @override
  AppLocale build() {
    return LocaleSettings.currentLocale;
  }

  Future<void> initialize() async {
    final storage = ref.read(localeStorageProvider);
    final appLocale = storage.load();

    if (appLocale != null) {
      LocaleSettings.setLocale(appLocale);
      state = appLocale;
      return;
    }
    state = LocaleSettings.currentLocale;
  }

  Future<void> changeLocale(AppLocale locale) async {
    final storage = ref.read(localeStorageProvider);
    await storage.save(locale);
    state = locale;
    LocaleSettings.setLocale(locale);
  }
}
