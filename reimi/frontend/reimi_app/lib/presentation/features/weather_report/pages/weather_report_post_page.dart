import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/value_objects/feeling_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/forecast_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/weather_type_extension.dart';
import 'package:reimi_app/domain/value_objects/media_type.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/matching/pages/ai_matching_page.dart';
import 'package:reimi_app/presentation/features/weather_report/notifiers/weather_report_post_notifier.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_report_page.dart';
import 'package:reimi_app/presentation/features/weather_report/pages/weather_select_page.dart';
import 'package:reimi_app/presentation/features/weather_report/states/weather_report_post_state.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/add_media_box.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/comment_box.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/show_pick_media_modal_sheet.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/send_button.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/weather_report_complete_dialog.dart';
import 'package:reimi_app/presentation/features/weather_report/widgets/info_tile.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/utils/pick_image_from_gallery.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_night.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class WeatherReportPostPage extends HookConsumerWidget {
  const WeatherReportPostPage({super.key});
  static String get routeName => 'weather_report_post';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final notifier = ref.read(weatherReportPostNotifierProvider.notifier);
    final url = ref
        .watch(weatherReportPostNotifierProvider.select((state) => state.url));
    final comment = ref.watch(
        weatherReportPostNotifierProvider.select((state) => state.comment));
    final weatherType = ref.watch(
        weatherReportPostNotifierProvider.select((state) => state.weatherType));
    final feelingType = ref.watch(
        weatherReportPostNotifierProvider.select((state) => state.feelingType));
    final forecastType = ref.watch(weatherReportPostNotifierProvider
        .select((state) => state.forecastType));
    final isAllTypeSelected =
        weatherType != null && feelingType != null && forecastType != null;
    final canSubmit = ref.watch(
        weatherReportPostNotifierProvider.select((state) => state.canSubmit));
    final isChanged = ref.watch(
        weatherReportPostNotifierProvider.select((state) => state.isChanged));
    final status = ref.watch(
        weatherReportPostNotifierProvider.select((state) => state.status));
    final controller = useTextEditingController(text: comment);
    final prefectureCity = ref.watch(weatherReportPostNotifierProvider
        .select((state) => state.prefectureCity));

    useEffect(() {
      final subscription = ref.listenManual<WeatherReportPostState>(
        weatherReportPostNotifierProvider,
        (prev, next) {
          if (!context.mounted) return;

          if (next.status == WeatherReportPostStatus.success) {
            weatherReportCompleteDialog(
              context: context,
              onConfirm: () {
                context.go(AIMatchingPage.routeLocation);
              },
            );
          }

          if (next.status == WeatherReportPostStatus.failure &&
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
      body: BackgroundContainerNight(
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
                          contentText: t.dialog.destructionChanges.contentText,
                          buttonLabel: t.button.destruction,
                          accentColor: theme.colorScheme.primary,
                          onPressed: () async {
                            await notifier.discardChangesAndClose();
                            if (context.mounted) {
                              context.go(
                                WeatherReportPage.routeLocation,
                              );
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
                  color: Colors.white,
                ),
              ),
              title: Text(
                t.weatherReportPostPage.title,
                style: theme.textTheme.titleMedium!.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const Gap(height: 16),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddMediaBox(
                      url: url,
                      onTap: () {
                        showPickMediaModalSheet(
                          context: context,
                          selectExistingPhoto: () async {
                            final file = await pickImageFromGallery();
                            if (file != null) {
                              notifier.updateMedia(
                                mediaType: MediaType.image,
                                url: file.path,
                              );
                            }
                          },
                        );
                      },
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: CommentBox(
                        comment: comment,
                        controller: controller,
                        onChanged: notifier.updateComment,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(height: 12),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: InfoTile(
                  label: t.weatherReportPostPage.label.location,
                  value: prefectureCity?.fullName ?? '',
                  onTap: () async {
                    await notifier.updateLocation();
                  },
                ),
              ),
            ),
            const Gap(height: 12),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: InfoTile(
                  label: t.weatherReportPostPage.label.weatherFeelingForecast,
                  value: isAllTypeSelected
                      ? '${weatherType.displayName(context)}/'
                          '${feelingType.displayName(context)}/'
                          '${forecastType.displayName(context)}'
                      : null,
                  onTap: () {
                    context.push(WeatherSelectPage.routeLocation);
                  },
                ),
              ),
            ),
            const Gap(height: 12),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: InfoTile(
                  label: t.weatherReportPostPage.label.observation,
                  value: '1006.5hPa',
                  onTap: () {},
                ),
              ),
            ),
            const Gap(height: 40),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: SendButton(
                  canSubmit: canSubmit,
                  onTap:
                      !canSubmit || status == WeatherReportPostStatus.submitting
                          ? null
                          : () async {
                              await notifier.submit();
                            },
                ),
              ),
            ),
            const Gap(height: 24),
          ],
        ),
      ),
    );
  }
}
