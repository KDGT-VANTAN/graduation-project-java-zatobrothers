import 'dart:io';

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
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/notifiers/feature/profile_notifier.dart';
import 'package:reimi_app/presentation/pages/profile/components/basic_info_tile.dart';
import 'package:reimi_app/presentation/pages/profile_edit/profile_edit_page.dart';
import 'package:reimi_app/presentation/shared/utils/enum_picker.dart';
import 'package:reimi_app/presentation/pages/profile/components/glass_tile.dart';
import 'package:reimi_app/presentation/pages/profile/components/main_photo_card.dart';
import 'package:reimi_app/presentation/pages/profile/components/rank_input_tile.dart';
import 'package:reimi_app/presentation/pages/profile/components/sub_photo_card.dart';
import 'package:reimi_app/presentation/shared/utils/pick_image_from_gallery.dart';
import 'package:reimi_app/presentation/shared/utils/custom_confirmation_dialog.dart';
import 'package:reimi_app/presentation/shared/widgets/background_container.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});
  static String get routeName => 'profile';
  static String get routeLocation => '/$routeName';

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
    final notifier = ref.read(profileNotifierProvider.notifier);
    final mainPhotoUrl = ref.watch(
      profileNotifierProvider.select((state) => state.data!.mainPhotoUrl),
    );
    final subPhotoUrls = ref.watch(
      profileNotifierProvider.select((state) => state.data!.subPhotoUrls),
    );
    final name = ref.watch(
      profileNotifierProvider.select((state) => state.data!.name),
    );
    final gender = ref.watch(
      profileNotifierProvider.select((state) => state.data!.gender),
    );
    final birthDate = ref.watch(
      profileNotifierProvider.select((state) => state.data!.birthDate),
    );
    final introduction = ref.watch(
      profileNotifierProvider.select((state) => state.data!.introduction),
    );
    final sunnyDayHobbies = ref.watch(
      profileNotifierProvider.select((state) => state.data!.sunnyDayHobbies),
    );
    final rainyDayHobbies = ref.watch(
      profileNotifierProvider.select((state) => state.data!.rainyDayHobbies),
    );
    final address = ref.watch(
      profileNotifierProvider.select((state) => state.data!.address),
    );
    final hometown = ref.watch(
      profileNotifierProvider.select((state) => state.data!.hometown),
    );
    final bloodType = ref.watch(
      profileNotifierProvider.select((state) => state.data!.bloodType),
    );
    final height = ref.watch(
      profileNotifierProvider.select((state) => state.data!.height),
    );
    final bodyShape = ref.watch(
      profileNotifierProvider.select((state) => state.data!.bodyShape),
    );
    final education = ref.watch(
      profileNotifierProvider.select((state) => state.data!.education),
    );
    final occupation = ref.watch(
      profileNotifierProvider.select((state) => state.data!.occupation),
    );
    final annualIncome = ref.watch(
      profileNotifierProvider.select((state) => state.data!.annualIncome),
    );
    final smoking = ref.watch(
      profileNotifierProvider.select((state) => state.data!.smoking),
    );
    final alcohol = ref.watch(
      profileNotifierProvider.select((state) => state.data!.alcohol),
    );
    final holiday = ref.watch(
      profileNotifierProvider.select((state) => state.data!.holiday),
    );
    final communicationStyle = ref.watch(
      profileNotifierProvider.select((state) => state.data!.communicationStyle),
    );
    final isChanged = ref.watch(
      profileNotifierProvider.select((state) => state.isChanged),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
                  await ref.read(profileNotifierProvider.notifier).submit();
                },
                onCancel: () async {
                  await ref
                      .read(profileNotifierProvider.notifier)
                      .discardChangesAndClose();
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
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BackgroundContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    t.profilePage.section.mainPhoto,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  MainPhotoCard(
                    image: mainPhotoUrl.toImageProvider(),
                    onTap: () async {
                      File? pickedImageFile = await pickImageFromGallery();
                      if (pickedImageFile != null) {
                        notifier.updateMainPhotoUrl(pickedImageFile.path);
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  Text(
                    t.profilePage.section.subPhoto,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    children: List.generate(6, (index) {
                      return SubPhotoCard(
                        label: labels[index],
                        subPhotoUrl: subPhotoUrls?[index],
                        onTap: () async {
                          File? pickedImageFile = await pickImageFromGallery();
                          if (pickedImageFile != null) {
                            notifier.setSubPhoto(
                              url: pickedImageFile.path,
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
                    }),
                  ),
                  const SizedBox(height: 32),
                  // TODO: 天気タイプは仮実装
                  Text(
                    t.profilePage.section.weatherPersonality,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GlassTile(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.wb_sunny, color: Colors.orange),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            '晴れ男',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    t.profilePage.section.introduction,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GlassTile(
                    onTap: () {
                      context.push(
                        ProfileEditPage.routeLocation,
                        extra: {
                          'title': t.profilePage.edit.title(
                            item: t.profilePage.section.introduction,
                          ),
                          'initValue': introduction,
                          'onSave': (value) {
                            notifier.updateIntroduction(value);
                          },
                          'isMultiline': true,
                        },
                      );
                    },
                    child: Text(
                      introduction,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    t.profilePage.section.sunnyDayHobbies,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  RankInputTile(
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
                  const SizedBox(height: 12),
                  RankInputTile(
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
                  const SizedBox(height: 12),
                  RankInputTile(
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
                  const SizedBox(height: 32),
                  Text(
                    t.profilePage.section.rainyDayHobbies,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  RankInputTile(
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
                  const SizedBox(height: 12),
                  RankInputTile(
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
                  const SizedBox(height: 12),
                  RankInputTile(
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
                  const SizedBox(height: 32),
                  Text(
                    t.profilePage.section.basicInformation.title,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
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
                                'onSave': (value) {
                                  notifier.updateName(value);
                                },
                                'isMultiline': false,
                              },
                            );
                          },
                        ),
                        const _Divider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .gender,
                          value: gender.displayName(context),
                          // TODO: 変更できない項目はダイアログを表示させた方がわかりやすそう
                          onTap: null,
                        ),
                        const _Divider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .birthDate,
                          value: birthDate.toJapaneseDate,
                          onTap: null,
                        ),
                        const _Divider(),
                        BasicInfoTile(
                          title: t.profilePage.section.basicInformation.items
                              .address,
                          value: address.displayName(context),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                        const _Divider(),
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
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 0.5,
      color: Colors.white.withValues(alpha: 0.5),
    );
  }
}
