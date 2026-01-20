import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleStorage {
  const LocaleStorage(this._prefs);
  final SharedPreferences _prefs;

  static const _key = 'app_locale';

  AppLocale? load() {
    final tag = _prefs.getString(_key);
    if (tag == null) return null;

    return AppLocale.values.where((e) => e.languageTag == tag).firstOrNull;
  }

  Future<void> save(AppLocale locale) async {
    await _prefs.setString(_key, locale.languageTag);
  }
}
