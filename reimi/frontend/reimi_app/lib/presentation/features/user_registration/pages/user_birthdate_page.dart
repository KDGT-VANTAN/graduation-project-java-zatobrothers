import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/user_registration/notifiers/user_registration_notifier.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/confirmation_dialog.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/custom_date_picker.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/date_item_container.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/user_registration_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_address_page.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';

class UserBirthdatePage extends ConsumerWidget {
  const UserBirthdatePage({super.key});
  static String get routeName => 'user_birthdate';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final birthDate = ref.watch(
        userRegistrationNotifierProvider.select((state) => state.birthDate));
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationPage(
      question: t.userRegistrationPage.birthDate.question,
      theme: theme,
      mainContent: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DateItemContainer(
              label: birthDate == null
                  ? t.userRegistrationPage.birthDate.items.year
                  : birthDate.year.toString(),
              onTap: () {
                customDatePicker(
                  context: context,
                  initialDate: birthDate,
                  onPressedSelectedButton: notifier.updateBirthDate,
                );
              },
            ),
            DateItemContainer(
              label: birthDate == null
                  ? t.userRegistrationPage.birthDate.items.month
                  : birthDate.month.toString(),
              onTap: () {
                customDatePicker(
                  context: context,
                  initialDate: birthDate,
                  onPressedSelectedButton: notifier.updateBirthDate,
                );
              },
            ),
            DateItemContainer(
              label: birthDate == null
                  ? t.userRegistrationPage.birthDate.items.day
                  : birthDate.day.toString(),
              onTap: () {
                customDatePicker(
                  context: context,
                  initialDate: birthDate,
                  onPressedSelectedButton: notifier.updateBirthDate,
                );
              },
            ),
          ],
        ),
      ],
      answered: birthDate != null,
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.userBirthDate.title,
          contentText1: t.dialog.userBirthDate.contentText1,
          contentText2: t.dialog.userBirthDate.contentText2,
          context: context,
          value: birthDate!.toJapaneseDate,
          onConfirm: () {
            notifier.nextPage();
            context.push(UserAddressPage.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
