import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
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
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/profile_edit_notifier.dart';
import 'package:reimi_app/presentation/features/profile/states/profile_edit_state.dart';
import 'package:reimi_app/presentation/features/profile/widgets/basic_info_tile.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_edit_page.dart';
import 'package:reimi_app/presentation/features/weather_personality/pages/weather_personality_detail_page.dart';
import 'package:reimi_app/presentation/shared/utils/enum_picker.dart';
import 'package:reimi_app/presentation/features/profile/widgets/glass_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/main_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/rank_input_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/sub_photo_card.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/utils/pick_image_from_gallery.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container_noon.dart';
import 'package:reimi_app/presentation/shared/widgets/custom_divider.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class ProfilePage extends HookConsumerWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/$routeName';
  const ProfilePage({super.key});

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
    final notifier = ref.read(profileEditNotifierProvider.notifier);
    final isChanged = ref.watch(
      profileEditNotifierProvider.select((state) => state.isChanged),
    );
    final userId =
        ref.watch(profileEditNotifierProvider.select((state) => state.id));
    final mainPhotoUrl = ref.watch(
        profileEditNotifierProvider.select((state) => state.mainPhotoUrl));
    final subPhotos = ref
        .watch(profileEditNotifierProvider.select((state) => state.subPhotos));
    final introduction = ref.watch(
        profileEditNotifierProvider.select((state) => state.introduction));
    final sunnyDayHobbies = ref.watch(
        profileEditNotifierProvider.select((state) => state.sunnyDayHobbies));
    final rainyDayHobbies = ref.watch(
        profileEditNotifierProvider.select((state) => state.rainyDayHobbies));
    final name =
        ref.watch(profileEditNotifierProvider.select((state) => state.name));
    final gender =
        ref.watch(profileEditNotifierProvider.select((state) => state.gender));
    final birthDate = ref
        .watch(profileEditNotifierProvider.select((state) => state.birthDate));
    final address =
        ref.watch(profileEditNotifierProvider.select((state) => state.address));
    final hometown = ref
        .watch(profileEditNotifierProvider.select((state) => state.hometown));
    final bloodType = ref
        .watch(profileEditNotifierProvider.select((state) => state.bloodType));
    final height =
        ref.watch(profileEditNotifierProvider.select((state) => state.height));
    final bodyShape = ref
        .watch(profileEditNotifierProvider.select((state) => state.bodyShape));
    final education = ref
        .watch(profileEditNotifierProvider.select((state) => state.education));
    final occupation = ref
        .watch(profileEditNotifierProvider.select((state) => state.occupation));
    final annualIncome = ref.watch(
        profileEditNotifierProvider.select((state) => state.annualIncome));
    final smoking =
        ref.watch(profileEditNotifierProvider.select((state) => state.smoking));
    final alcohol =
        ref.watch(profileEditNotifierProvider.select((state) => state.alcohol));
    final holiday =
        ref.watch(profileEditNotifierProvider.select((state) => state.holiday));
    final communicationStyle = ref.watch(profileEditNotifierProvider
        .select((state) => state.communicationStyle));
    final status =
        ref.watch(profileEditNotifierProvider.select((state) => state.status));
    final isLoading = ref
        .watch(profileEditNotifierProvider.select((state) => state.isLoading));

    useEffect(() {
      Future.microtask(() {
        notifier.init();
      });
      final subscription = ref.listenManual<ProfileEditState>(
        profileEditNotifierProvider,
        (prev, next) {
          if (!context.mounted) return;

          if (next.status == ProfileEditStatus.success) {
            AppSnackBar.success(context, t.snackBar.profile.success);
          }

          if (next.status == ProfileEditStatus.failure &&
              next.errorMessage != null) {
            AppSnackBar.error(context, next.errorMessage!);
          }
        },
      );

      return subscription.close;
    }, const []);

    return Scaffold(
      body: BackgroundContainerNoon(
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              centerTitle: true,
              leading: GestureDetector(
                onTap: () async {
                  if (isChanged) {
                    await customConfirmationDialog(
                      context: context,
                      title: t.dialog.saveChanges.title,
                      contentText: t.dialog.saveChanges.contentText,
                      buttonLabel: t.button.save,
                      accentColor: theme.colorScheme.primary,
                      onPressed: () async {
                        await notifier.submit();
                      },
                      onCancel: () async {
                        await notifier.discardChangesAndClose();
                      },
                    );
                  } else {
                    context.pop();
                  }
                },
                child: const Icon(Icons.arrow_back_ios_new),
              ),
              title: Text(
                t.profilePage.title,
                style: theme.textTheme.titleMedium!.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: !isChanged || status == ProfileEditStatus.submitting
                      ? null
                      : () async {
                          await notifier.submit();
                        },
                  child: const Icon(LineIcons.save),
                ),
                const SizedBox(width: 24),
              ],
            ),
            if (isLoading) ...[
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ] else if (userId == null) ...[
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                sliver: SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Text(
                      t.profilePage.nullCase,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ] else ...[
              const Gap(height: 16),
              SliverSectionTitle(
                title: t.profilePage.section.mainPhoto,
                paddingHorizontal: 24,
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: MainPhotoCard(
                    image: mainPhotoUrl.toImageProvider(),
                    onTap: () async {
                      final file = await pickImageFromGallery();
                      if (file != null) {
                        notifier.updateMainPhotoUrl(file.path);
                      }
                    },
                  ),
                ),
              ),
              const Gap(height: 32),
              SliverSectionTitle(
                title: t.profilePage.section.subPhoto,
                paddingHorizontal: 24,
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final subPhoto =
                          (subPhotos != null && index < subPhotos.length)
                              ? subPhotos[index]
                              : null;
                      return SubPhotoCard(
                        label: labels[index],
                        subPhotoUrl: subPhoto,
                        onTap: () async {
                          final file = await pickImageFromGallery();
                          if (file != null) {
                            notifier.setSubPhoto(
                              url: file.path,
                              index: index,
                            );
                          }
                        },
                        onDelete: () async {
                          await customConfirmationDialog(
                            context: context,
                            title: t.dialog.deletePhoto.title,
                            contentText: t.dialog.deletePhoto.contentText,
                            buttonLabel: t.button.delete,
                            accentColor: Colors.red,
                            onPressed: () {
                              notifier.removeSubPhoto(index);
                            },
                          );
                        },
                      );
                    },
                    childCount: labels.length,
                  ),
                ),
              ),
              const Gap(height: 32),
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
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.title(
                            item: t.profilePage.section.introduction,
                          ),
                          'initValue': introduction,
                          'onSave': notifier.updateIntroduction,
                          'isMultiline': true,
                        },
                      );
                    },
                    child: Text(
                      introduction ?? '',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.6,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(height: 32),
              SliverSectionTitle(
                title: t.profilePage.section.sunnyDayHobbies,
                paddingHorizontal: 24,
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: RankInputTile(
                    rank: 1,
                    hint: t.profilePage.placeholder.sunnyDayHobbies.top1,
                    value: sunnyDayHobbies?[0],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.sunnyDayHobbies.top1,
                          'initValue': sunnyDayHobbies?[0],
                          'onSave': (hobby) {
                            notifier.setSunnyDayHobby(hobby: hobby, index: 0);
                          },
                          'isMultiline': false,
                        },
                      );
                    },
                    onDelete: () {
                      notifier.removeSunnyDayHobby(0);
                    },
                  ),
                ),
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: RankInputTile(
                    rank: 2,
                    hint: t.profilePage.placeholder.sunnyDayHobbies.top2,
                    value: sunnyDayHobbies?[1],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.sunnyDayHobbies.top2,
                          'initValue': sunnyDayHobbies?[1],
                          'onSave': (hobby) {
                            notifier.setSunnyDayHobby(hobby: hobby, index: 1);
                          },
                          'isMultiline': false,
                        },
                      );
                    },
                    onDelete: () {
                      notifier.removeSunnyDayHobby(1);
                    },
                  ),
                ),
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: RankInputTile(
                    rank: 3,
                    hint: t.profilePage.placeholder.sunnyDayHobbies.top3,
                    value: sunnyDayHobbies?[2],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.sunnyDayHobbies.top3,
                          'initValue': sunnyDayHobbies?[2],
                          'onSave': (hobby) {
                            notifier.setSunnyDayHobby(hobby: hobby, index: 2);
                          },
                          'isMultiline': false,
                        },
                      );
                    },
                    onDelete: () {
                      notifier.removeSunnyDayHobby(2);
                    },
                  ),
                ),
              ),
              const Gap(height: 32),
              SliverSectionTitle(
                title: t.profilePage.section.rainyDayHobbies,
                paddingHorizontal: 24,
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: RankInputTile(
                    rank: 1,
                    hint: t.profilePage.placeholder.rainyDayHobbies.top1,
                    value: rainyDayHobbies?[0],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.rainyDayHobbies.top1,
                          'initValue': rainyDayHobbies?[0],
                          'onSave': (hobby) {
                            notifier.setRainyDayHobby(hobby: hobby, index: 0);
                          },
                          'isMultiline': false,
                        },
                      );
                    },
                    onDelete: () {
                      notifier.removeRainyDayHobby(0);
                    },
                  ),
                ),
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: RankInputTile(
                    rank: 2,
                    hint: t.profilePage.placeholder.rainyDayHobbies.top2,
                    value: rainyDayHobbies?[1],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.rainyDayHobbies.top2,
                          'initValue': rainyDayHobbies?[1],
                          'onSave': (hobby) {
                            notifier.setRainyDayHobby(hobby: hobby, index: 1);
                          },
                          'isMultiline': false,
                        },
                      );
                    },
                    onDelete: () {
                      notifier.removeRainyDayHobby(1);
                    },
                  ),
                ),
              ),
              const Gap(height: 12),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverToBoxAdapter(
                  child: RankInputTile(
                    rank: 3,
                    hint: t.profilePage.placeholder.rainyDayHobbies.top3,
                    value: rainyDayHobbies?[2],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.rainyDayHobbies.top3,
                          'initValue': rainyDayHobbies?[2],
                          'onSave': (hobby) {
                            notifier.setRainyDayHobby(hobby: hobby, index: 2);
                          },
                          'isMultiline': false,
                        },
                      );
                    },
                    onDelete: () {
                      notifier.removeRainyDayHobby(2);
                    },
                  ),
                ),
              ),
              const Gap(height: 32),
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
                          title:
                              t.profilePage.section.basicInformation.items.name,
                          value: name,
                          onTap: () {
                            context.push(
                              ProfileEditPage.routeLocation,
                              extra: {
                                'title': t.profilePage.edit.title(
                                  item: t.profilePage.section.basicInformation
                                      .items.name,
                                ),
                                'initValue': name,
                                'onSave': notifier.updateName,
                                'isMultiline': false,
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .gender,
                          value: gender?.displayName(context),
                          onTap: () {
                            enumPicker<Gender>(
                              context: context,
                              items: Gender.values,
                              initialValue: gender,
                              displayBuilder: (gender, context) {
                                return gender.displayName(context);
                              },
                              onSelected: (gender) {
                                notifier.updateGender(gender);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .birthDate,
                          value: birthDate?.toJapaneseDateyyyyMMdd,
                          onTap: null,
                          isReadOnly: true,
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .address,
                          value: address?.displayName(context),
                          onTap: () {
                            enumPicker<Address>(
                              context: context,
                              items: Address.values,
                              initialValue: address,
                              displayBuilder: (address, context) {
                                return address.displayName(context);
                              },
                              onSelected: (address) {
                                notifier.updateAddress(address);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .hometown,
                          value: hometown?.displayName(context),
                          onTap: () {
                            enumPicker<Address>(
                              context: context,
                              items: Address.values,
                              initialValue: hometown,
                              displayBuilder: (hometown, context) {
                                return hometown.displayName(context);
                              },
                              onSelected: (hometown) {
                                notifier.updateHometown(hometown);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .bloodType,
                          value: bloodType?.displayName(context),
                          onTap: () {
                            enumPicker<BloodType>(
                              context: context,
                              items: BloodType.values,
                              initialValue: bloodType,
                              displayBuilder: (bloodType, context) {
                                return bloodType.displayName(context);
                              },
                              onSelected: (bloodType) {
                                notifier.updateBloodType(bloodType);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .height,
                          value: height?.displayName(context),
                          onTap: () {
                            enumPicker<Height>(
                              context: context,
                              items: Height.values,
                              initialValue: height,
                              displayBuilder: (height, context) {
                                return height.displayName(context);
                              },
                              onSelected: (height) {
                                notifier.updateHeight(height);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .bodyShape,
                          value: bodyShape?.displayName(context),
                          onTap: () {
                            enumPicker<BodyShape>(
                              context: context,
                              items: BodyShape.values,
                              initialValue: bodyShape,
                              displayBuilder: (bodyShape, context) {
                                return bodyShape.displayName(context);
                              },
                              onSelected: (bodyShape) {
                                notifier.updateBodyShape(bodyShape);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .education,
                          value: education?.displayName(context),
                          onTap: () {
                            enumPicker<Education>(
                              context: context,
                              items: Education.values,
                              initialValue: education,
                              displayBuilder: (education, context) {
                                return education.displayName(context);
                              },
                              onSelected: (education) {
                                notifier.updateEducation(education);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .occupation,
                          value: occupation?.displayName(context),
                          onTap: () {
                            enumPicker<Occupation>(
                              context: context,
                              items: Occupation.values,
                              initialValue: occupation,
                              displayBuilder: (occupation, context) {
                                return occupation.displayName(context);
                              },
                              onSelected: (occupation) {
                                notifier.updateOccupation(occupation);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .annualIncome,
                          value: annualIncome?.displayName(context),
                          onTap: () {
                            enumPicker<AnnualIncome>(
                              context: context,
                              items: AnnualIncome.values,
                              initialValue: annualIncome,
                              displayBuilder: (annualIncome, context) {
                                return annualIncome.displayName(context);
                              },
                              onSelected: (annualIncome) {
                                notifier.updateAnnualIncome(annualIncome);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .smoking,
                          value: smoking?.displayName(context),
                          onTap: () {
                            enumPicker<Smoking>(
                              context: context,
                              items: Smoking.values,
                              initialValue: smoking,
                              displayBuilder: (smoking, context) {
                                return smoking.displayName(context);
                              },
                              onSelected: (smoking) {
                                notifier.updateSmoking(smoking);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .alcohol,
                          value: alcohol?.displayName(context),
                          onTap: () {
                            enumPicker<Alcohol>(
                              context: context,
                              items: Alcohol.values,
                              initialValue: alcohol,
                              displayBuilder: (alcohol, context) {
                                return alcohol.displayName(context);
                              },
                              onSelected: (alcohol) {
                                notifier.updateAlcohol(alcohol);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .holiday,
                          value: holiday?.displayName(context),
                          onTap: () {
                            enumPicker<Holiday>(
                              context: context,
                              items: Holiday.values,
                              initialValue: holiday,
                              displayBuilder: (holiday, context) {
                                return holiday.displayName(context);
                              },
                              onSelected: (holiday) {
                                notifier.updateHoliday(holiday);
                              },
                            );
                          },
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .communicationStyle,
                          value: communicationStyle?.displayName(context),
                          onTap: () {
                            enumPicker<CommunicationStyle>(
                              context: context,
                              items: CommunicationStyle.values,
                              initialValue: communicationStyle,
                              displayBuilder: (communicationStyle, context) {
                                return communicationStyle.displayName(context);
                              },
                              onSelected: (communicationStyle) {
                                notifier.updateCommunicationStyle(
                                    communicationStyle);
                              },
                            );
                          },
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
    );
  }
}
