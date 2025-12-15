import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/notifiers/feature/user_registration_notifier.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/confirmation_dialog.dart';
import 'package:reimi_app/presentation/pages/user_registration/components/user_registration_page.dart';
import 'package:reimi_app/presentation/pages/user_registration/user_introduction_page.dart';

class UserNamePage extends ConsumerWidget {
  const UserNamePage({super.key});
  static String get routeName => 'user_name';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistrationPage.name;
    final theme = Theme.of(context);
    final name = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.data!.name),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationPage(
      question: t.question,
      theme: theme,
      mainContent: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.25),
            borderRadius: BorderRadius.circular(16),
            border: name != null && name.isNotEmpty
                ? Border.all(
                    color: Colors.white.withValues(alpha: 0.4),
                    width: 2,
                  )
                : null,
          ),
          child: TextField(
            style: theme.textTheme.bodyLarge!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              hintText: t.items.placeholder,
              hintStyle: theme.textTheme.bodyLarge!.copyWith(
                color: Colors.white70,
              ),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              notifier.updateName(value);
            },
          ),
        ),
      ],
      answered: name != null && name.isNotEmpty,
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.title,
          contentText1: t.dialog.contentText1,
          contentText2: t.dialog.contentText2,
          context: context,
          value: name!,
          onConfirm: () {
            notifier.nextPage();
            context.push(UserIntroductionPage.routeLocation);
          },
          isLargeConfirmation: false,
        );
      },
    );
  }
}
