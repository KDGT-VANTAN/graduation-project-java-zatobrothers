import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/features/user_registration/user_registration_notifier.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/confirmation_dialog.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/user_registration_page.dart';
import 'package:reimi_app/presentation/features/user_registration/pages/user_main_photo_page.dart';

class UserIntroductionPage extends HookConsumerWidget {
  const UserIntroductionPage({super.key});
  static String get routeName => 'user_introduction';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final introduction = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.introduction),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    final controller = useTextEditingController(text: introduction);
    final textLength = useState(0);

    useEffect(() {
      controller.addListener(() {
        textLength.value = controller.text.length;
      });
      return null;
    }, []);

    return UserRegistrationPage(
      question: t.userRegistrationPage.introduction.question,
      theme: theme,
      mainContent: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.25),
              borderRadius: BorderRadius.circular(16),
              border: introduction != null && introduction.isNotEmpty
                  ? Border.all(
                      color: Colors.white.withValues(alpha: 0.4),
                      width: 2,
                    )
                  : null,
            ),
            child: TextField(
              controller: controller,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                height: 1.6,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: t.userRegistrationPage.introduction.items.placeholder,
                hintStyle: theme.textTheme.bodyLarge!.copyWith(
                  color: Colors.white70,
                ),
              ),
              onChanged: (value) {
                notifier.updateIntroduction(value);
              },
            ),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              t.userRegistrationPage.introduction.items
                  .charCountLabelText(textLength: textLength.value),
              style: theme.textTheme.bodyMedium!.copyWith(
                color: Colors.white70,
              ),
            ),
            introduction != null &&
                    introduction.isNotEmpty &&
                    textLength.value < 20
                ? Text(
                    t.userRegistrationPage.introduction.items
                        .remainingCharsText(
                      remainingTextLength: 20 - textLength.value,
                    ),
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ],
      answered: textLength.value >= 20,
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.userIntroduction.title,
          contentText1: t.dialog.userIntroduction.contentText1,
          contentText2: t.dialog.userIntroduction.contentText2,
          context: context,
          value: introduction!,
          onConfirm: () {
            notifier.nextPage();
            context.push(UserMainPhotoPage.routeLocation);
          },
          isLargeConfirmation: true,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.07),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 300),
              child: SingleChildScrollView(
                child: Text(
                  introduction,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.primary,
                    height: 1.6,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
