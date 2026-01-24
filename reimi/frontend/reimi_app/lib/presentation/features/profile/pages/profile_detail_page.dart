import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/alcohol_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/annual_income_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/blood_type_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/body_shape_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/communication_style_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/education_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/gender_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/height_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/holiday_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/occupation_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/smoking_extension.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/profile_detail_notifier.dart';
import 'package:reimi_app/presentation/features/profile/states/profile_detail_state.dart';
import 'package:reimi_app/presentation/features/profile/widgets/basic_info_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/glass_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/main_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/rank_input_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/show_rainbow_like_modal_sheet.dart';
import 'package:reimi_app/presentation/features/profile/widgets/sub_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/bottom_action_buttons_bar.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_detail_page.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/custom_divider.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class ProfileDetailPage extends HookConsumerWidget {
  static String get routeName => 'profile_detail';
  static String get routeLocation => '/$routeName';
  const ProfileDetailPage({
    super.key,
    required this.userId,
  });
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    final labels = [
      t.profilePage.placeholder.subPhoto.labels.smile,
      t.profilePage.placeholder.subPhoto.labels.fullLength,
      t.profilePage.placeholder.subPhoto.labels.hobby,
      t.profilePage.placeholder.subPhoto.labels.food,
      t.profilePage.placeholder.subPhoto.labels.travel,
      t.profilePage.placeholder.subPhoto.labels.holiday,
    ];
    final notifier = ref.read(profileDetailNotifierProvider.notifier);
    final profile = ref
        .watch(profileDetailNotifierProvider.select((state) => state.profile));
    final isLoading = ref.watch(
        profileDetailNotifierProvider.select((state) => state.isLoading));

    useEffect(() {
      Future.microtask(() {
        notifier.init(userId);
      });

      final subscription = ref.listenManual<ProfileDetailState>(
        profileDetailNotifierProvider,
        (prev, next) {
          if (next.errorMessage == null) return;
          AppSnackBar.error(context, next.errorMessage!);
        },
      );

      return subscription.close;
    }, const []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              await notifier.refresh(userId);
            },
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverAppBar(
                  floating: true,
                  snap: true,
                  title: Text(
                    t.profileDetailPage.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                if (isLoading) ...[
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ] else if (profile == null) ...[
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(
                          t.profileDetailPage.nullCase,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  )
                ] else ...[
                  const Gap(height: 16),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverToBoxAdapter(
                      child: MainPhotoCard(
                        image: profile.mainPhotoUrl.toImageProvider(),
                        onTap: null,
                      ),
                    ),
                  ),
                  const Gap(height: 16),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverToBoxAdapter(
                      child: GlassTile(
                        onTap: null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  profile.name,
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  ' ${profile.birthDate.toAge}',
                                  style: theme.textTheme.bodyMedium,
                                ),
                                if (profile.isTodayReported != null &&
                                    profile.isTodayReported == true) ...[
                                  const SizedBox(width: 4),
                                  Assets.images.status.weatherReportStatus
                                      .image(
                                    height: 20,
                                  ),
                                ]
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              profile.address.displayName(context),
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  if (profile.subPhotos == null ||
                      profile.subPhotos!.isEmpty) ...[
                    const SliverToBoxAdapter(
                      child: SizedBox.shrink(),
                    ),
                  ] else ...[
                    SliverSectionTitle(
                      title: t.profilePage.section.subPhoto,
                      paddingHorizontal: 24,
                    ),
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (profile.subPhotos?[index] == null) {
                              return const SizedBox.shrink();
                            } else {
                              return SubPhotoCard(
                                label: labels[index],
                                subPhotoUrl: profile.subPhotos?[index],
                                onTap: null,
                                onDelete: null,
                              );
                            }
                          },
                          childCount: profile.subPhotos?.length ?? 0,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                      ),
                    ),
                    const Gap(height: 32),
                  ],
                  SliverSectionTitle(
                    title: t.profilePage.section.weatherPersonality,
                    paddingHorizontal: 24,
                  ),
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverToBoxAdapter(
                      child: GlassTile(
                        onTap: () {
                          context.push(
                            WeatherPersonalityDetailPage.routeLocation,
                            extra: {'userId': userId},
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: theme.colorScheme.primary,
                                    backgroundImage: Assets
                                        .images
                                        .weatherPersonality
                                        .spoeTraineeSeaOtterImage
                                        .path
                                        .toImageProvider(),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'SPOE',
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: theme.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '(トレーニーラッコ)',
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: theme.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 22,
                              color: Colors.black87.withValues(alpha: 0.4),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  SliverSectionTitle(
                    title: t.profilePage.section.introduction,
                    paddingHorizontal: 24,
                  ),
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverToBoxAdapter(
                      child: GlassTile(
                        onTap: null,
                        child: Text(
                          profile.introduction,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.6,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 32),
                  if (profile.sunnyDayHobbies == null ||
                      profile.sunnyDayHobbies!.every((e) => e.isEmpty)) ...[
                    const SliverToBoxAdapter(
                      child: SizedBox.shrink(),
                    ),
                  ] else ...[
                    SliverSectionTitle(
                      title: t.profilePage.section.sunnyDayHobbies,
                      paddingHorizontal: 24,
                    ),
                    if (profile.sunnyDayHobbies![0].isNotEmpty) ...[
                      const Gap(height: 12),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: RankInputTile(
                            rank: 1,
                            hint:
                                t.profilePage.placeholder.sunnyDayHobbies.top1,
                            value: profile.sunnyDayHobbies![0],
                            onTap: null,
                            onDelete: null,
                          ),
                        ),
                      ),
                    ],
                    if (profile.sunnyDayHobbies![1].isNotEmpty) ...[
                      const Gap(height: 12),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: RankInputTile(
                            rank: 2,
                            hint:
                                t.profilePage.placeholder.sunnyDayHobbies.top2,
                            value: profile.sunnyDayHobbies![1],
                            onTap: null,
                            onDelete: null,
                          ),
                        ),
                      ),
                    ],
                    if (profile.sunnyDayHobbies![2].isNotEmpty) ...[
                      const Gap(height: 12),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: RankInputTile(
                            rank: 3,
                            hint:
                                t.profilePage.placeholder.sunnyDayHobbies.top3,
                            value: profile.sunnyDayHobbies![2],
                            onTap: null,
                            onDelete: null,
                          ),
                        ),
                      ),
                    ],
                    const Gap(height: 32),
                  ],
                  if (profile.rainyDayHobbies == null ||
                      profile.rainyDayHobbies!.every((e) => e.isEmpty)) ...[
                    const SliverToBoxAdapter(
                      child: SizedBox.shrink(),
                    ),
                  ] else ...[
                    SliverSectionTitle(
                      title: t.profilePage.section.rainyDayHobbies,
                      paddingHorizontal: 24,
                    ),
                    if (profile.rainyDayHobbies![0].isNotEmpty) ...[
                      const Gap(height: 12),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: RankInputTile(
                            rank: 1,
                            hint:
                                t.profilePage.placeholder.rainyDayHobbies.top1,
                            value: profile.rainyDayHobbies![0],
                            onTap: null,
                            onDelete: null,
                          ),
                        ),
                      ),
                    ],
                    if (profile.rainyDayHobbies![1].isNotEmpty) ...[
                      const Gap(height: 12),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: RankInputTile(
                            rank: 2,
                            hint:
                                t.profilePage.placeholder.rainyDayHobbies.top2,
                            value: profile.rainyDayHobbies![1],
                            onTap: null,
                            onDelete: null,
                          ),
                        ),
                      ),
                    ],
                    if (profile.rainyDayHobbies![2].isNotEmpty) ...[
                      const Gap(height: 12),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        sliver: SliverToBoxAdapter(
                          child: RankInputTile(
                            rank: 3,
                            hint:
                                t.profilePage.placeholder.rainyDayHobbies.top3,
                            value: profile.rainyDayHobbies![2],
                            onTap: null,
                            onDelete: null,
                          ),
                        ),
                      ),
                    ],
                    const Gap(height: 32),
                  ],
                  SliverSectionTitle(
                    title: t.profilePage.section.basicInformation.title,
                    paddingHorizontal: 24,
                  ),
                  const Gap(height: 12),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.gender,
                              value: profile.gender.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.hometown,
                              value: profile.hometown?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.bloodType,
                              value: profile.bloodType?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.height,
                              value: profile.height?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.bodyShape,
                              value: profile.bodyShape?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.education,
                              value: profile.education?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.occupation,
                              value: profile.occupation?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.annualIncome,
                              value: profile.annualIncome?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.smoking,
                              value: profile.smoking?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.alcohol,
                              value: profile.alcohol?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.holiday,
                              value: profile.holiday?.displayName(context),
                              onTap: null,
                            ),
                            const CustomDivider(),
                            BasicInfoTile(
                              title: t.profilePage.section.basicInformation
                                  .items.communicationStyle,
                              value: profile.communicationStyle
                                  ?.displayName(context),
                              onTap: null,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 40),
                ],
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: profile == null || isLoading
          ? null
          : BottomActionButtonsBar(
              leftButtonOnTap: () {
                notifier.onTapSkippedButton();
              },
              centerButtonOnTap: () async {
                showRainbowLikeModalSheet(
                  context: context,
                  notifier: notifier,
                );
              },
              rightButtonOnTap: () async {
                await notifier.onTapLikeButton(userId);
              },
            ),
    );
  }
}
