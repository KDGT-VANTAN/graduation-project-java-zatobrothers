import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/features/user_registration/application/user_registration_notifier.dart';
import 'package:reimi_app/features/user_registration/presentation/screens/user_address_screen.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/confirmation_dialog.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/date_item_container.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/user_registration_base_screen.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/shared/extensions/datetime_extensions.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/custom_date_picker.dart';

class UserBirthdateScreen extends ConsumerWidget {
  const UserBirthdateScreen({super.key});
  static String get routeName => 'user_birthdate';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistration.birthDate;
    final theme = Theme.of(context);
    final birthDate = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.data!.birthDate),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationBaseScreen(
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
            context.push(UserAddressScreen.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
