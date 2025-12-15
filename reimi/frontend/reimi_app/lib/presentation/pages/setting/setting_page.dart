import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/presentation/notifiers/domain/auth_notifier.dart';
import 'package:reimi_app/presentation/pages/setting/components/logout_dialog.dart';
import 'package:reimi_app/presentation/pages/setting/components/section_title.dart';
import 'package:reimi_app/presentation/pages/setting/components/setting_app_bar.dart';
import 'package:reimi_app/presentation/pages/setting/components/settings_tile.dart';
import 'package:reimi_app/presentation/shared/pages/auth_gate.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});
  static String get routeName => 'setting';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SettingAppBar(title: '設定'),
                Expanded(
                  child: ListView(
                    children: [
                      const SectionTitle(title: 'アカウント設定'),
                      SettingsTile(
                        title: '本人確認',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: 'プッシュ通知',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: 'ログアウト',
                        shouldNavigate: false,
                        onTap: () {
                          logoutDialog(
                            context: context,
                            onLogOut: () async {
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
                        title: '退会',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      const SectionTitle(title: '履歴'),
                      SettingsTile(
                        title: 'マッチング',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: '非表示',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      const SectionTitle(title: 'ヘルプ'),
                      SettingsTile(
                        title: 'よくある質問',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: 'お問い合わせ',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      const SectionTitle(title: 'Reimiについて'),
                      SettingsTile(
                        title: '利用規約',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: 'プライバシーポリシー',
                        shouldNavigate: true,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10),
                      SettingsTile(
                        title: 'アプリケーション情報',
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
