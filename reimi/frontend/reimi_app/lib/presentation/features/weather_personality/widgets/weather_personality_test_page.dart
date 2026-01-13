import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/account/account_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/notifiers/weather_personality_test_notifier.dart';
import 'package:reimi_app/presentation/features/weather_personality/widgets/answer_option_card.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_night.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherPersonalityTestPage extends ConsumerWidget {
  const WeatherPersonalityTestPage({
    super.key,
    required this.title,
    required this.question,
    required this.answerA,
    required this.answerB,
    required this.isSelected,
    required this.value,
    required this.onTapAnswerOption,
    required this.onPressedNext,
  });
  final String title;
  final String question;
  final String answerA;
  final String answerB;
  final bool isSelected;
  final int? value;
  final void Function(int score) onTapAnswerOption;
  final void Function()? onPressedNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final notifier = ref.read(weatherPersonalityTestNotifierProvider.notifier);
    final currentPage = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.currentPage));
    final totalPages = ref.watch(weatherPersonalityTestNotifierProvider
        .select((state) => state.totalPages));

    return Scaffold(
      body: BackgroundContainerNight(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverAppBar(
                  pinned: true,
                  floating: false,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  leading: currentPage == 1
                      ? const SizedBox.shrink()
                      : GestureDetector(
                          onTap: () {
                            notifier.previousPage();
                            context.pop();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                  title: Text(
                    title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () async {
                        await customConfirmationDialog(
                          context: context,
                          title: t.dialog.interruptTest.title,
                          contentText: t.dialog.interruptTest.contentText,
                          buttonLabel: t.button.interrupt,
                          accentColor: theme.colorScheme.primary,
                          onPressed: () async {
                            await notifier.interruptTest();
                            if (context.mounted) {
                              context.go(AccountPage.routeLocation);
                            }
                          },
                          onCancel: null,
                        );
                      },
                      child: const Icon(
                        LineIcons.times,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            '$currentPage/$totalPages',
                            style: theme.textTheme.titleSmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${((currentPage / totalPages) * 100).round()}%',
                            style: theme.textTheme.titleSmall!.copyWith(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          children: [
                            Container(
                              height: 8,
                              color: Colors.white24,
                            ),
                            ShaderMask(
                              shaderCallback: (rect) {
                                return LinearGradient(
                                  colors: [
                                    theme.colorScheme.secondary,
                                    theme.colorScheme.tertiary,
                                    theme.colorScheme.primary,
                                  ],
                                ).createShader(rect);
                              },
                              blendMode: BlendMode.srcIn,
                              child: LinearProgressIndicator(
                                value: currentPage / totalPages,
                                minHeight: 8,
                                backgroundColor: Colors.transparent,
                                valueColor:
                                    const AlwaysStoppedAnimation(Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(height: 24),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4A5F72),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          question,
                          style: theme.textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            height: 1.6,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Divider(color: Colors.white24),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'A：',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white70),
                            ),
                            Flexible(
                              child: Text(
                                answerA,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'B：',
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.white70),
                            ),
                            Flexible(
                              child: Text(
                                answerB,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(height: 32),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      AnswerOptionCard(
                        label: 'Aにかなり近い',
                        onTap: () {
                          onTapAnswerOption(2);
                        },
                        isSelected: value == 2,
                      ),
                      const SizedBox(height: 12),
                      AnswerOptionCard(
                        label: 'Aにやや近い',
                        onTap: () {
                          onTapAnswerOption(1);
                        },
                        isSelected: value == 1,
                      ),
                      const SizedBox(height: 12),
                      AnswerOptionCard(
                        label: 'Bにやや近い',
                        onTap: () {
                          onTapAnswerOption(-1);
                        },
                        isSelected: value == -1,
                      ),
                      const SizedBox(height: 12),
                      AnswerOptionCard(
                        label: 'Bにかなり近い',
                        onTap: () {
                          onTapAnswerOption(-2);
                        },
                        isSelected: value == -2,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(height: 40),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isSelected ? onPressedNext : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4A5F72),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: isSelected
                              ? const BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                )
                              : BorderSide.none,
                        ),
                      ),
                      child: Text(
                        t.button.next,
                        style: theme.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: isSelected
                              ? Colors.white
                              : Colors.white.withValues(alpha: 0.4),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
