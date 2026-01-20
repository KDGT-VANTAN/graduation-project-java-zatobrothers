import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/account/notifiers/account_notifier.dart';
import 'package:reimi_app/presentation/features/account/states/account_state.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_concept_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/weather_personality_button.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/circle_icon_button.dart';
import 'package:reimi_app/presentation/features/account/widgets/info_card.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_page.dart';
import 'package:reimi_app/presentation/features/setting/setting_page.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';

class AccountPage extends HookConsumerWidget {
  const AccountPage({super.key});
  static String get routeName => 'account';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier = ref.read(accountNotifierProvider.notifier);
    final user =
        ref.watch(accountNotifierProvider.select((state) => state.user));
    final isLoading =
        ref.watch(accountNotifierProvider.select((state) => state.isLoading));

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });

      final subscription = ref.listenManual<AccountState>(
        accountNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return subscription.close;
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BackgroundContainerNoon(
        child: RefreshIndicator(
          onRefresh: () async {
            notifier.refresh();
          },
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                pinned: true,
                actionsPadding: const EdgeInsets.only(right: 24),
                actions: [
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
              if (isLoading) ...[
                const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ] else if (user == null) ...[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  sliver: SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(
                        t.accountPage.nullCase,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
              ] else ...[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  sliver: SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        const SizedBox(height: 32),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 56,
                              backgroundColor:
                                  Colors.white.withValues(alpha: 0.9),
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
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          user.name,
                          style: theme.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
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
                        const Spacer(flex: 1),
                        WeatherPersonalityButton(
                          label: t.button.weatherPersonalityTest,
                          onPressed: () {
                            context.push(
                              WeatherPersonalityConceptPage.routeLocation,
                            );
                          },
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
