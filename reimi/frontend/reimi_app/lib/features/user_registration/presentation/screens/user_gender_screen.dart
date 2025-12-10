import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/values/gender.dart';
import 'package:reimi_app/features/user_registration/application/user_registration_notifier.dart';
import 'package:reimi_app/features/user_registration/presentation/screens/user_birthdate_screen.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/confirmation_dialog.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/user_registration_base_screen.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/gender_button.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/shared/extensions/values/gender_extension.dart';

class UserGenderScreen extends ConsumerWidget {
  const UserGenderScreen({super.key});
  static String get routeName => 'user_gender';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistration.gender;
    final theme = Theme.of(context);
    final notifier = ref.read(userRegistrationProvider.notifier);
    final gender = ref.watch(
      userRegistrationProvider.select((state) => state.data!.gender),
    );
    return UserRegistrationBaseScreen(
      question: t.question,
      theme: theme,
      mainContent: [
        GenderButton(
          label: t.items.man,
          isSelected: gender == Gender.man,
          onTap: () {
            notifier.updateGender(Gender.man);
          },
        ),
        const SizedBox(height: 10),
        GenderButton(
          label: t.items.woman,
          isSelected: gender == Gender.woman,
          onTap: () {
            notifier.updateGender(Gender.woman);
          },
        ),
        const SizedBox(height: 10),
        GenderButton(
          label: t.items.others,
          isSelected: gender == Gender.others,
          onTap: () {
            notifier.updateGender(Gender.others);
          },
        ),
      ],
      answered: gender != null,
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.title,
          contentText1: t.dialog.contentText1,
          contentText2: t.dialog.contentText2,
          context: context,
          value: gender!.displayName(context),
          onConfirm: () {
            notifier.nextPage();
            context.push(UserBirthdateScreen.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
