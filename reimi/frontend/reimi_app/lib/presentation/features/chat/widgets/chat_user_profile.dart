import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/profile/widgets/basic_info_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/glass_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/main_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/rank_input_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/sub_photo_card.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_detail_page.dart';
import 'package:reimi_app/presentation/shared/widgets/custom_divider.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

List<Widget> chatUserProfile({
  required BuildContext context,
  required UserWithProfileReadModel userProfile,
}) {
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
  return [
    SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      sliver: SliverToBoxAdapter(
        child: MainPhotoCard(
          image: userProfile.mainPhotoUrl.toImageProvider(),
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
                    userProfile.name,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    ' ${userProfile.birthDate.toAge}',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(width: 4),
                  Assets.images.status.weatherReportStatus.image(
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                userProfile.address.displayName(context),
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
    if (userProfile.subPhotos == null || userProfile.subPhotos!.isEmpty) ...[
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
              if (userProfile.subPhotos?[index] == null) {
                return const SizedBox.shrink();
              } else {
                return SubPhotoCard(
                  label: labels[index],
                  subPhotoUrl: userProfile.subPhotos?[index],
                  onTap: null,
                  onDelete: null,
                );
              }
            },
            childCount: 6,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
              extra: {'userId': userProfile.id},
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
                      backgroundImage: Assets.images.weatherPersonality
                          .spoeTraineeSeaOtterImage.path
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
            userProfile.introduction,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.6,
            ),
          ),
        ),
      ),
    ),
    const Gap(height: 32),
    if (userProfile.sunnyDayHobbies == null ||
        userProfile.sunnyDayHobbies!.every((e) => e.isEmpty)) ...[
      const SliverToBoxAdapter(
        child: SizedBox.shrink(),
      ),
    ] else ...[
      SliverSectionTitle(
        title: t.profilePage.section.sunnyDayHobbies,
        paddingHorizontal: 24,
      ),
      if (userProfile.sunnyDayHobbies![0].isNotEmpty) ...[
        const Gap(height: 12),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: RankInputTile(
              rank: 1,
              hint: t.profilePage.placeholder.sunnyDayHobbies.top1,
              value: userProfile.sunnyDayHobbies![0],
              onTap: null,
              onDelete: null,
            ),
          ),
        ),
      ],
      if (userProfile.sunnyDayHobbies![1].isNotEmpty) ...[
        const Gap(height: 12),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: RankInputTile(
              rank: 2,
              hint: t.profilePage.placeholder.sunnyDayHobbies.top2,
              value: userProfile.sunnyDayHobbies![1],
              onTap: null,
              onDelete: null,
            ),
          ),
        ),
      ],
      if (userProfile.sunnyDayHobbies![2].isNotEmpty) ...[
        const Gap(height: 12),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: RankInputTile(
              rank: 3,
              hint: t.profilePage.placeholder.sunnyDayHobbies.top3,
              value: userProfile.sunnyDayHobbies![2],
              onTap: null,
              onDelete: null,
            ),
          ),
        ),
      ],
      const Gap(height: 32),
    ],
    if (userProfile.rainyDayHobbies == null ||
        userProfile.rainyDayHobbies!.every((e) => e.isEmpty)) ...[
      const SliverToBoxAdapter(
        child: SizedBox.shrink(),
      ),
    ] else ...[
      SliverSectionTitle(
        title: t.profilePage.section.rainyDayHobbies,
        paddingHorizontal: 24,
      ),
      if (userProfile.rainyDayHobbies![0].isNotEmpty) ...[
        const Gap(height: 12),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: RankInputTile(
              rank: 1,
              hint: t.profilePage.placeholder.rainyDayHobbies.top1,
              value: userProfile.rainyDayHobbies![0],
              onTap: null,
              onDelete: null,
            ),
          ),
        ),
      ],
      if (userProfile.rainyDayHobbies![1].isNotEmpty) ...[
        const Gap(height: 12),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: RankInputTile(
              rank: 2,
              hint: t.profilePage.placeholder.rainyDayHobbies.top2,
              value: userProfile.rainyDayHobbies![1],
              onTap: null,
              onDelete: null,
            ),
          ),
        ),
      ],
      if (userProfile.rainyDayHobbies![2].isNotEmpty) ...[
        const Gap(height: 12),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: RankInputTile(
              rank: 3,
              hint: t.profilePage.placeholder.rainyDayHobbies.top3,
              value: userProfile.rainyDayHobbies![2],
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
                title: t.profilePage.section.basicInformation.items.gender,
                value: userProfile.gender.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.hometown,
                value: userProfile.hometown?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.bloodType,
                value: userProfile.bloodType?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.height,
                value: userProfile.height?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.bodyShape,
                value: userProfile.bodyShape?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.education,
                value: userProfile.education?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.occupation,
                value: userProfile.occupation?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title:
                    t.profilePage.section.basicInformation.items.annualIncome,
                value: userProfile.annualIncome?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.smoking,
                value: userProfile.smoking?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.alcohol,
                value: userProfile.alcohol?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items.holiday,
                value: userProfile.holiday?.displayName(context),
                onTap: null,
              ),
              const CustomDivider(),
              BasicInfoTile(
                title: t.profilePage.section.basicInformation.items
                    .communicationStyle,
                value: userProfile.communicationStyle?.displayName(context),
                onTap: null,
              ),
            ],
          ),
        ),
      ),
    ),
    const Gap(height: 40),
  ];
}
