import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/features/user_registration/application/user_registration_notifier.dart';
import 'package:reimi_app/features/user_registration/presentation/screens/user_main_photo_screen.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/confirmation_dialog.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/user_registration_base_screen.dart';
import 'package:reimi_app/i18n/strings.g.dart';

class UserIntroductionScreen extends HookConsumerWidget {
  const UserIntroductionScreen({super.key});
  static String get routeName => 'user_introduction';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistration.introduction;
    final theme = Theme.of(context);
    final introduction = ref.watch(
      userRegistrationProvider.select((state) => state.data!.introduction),
    );
    final notifier = ref.read(userRegistrationProvider.notifier);

    final controller = useTextEditingController(text: introduction);
    final textLength = useState(0);

    useEffect(() {
      controller.addListener(() {
        textLength.value = controller.text.length;
      });
      return null;
    }, []);

    return UserRegistrationBaseScreen(
      question: t.question,
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
              style: theme.textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontSize: 18,
                height: 1.6,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: t.items.placeholder,
                hintStyle: theme.textTheme.bodyMedium!.copyWith(
                  color: Colors.white70,
                  fontSize: 18,
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
              t.items.charCountLabelText(textLength: textLength.value),
              style: theme.textTheme.bodyMedium!.copyWith(
                color: Colors.white70,
              ),
            ),
            introduction != null &&
                    introduction.isNotEmpty &&
                    textLength.value < 20
                ? Text(
                    t.items.remainingCharsText(
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
          title: t.dialog.title,
          contentText1: t.dialog.contentText1,
          contentText2: t.dialog.contentText2,
          context: context,
          value: introduction!,
          onConfirm: () {
            notifier.nextPage();
            context.push(UserMainPhotoScreen.routeLocation);
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
