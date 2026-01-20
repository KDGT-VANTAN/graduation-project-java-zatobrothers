import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/storage/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'locale_storage.dart';

part 'locale_provider.g.dart';

@riverpod
LocaleStorage localeStorage(Ref ref) {
  return LocaleStorage(ref.watch(sharedPreferencesProvider));
}
