import 'package:flutter/material.dart';
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
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/media_purpose.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/profile_edit_notifier.dart';
import 'package:reimi_app/presentation/features/profile/widgets/basic_info_tile.dart';
import 'package:reimi_app/presentation/features/profile/pages/profile_edit_page.dart';
import 'package:reimi_app/presentation/features/storage/upload_media_notifier.dart';
import 'package:reimi_app/presentation/shared/utils/enum_picker.dart';
import 'package:reimi_app/presentation/features/profile/widgets/glass_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/main_photo_card.dart';
import 'package:reimi_app/presentation/features/profile/widgets/rank_input_tile.dart';
import 'package:reimi_app/presentation/features/profile/widgets/sub_photo_card.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';
import 'package:reimi_app/presentation/shared/widgets/custom_divider.dart';
import 'package:reimi_app/presentation/shared/widgets/sliver_widgets.dart';

class ProfilePage extends HookConsumerWidget {
  static String get routeName => 'profile';
  static String get routeLocation => '/$routeName';
  const ProfilePage({
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
    final notifier = ref.read(profileEditNotifierProvider(userId).notifier);
    final isChanged = ref.watch(
      profileEditNotifierProvider(userId).select((state) => state.isChanged),
    );
    final data = ref.watch(
        profileEditNotifierProvider(userId).select((state) => state.data));

    return Scaffold(
      body: BackgroundContainer(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
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
                  }
                  // ignore: use_build_context_synchronously
                  context.pop();
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
            ),
            if (data == null) ...[
              const SliverToBoxAdapter(
                child: Center(
                  child: Text('ユーザーのプロフィールが取得できませんでした。'),
                ),
              )
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
                    image: data.mainPhotoUrl.toImageProvider(),
                    onTap: () async {
                      final uploadMediaNotifier =
                          ref.read(uploadMediaNotifierProvider.notifier);
                      final file = await uploadMediaNotifier.pickImage(
                        mediaPurpose: MediaPurpose.mainPhoto,
                      );
                      if (file != null) {
                        await uploadMediaNotifier.upload(userId: userId);
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
                      final subPhotoUrl = (data.subPhotoUrls != null &&
                              index < data.subPhotoUrls!.length)
                          ? data.subPhotoUrls![index]
                          : null;
                      return SubPhotoCard(
                        label: labels[index],
                        subPhotoUrl: subPhotoUrl,
                        onTap: () async {
                          final uploadMediaNotifier =
                              ref.read(uploadMediaNotifierProvider.notifier);
                          final file = await uploadMediaNotifier.pickImage(
                            mediaPurpose: MediaPurpose.subPhoto,
                          );
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
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.title(
                            item: t.profilePage.section.introduction,
                          ),
                          'initValue': data.introduction,
                          'onSave': notifier.updateIntroduction,
                          'isMultiline': true,
                        },
                      );
                    },
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
                    value: data.sunnyDayHobbies?[0],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.sunnyDayHobbies.top1,
                          'initValue': data.sunnyDayHobbies?[0],
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
                    value: data.sunnyDayHobbies?[1],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.sunnyDayHobbies.top2,
                          'initValue': data.sunnyDayHobbies?[1],
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
                    value: data.sunnyDayHobbies?[2],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.sunnyDayHobbies.top3,
                          'initValue': data.sunnyDayHobbies?[2],
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
                    value: data.rainyDayHobbies?[0],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.rainyDayHobbies.top1,
                          'initValue': data.rainyDayHobbies?[0],
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
                    value: data.rainyDayHobbies?[1],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.rainyDayHobbies.top2,
                          'initValue': data.rainyDayHobbies?[1],
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
                    value: data.rainyDayHobbies?[2],
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.rainyDayHobbies.top3,
                          'initValue': data.rainyDayHobbies?[2],
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
                          value: data.name,
                          onTap: () {
                            context.push(
                              ProfileEditPage.routeLocation,
                              extra: {
                                'title': t.profilePage.edit.title(
                                  item: t.profilePage.section.basicInformation
                                      .items.name,
                                ),
                                'initValue': data.name,
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
                          value: data.gender.displayName(context),
                          // TODO: 変更できない項目はダイアログを表示させた方がわかりやすそう
                          onTap: null,
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .birthDate,
                          value: data.birthDate.toJapaneseDate,
                          onTap: null,
                        ),
                        const CustomDivider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .address,
                          value: data.address.displayName(context),
                          onTap: () {
                            enumPicker<Address>(
                              context: context,
                              items: Address.values,
                              initialValue: data.address,
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
                          value: data.hometown?.displayName(context),
                          onTap: () {
                            enumPicker<Address>(
                              context: context,
                              items: Address.values,
                              initialValue: data.hometown,
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
                          value: data.bloodType?.displayName(context),
                          onTap: () {
                            enumPicker<BloodType>(
                              context: context,
                              items: BloodType.values,
                              initialValue: data.bloodType,
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
                          value: data.height?.displayName(context),
                          onTap: () {
                            enumPicker<Height>(
                              context: context,
                              items: Height.values,
                              initialValue: data.height,
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
                          value: data.bodyShape?.displayName(context),
                          onTap: () {
                            enumPicker<BodyShape>(
                              context: context,
                              items: BodyShape.values,
                              initialValue: data.bodyShape,
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
                          value: data.education?.displayName(context),
                          onTap: () {
                            enumPicker<Education>(
                              context: context,
                              items: Education.values,
                              initialValue: data.education,
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
                          value: data.occupation?.displayName(context),
                          onTap: () {
                            enumPicker<Occupation>(
                              context: context,
                              items: Occupation.values,
                              initialValue: data.occupation,
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
                          value: data.annualIncome?.displayName(context),
                          onTap: () {
                            enumPicker<AnnualIncome>(
                              context: context,
                              items: AnnualIncome.values,
                              initialValue: data.annualIncome,
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
                          value: data.smoking?.displayName(context),
                          onTap: () {
                            enumPicker<Smoking>(
                              context: context,
                              items: Smoking.values,
                              initialValue: data.smoking,
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
                          value: data.alcohol?.displayName(context),
                          onTap: () {
                            enumPicker<Alcohol>(
                              context: context,
                              items: Alcohol.values,
                              initialValue: data.alcohol,
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
                          value: data.holiday?.displayName(context),
                          onTap: () {
                            enumPicker<Holiday>(
                              context: context,
                              items: Holiday.values,
                              initialValue: data.holiday,
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
                          value: data.communicationStyle?.displayName(context),
                          onTap: () {
                            enumPicker<CommunicationStyle>(
                              context: context,
                              items: CommunicationStyle.values,
                              initialValue: data.communicationStyle,
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
              const Gap(height: 80),
            ],
          ],
        ),
      ),
    );
  }
}
