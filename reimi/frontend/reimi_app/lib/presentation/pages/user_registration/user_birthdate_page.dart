import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/notifiers/feature/user_registration_notifier.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/confirmation_dialog.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/custom_date_picker.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/date_item_container.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/user_registration_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_address_page.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';

class UserBirthdatePage extends ConsumerWidget {
  const UserBirthdatePage({super.key});
  static String get routeName => 'user_birthdate';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistrationPage.birthDate;
    final theme = Theme.of(context);
    final birthDate = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.data!.birthDate),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationPage(
      question: t.question,
      theme: theme,
      mainContent: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DateItemContainer(
              label:
                  birthDate == null ? t.items.year : birthDate.year.toString(),
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
                  ? t.items.month
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
              label: birthDate == null ? t.items.day : birthDate.day.toString(),
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
          title: t.dialog.title,
          contentText1: t.dialog.contentText1,
          contentText2: t.dialog.contentText2,
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
