import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/user_registration/user_registration_notifier.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/confirmation_dialog.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/gender_button.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/user_registration_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_birthdate_page.dart';
import 'package:reimi_app/core/extensions/value_objects/gender_extension.dart';

class UserGenderPage extends ConsumerWidget {
  static String get routeName => 'user_gender';
  static String get routeLocation => '/$routeName';
  const UserGenderPage({
    super.key,
    required this.email,
  });
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    final gender = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.data!.gender),
    );
    return UserRegistrationPage(
      question: t.userRegistrationPage.gender.question,
      theme: theme,
      mainContent: [
        GenderButton(
          label: t.kEnum.gender.man,
          isSelected: gender == Gender.man,
          onTap: () {
            notifier.updateGender(Gender.man);
          },
        ),
        const SizedBox(height: 10),
        GenderButton(
          label: t.kEnum.gender.woman,
          isSelected: gender == Gender.woman,
          onTap: () {
            notifier.updateGender(Gender.woman);
          },
        ),
        const SizedBox(height: 10),
        GenderButton(
          label: t.kEnum.gender.other,
          isSelected: gender == Gender.other,
          onTap: () {
            notifier.updateGender(Gender.other);
          },
        ),
      ],
      answered: gender != null,
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.userGender.title,
          contentText1: t.dialog.userGender.contentText1,
          contentText2: t.dialog.userGender.contentText2,
          context: context,
          value: gender!.displayName(context),
          onConfirm: () {
            notifier.updateEmail(email);
            notifier.nextPage();
            context.push(UserBirthdatePage.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
