import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/notifiers/feature/user_registration_notifier.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/address_picker.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/confirmation_dialog.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/user_registration_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_name_page.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';

class UserAddressPage extends ConsumerWidget {
  const UserAddressPage({super.key});
  static String get routeName => 'user_address';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistrationPage.address;
    final theme = Theme.of(context);
    final address = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.data!.address),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationPage(
      question: t.question,
      theme: theme,
      mainContent: [
        GestureDetector(
          onTap: () {
            addressPicker(
              context: context,
              initAddress: Address.hokkaido,
              onPressedSelectedButton: notifier.updateAddress,
            );
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(16),
              border: address == null
                  ? null
                  : Border.all(
                      color: Colors.white.withValues(alpha: 0.4),
                      width: 2,
                    ),
            ),
            child: Text(
              address == null
                  ? t.items.placeholder
                  : address.displayName(context),
              style: theme.textTheme.bodyLarge!.copyWith(
                fontSize: 18,
                color: address == null ? Colors.white70 : Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
      answered: address != null,
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.title,
          contentText1: t.dialog.contentText1,
          contentText2: t.dialog.contentText2,
          context: context,
          value: address!.displayName(context),
          onConfirm: () {
            notifier.nextPage();
            context.push(UserNamePage.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
