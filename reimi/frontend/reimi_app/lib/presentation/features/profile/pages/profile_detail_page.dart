import 'package:flutter/material.dart';
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
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/profile_detail_notifier.dart';
import 'package:reimi_app/presentation/features/profile/widgets/basic_info_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/glass_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/main_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/rank_input_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/sub_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/bottom_action_buttons_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';
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
    final notifier = ref.read(profileDetailNotifierProvider(userId).notifier);
    final data = ref.watch(
      profileDetailNotifierProvider(userId).select((state) => state.data),
    );

    return Scaffold(
      body: BackgroundContainer(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                snap: true,
                title: Text(
                  t.profileDetailPage.title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              if (data == null) ...[
                const SliverToBoxAdapter(
                  child: Center(
                    child: Text('ユーザーのプロフィールが取得できませんでした。'),
                  ),
                )
              ] else ...[
                const Gap(height: 16),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  sliver: SliverToBoxAdapter(
                    child: MainPhotoCard(
                      image: data.mainPhotoUrl.toImageProvider(),
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
                                data.name,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                ' ${data.birthDate.toAge}',
                                style: theme.textTheme.bodyMedium,
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            data.address.displayName(context),
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
                if (data.subPhotoUrls == null) ...[
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
                          if (data.subPhotoUrls?[index] == null) {
                            return const SizedBox.shrink();
                          } else {
                            return SubPhotoCard(
                              label: labels[index],
                              subPhotoUrl: data.subPhotoUrls?[index],
                              onTap: null,
                              onDelete: null,
                            );
                          }
                        },
                        childCount: data.subPhotoUrls?.length ?? 0,
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
                      onTap: () {},
                      child: Row(
                        children: [
                          const Icon(Icons.wb_sunny, color: Colors.orange),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              '晴れ男',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          const Icon(Icons.chevron_right),
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
                        data.introduction,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(height: 32),
                if (data.sunnyDayHobbies == null ||
                    data.sunnyDayHobbies!.every((e) => e.isEmpty)) ...[
                  const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  ),
                ] else ...[
                  SliverSectionTitle(
                    title: t.profilePage.section.sunnyDayHobbies,
                    paddingHorizontal: 24,
                  ),
                  if (data.sunnyDayHobbies![0].isNotEmpty) ...[
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: RankInputTile(
                          rank: 1,
                          hint: t.profilePage.placeholder.sunnyDayHobbies.top1,
                          value: data.sunnyDayHobbies![0],
                          onTap: null,
                          onDelete: null,
                        ),
                      ),
                    ),
                  ],
                  if (data.sunnyDayHobbies![1].isNotEmpty) ...[
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: RankInputTile(
                          rank: 2,
                          hint: t.profilePage.placeholder.sunnyDayHobbies.top2,
                          value: data.sunnyDayHobbies![1],
                          onTap: null,
                          onDelete: null,
                        ),
                      ),
                    ),
                  ],
                  if (data.sunnyDayHobbies![2].isNotEmpty) ...[
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: RankInputTile(
                          rank: 3,
                          hint: t.profilePage.placeholder.sunnyDayHobbies.top3,
                          value: data.sunnyDayHobbies![2],
                          onTap: null,
                          onDelete: null,
                        ),
                      ),
                    ),
                  ],
                  const Gap(height: 32),
                ],
                if (data.rainyDayHobbies == null ||
                    data.rainyDayHobbies!.every((e) => e.isEmpty)) ...[
                  const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  ),
                ] else ...[
                  SliverSectionTitle(
                    title: t.profilePage.section.rainyDayHobbies,
                    paddingHorizontal: 24,
                  ),
                  if (data.rainyDayHobbies![0].isNotEmpty) ...[
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: RankInputTile(
                          rank: 1,
                          hint: t.profilePage.placeholder.rainyDayHobbies.top1,
                          value: data.rainyDayHobbies![0],
                          onTap: null,
                          onDelete: null,
                        ),
                      ),
                    ),
                  ],
                  if (data.rainyDayHobbies![1].isNotEmpty) ...[
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: RankInputTile(
                          rank: 2,
                          hint: t.profilePage.placeholder.rainyDayHobbies.top2,
                          value: data.rainyDayHobbies![1],
                          onTap: null,
                          onDelete: null,
                        ),
                      ),
                    ),
                  ],
                  if (data.rainyDayHobbies![2].isNotEmpty) ...[
                    const Gap(height: 12),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      sliver: SliverToBoxAdapter(
                        child: RankInputTile(
                          rank: 3,
                          hint: t.profilePage.placeholder.rainyDayHobbies.top3,
                          value: data.rainyDayHobbies![2],
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
                            title: t.profilePage.section.basicInformation.items
                                .gender,
                            value: data.gender.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .hometown,
                            value: data.hometown?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .bloodType,
                            value: data.bloodType?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .height,
                            value: data.height?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .bodyShape,
                            value: data.bodyShape?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .education,
                            value: data.education?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .occupation,
                            value: data.occupation?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .annualIncome,
                            value: data.annualIncome?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .smoking,
                            value: data.smoking?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .alcohol,
                            value: data.alcohol?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .holiday,
                            value: data.holiday?.displayName(context),
                            onTap: null,
                          ),
                          const CustomDivider(),
                          BasicInfoTile(
                            title: t.profilePage.section.basicInformation.items
                                .communicationStyle,
                            value:
                                data.communicationStyle?.displayName(context),
                            onTap: null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(height: 40),
              ]
            ],
          ),
        ),
      ),
      bottomNavigationBar: data != null
          ? BottomActionButtonsBar(
              leftButtonOnTap: () {
                notifier.onTapSkippedButton();
              },
              centerButtonOnTap: () {
                notifier.onTapRainbowLikeButton();
              },
              rightButtonOnTap: () {
                notifier.onTapLikeButton();
              },
            )
          : null,
    );
  }
}
