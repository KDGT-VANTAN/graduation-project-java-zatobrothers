import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/user_registration/user_registration_notifier.dart';
import 'package:reimi_app/presentation/shared/utils/enum_picker.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/confirmation_dialog.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/user_registration_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_name_page.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';

class UserAddressPage extends ConsumerWidget {
  const UserAddressPage({super.key});
  static String get routeName => 'user_address';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final address = ref.watch(
        userRegistrationNotifierProvider.select((state) => state.address));
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationPage(
      question: t.userRegistrationPage.address.question,
      theme: theme,
      mainContent: [
        GestureDetector(
          onTap: () {
            enumPicker<Address>(
              context: context,
              items: Address.values,
              initialValue: address,
              displayBuilder: (address, context) {
                return address.displayName(context);
              },
              onSelected: (address) {
                ref
                    .read(userRegistrationNotifierProvider.notifier)
                    .updateAddress(address);
              },
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
                  ? t.userRegistrationPage.address.items.placeholder
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
          title: t.dialog.userAddress.title,
          contentText1: t.dialog.userAddress.contentText1,
          contentText2: t.dialog.userAddress.contentText2,
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
