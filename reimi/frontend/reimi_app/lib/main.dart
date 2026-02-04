import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/config/crashlytics_config.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/app/my_app.dart';
import 'package:reimi_app/core/storage/shared_preferences_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:reimi_app/firebase_options/firebase_options_dev.dart' as dev;
import 'package:reimi_app/firebase_options/firebase_options_prod.dart' as prod;

// 環境変数から取得（dart-define-from-fileで渡される）
const flavor = String.fromEnvironment('flavor');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firebaseOptions = flavor == 'prod'
      ? prod.DefaultFirebaseOptions.currentPlatform
      : dev.DefaultFirebaseOptions.currentPlatform;
  await Firebase.initializeApp(options: firebaseOptions);
  final prefs = await SharedPreferences.getInstance();
  LocaleSettings.useDeviceLocale(); // デバイスのロケール設定に基づいて初期言語を設定
  setupCrashlytics();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: TranslationProvider(
        child: const MyApp(),
      ),
    ),
  );
}
