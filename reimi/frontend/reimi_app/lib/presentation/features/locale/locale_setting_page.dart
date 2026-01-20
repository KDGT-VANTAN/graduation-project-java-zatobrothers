import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/core/locale/locale_notifier.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class LocaleSettingPage extends HookConsumerWidget {
  const LocaleSettingPage({super.key});
  static String get routeName => 'locale_setting';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final locale = ref.watch(localeNotifierProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.settingPage.section.accountSetting.locale,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: RadioGroup<AppLocale>(
              groupValue: locale,
              onChanged: (value) {
                if (value == null) return;
                ref.read(localeNotifierProvider.notifier).changeLocale(value);
              },
              child: Column(
                children: AppLocale.values.map((e) {
                  return Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: RadioListTile<AppLocale>(
                      value: e,
                      title: Text(t.locales[e.languageTag]!),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
