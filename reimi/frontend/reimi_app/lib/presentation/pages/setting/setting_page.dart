import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/notifiers/domain/auth_notifier.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/pages/setting/widgets/section_title.dart';
import 'package:reimi_app/presentation/pages/setting/widgets/settings_tile.dart';
import 'package:reimi_app/presentation/shared/pages/auth_gate.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';

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
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: [
                      SectionTitle(
                          title: t.settingPage.section.accountSetting.title),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting
                            .identityVerification,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting
                            .pushNotification,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.accountSetting.withdrawal,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SectionTitle(title: t.settingPage.section.history.title),
                      SettingsTile(
                        title: t.settingPage.section.history.matching,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.history.hidden,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SectionTitle(title: t.settingPage.section.help.title),
                      SettingsTile(
                        title: t.settingPage.section.help.faq,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.help.inquiry,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SectionTitle(
                          title: t.settingPage.section.aboutReimi.title),
                      SettingsTile(
                        title: t.settingPage.section.aboutReimi.tos,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.aboutReimi.pp,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: t.settingPage.section.aboutReimi
                            .applicationInformation,
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
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
