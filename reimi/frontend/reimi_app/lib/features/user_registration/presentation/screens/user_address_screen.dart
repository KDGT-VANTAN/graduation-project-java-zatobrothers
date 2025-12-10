import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/domain/values/address.dart';
import 'package:reimi_app/features/user_registration/application/user_registration_notifier.dart';
import 'package:reimi_app/features/user_registration/presentation/screens/user_name_screen.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/address_picker.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/confirmation_dialog.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/user_registration_base_screen.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/shared/extensions/values/address_extension.dart';

class UserAddressScreen extends ConsumerWidget {
  const UserAddressScreen({super.key});
  static String get routeName => 'user_address';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistration.address;
    final theme = Theme.of(context);
    final address = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.data!.address),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationBaseScreen(
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
            context.push(UserNameScreen.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
