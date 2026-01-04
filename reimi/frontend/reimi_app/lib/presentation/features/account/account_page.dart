import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_icon_button.dart';
import 'package:reimi_app/presentation/features/account/widgets/info_card.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_page.dart';
import 'package:reimi_app/presentation/features/setting/setting_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});
  static String get routeName => 'account';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleIconButton(
                icon: const Icon(LineIcons.bell),
                onPressed: () {},
              ),
              const SizedBox(width: 16),
              CircleIconButton(
                icon: const Icon(LineIcons.cog),
                onPressed: () {
                  context.push(SettingPage.routeLocation);
                },
              ),
            ],
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 24),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 32),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.white.withValues(alpha: 0.9),
                      child: CircleAvatar(
                        radius: 54,
                        backgroundImage: Assets
                            .images.sample.user000SampleImage.path
                            .toImageProvider(),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: theme.colorScheme.primary,
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            size: 16,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            context.push(
                              ProfilePage.routeLocation,
                              extra: {'userId': ''},
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  'やまだ',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                // TODO: 天気タイプは仮実装
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.wb_sunny, color: Colors.orange),
                      const SizedBox(width: 8),
                      Text(
                        '晴れ男',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    Expanded(
                      child: InfoCard(
                        icon: Assets.images.items.rainbowLike.image(
                          height: 32,
                          width: 32,
                        ),
                        label: '50',
                      ),
                    ),
                    const SizedBox(width: 24),
                    const Expanded(
                      child: InfoCard(
                        icon: Icon(
                          Icons.workspace_premium,
                          size: 32,
                        ),
                        label: '無料プラン',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
