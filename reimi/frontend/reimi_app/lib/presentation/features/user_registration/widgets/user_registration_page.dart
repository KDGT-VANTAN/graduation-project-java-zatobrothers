import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/user_registration/notifiers/user_registration_notifier.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/next_button.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/user_registration_header.dart';
import 'package:reimi_app/presentation/shared/widgets/arc_background.dart';

class UserRegistrationPage extends ConsumerWidget {
  const UserRegistrationPage({
    super.key,
    required this.question,
    required this.theme,
    required this.mainContent,
    required this.answered,
    required this.nextButtonOnPressed,
  });
  final String question;
  final ThemeData theme;
  final List<Widget> mainContent;
  final bool answered;
  final void Function()? nextButtonOnPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).button;
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    final currentPage = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.currentPage),
    );
    final totalPages = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.totalPages),
    );
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Stack(
        children: [
          ...ArcBackground.buildArcs(
            context: context,
            topArcColor: theme.colorScheme.secondary,
            bottomArcColor: theme.colorScheme.tertiary,
            topArcWidth: 40,
            bottomArcWidth: 40,
            topOffset: 0.25,
            rightOffset: 0.4,
            leftOffset: 0.35,
            bottomOffset: 0.3,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  UserRegistrationHeader(
                    currentPage: currentPage,
                    totalPages: totalPages,
                    onPressed: () {
                      notifier.previousPage();
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 40),
                  Text(
                    question,
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ...mainContent,
                  const Spacer(),
                  NextButton(
                    label: t.next,
                    theme: theme,
                    answered: answered,
                    onPressed: nextButtonOnPressed,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
