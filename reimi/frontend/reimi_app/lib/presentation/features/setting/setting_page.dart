import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/app/auth/notifiers/auth_notifier.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/widgets/section_title.dart';
import 'package:reimi_app/presentation/features/setting/widgets/settings_tile.dart';
import 'package:reimi_app/presentation/app/router/auth_gate.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});
  static String get routeName => 'setting';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          t.settingPage.title,
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: [
                      const SizedBox(height: 16),
                      SectionTitle(
                          title: t.settingPage.section.accountSetting.title),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting
                            .identityVerification,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting
                            .pushNotification,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting.logout,
                        shouldNavigate: false,
                        onTap: () {
                          customConfirmationDialog(
                            context: context,
                            title: t.dialog.logout.title,
                            contentText: t.dialog.logout.contentText,
                            buttonLabel: t.button.logout,
                            accentColor: Colors.red,
                            onPressed: () async {
                              await ref
                                  .read(authNotifierProvider.notifier)
                                  .signOut(
                                onSuccess: () async {
                                  context.go(AuthGate.routeLocation);
                                },
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting.withdrawal,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      SectionTitle(title: t.settingPage.section.history.title),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.history.matching,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.history.hidden,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      SectionTitle(title: t.settingPage.section.help.title),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.help.faq,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.help.inquiry,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      SectionTitle(
                          title: t.settingPage.section.aboutReimi.title),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.aboutReimi.tos,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.aboutReimi.pp,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 8),
                      SettingsTile(
                        title: t.settingPage.section.aboutReimi
                            .applicationInformation,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
