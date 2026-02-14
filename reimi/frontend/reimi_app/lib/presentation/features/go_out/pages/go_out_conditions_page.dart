import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/chat/pages/chat_page.dart';
import 'package:reimi_app/presentation/features/go_out/notifiers/go_out_conditions_notifier.dart';
import 'package:reimi_app/presentation/features/go_out/pages/go_out_suggestion_page.dart';
import 'package:reimi_app/presentation/features/go_out/states/go_out_conditions_state.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class GoOutConditionsPage extends HookConsumerWidget {
  const GoOutConditionsPage({super.key});
  static String get routeName => 'go_out_conditions';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final notifier = ref.read(goOutConditionsNotifierProvider.notifier);
    final canSubmit = ref.watch(
        goOutConditionsNotifierProvider.select((state) => state.canSubmit));
    final isChanged = ref.watch(
        goOutConditionsNotifierProvider.select((state) => state.isChanged));
    final status = ref
        .watch(goOutConditionsNotifierProvider.select((state) => state.status));
    final goOutDate = ref.watch(
        goOutConditionsNotifierProvider.select((state) => state.goOutDate));
    final goOutPlace = ref.watch(
        goOutConditionsNotifierProvider.select((state) => state.goOutPlace));
    final controller = useTextEditingController(text: goOutPlace);

    useEffect(() {
      final subscription = ref.listenManual<GoOutConditionsState>(
        goOutConditionsNotifierProvider,
        (prev, next) {
          if (!context.mounted) return;

          if (next.status == GoOutConditionsStatus.success) {
            context.go(GoOutSuggestionPage.routeLocation);
          }

          if (next.status == GoOutConditionsStatus.failure &&
              next.errorMessage != null) {
            AppSnackBar.error(context, next.errorMessage!);
          }
        },
      );

      return subscription.close;
    }, const []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                pinned: true,
                automaticallyImplyLeading: false,
                leading: GestureDetector(
                  onTap: isChanged
                      ? () async {
                          await customConfirmationDialog(
                            context: context,
                            title: t.dialog.destructionChanges.title,
                            contentText:
                                t.dialog.destructionChanges.contentText,
                            buttonLabel: t.button.destruction,
                            accentColor: theme.colorScheme.primary,
                            onPressed: () async {
                              await notifier.discardChangesAndClose();
                              if (context.mounted) {
                                context.go(ChatPage.routeLocation);
                              }
                            },
                            onCancel: () {},
                          );
                        }
                      : () {
                          context.pop();
                        },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black87,
                  ),
                ),
                title: Text(
                  t.goOutConditionsPage.title,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              const Gap(height: 16),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    t.goOutConditionsPage.description,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Gap(height: 32),
              SliverSectionTitle(
                title: t.goOutConditionsPage.section.date.title,
                paddingHorizontal: 24,
              ),
              const Gap(height: 8),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: GestureDetector(
                    onTap: () async {
                      final now = DateTime.now();

                      final date = await showDatePicker(
                        context: context,
                        initialDate: now,
                        firstDate: now,
                        lastDate: DateTime(now.year + 2),
                        locale: const Locale('ja'),
                      );

                      if (date == null) return;

                      final selectedDate = DateTime(
                        date.year,
                        date.month,
                        date.day,
                      );
                      notifier.updateGoOutDate(selectedDate);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 18,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            goOutDate == null
                                ? t.goOutConditionsPage.section.date.placeHolder
                                : goOutDate.toSlashDate,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: goOutDate == null
                                  ? Colors.grey[600]
                                  : Colors.black87,
                            ),
                          ),
                          const Icon(LineIcons.calendar),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(height: 24),
              SliverSectionTitle(
                title: t.goOutConditionsPage.section.place.title,
                paddingHorizontal: 24,
              ),
              const Gap(height: 8),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: controller,
                      minLines: 1,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      style: theme.textTheme.bodyMedium,
                      onChanged: (value) {
                        notifier.updateGoOutPlace(value);
                      },
                      decoration: InputDecoration(
                        hint: Text(
                          t.goOutConditionsPage.section.place.placeHolder,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed:
                              status == GoOutConditionsStatus.submitting ||
                                      !canSubmit
                                  ? null
                                  : () {
                                      notifier.submit();
                                    },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.tertiary,
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            t.button.completion,
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
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
