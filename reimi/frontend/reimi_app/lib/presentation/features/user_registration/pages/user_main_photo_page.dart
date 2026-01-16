import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/app/router/auth_gate.dart';
import 'package:reimi_app/presentation/features/user_registration/notifiers/user_registration_notifier.dart';
import 'package:reimi_app/presentation/features/user_registration/states/user_registration_state.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/confirmation_dialog.dart';
import 'package:reimi_app/presentation/features/user_registration/widgets/user_registration_page.dart';
import 'package:reimi_app/presentation/shared/utils/pick_image_from_gallery.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';

class UserMainPhotoPage extends HookConsumerWidget {
  const UserMainPhotoPage({super.key});
  static String get routeName => 'user_main_photo';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);
    final theme = Theme.of(context);
    final mainPhotoUrl = ref.watch(
      userRegistrationNotifierProvider.select((state) => state.mainPhoto),
    );
    final status = ref.watch(
      userRegistrationNotifierProvider.select((s) => s.status),
    );

    final notifier = ref.read(userRegistrationNotifierProvider.notifier);

    // listen は useEffect で 1 回だけ
    useEffect(() {
      final subscription = ref.listenManual<UserRegistrationState>(
        userRegistrationNotifierProvider,
        (prev, next) {
          if (!context.mounted) return;

          if (next.status == UserRegistrationStatus.success) {
            context.go(AuthGate.routeLocation);
          }

          if (next.status == UserRegistrationStatus.failure &&
              next.errorMessage != null) {
            AppSnackBar.error(context, next.errorMessage!);
          }
        },
      );

      return subscription.close;
    }, const []);

    return UserRegistrationPage(
      question: t.userRegistrationPage.mainPhoto.question,
      theme: theme,
      mainContent: [
        Align(
          alignment: AlignmentGeometry.center,
          child: GestureDetector(
            onTap: () async {
              File? pickedImageFile = await pickImageFromGallery();
              if (pickedImageFile != null) {
                notifier.updateMainImage(pickedImageFile.path);
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.height * 0.4,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: mainPhotoUrl != null && mainPhotoUrl.isNotEmpty
                    ? Border.all(
                        color: Colors.white.withValues(alpha: 0.4),
                        width: 2,
                      )
                    : null,
              ),
              child: mainPhotoUrl == null
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Assets.images.sample.mainPhotoSample.image(
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                            color: theme.colorScheme.primary.withValues(
                              alpha: 0.6,
                            ),
                            colorBlendMode: BlendMode.srcATop,
                          ),
                        ),
                        const Icon(Icons.add, color: Colors.white70, size: 64),
                        Positioned(
                          bottom: 60,
                          child: Column(
                            children: [
                              Text(
                                t.userRegistrationPage.mainPhoto.items
                                    .photoSelectInstructionText,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  fontSize: 18,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                t.userRegistrationPage.mainPhoto.items
                                    .photoRecommendationHint,
                                style: theme.textTheme.titleSmall!.copyWith(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.file(
                        File(mainPhotoUrl),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
            ),
          ),
        ),
      ],
      answered: mainPhotoUrl != null,
      nextButtonOnPressed: status == UserRegistrationStatus.submitting
          ? null
          : () {
              confirmationDialog(
                title: t.dialog.userMainPhoto.title,
                contentText1: t.dialog.userMainPhoto.contentText1,
                contentText2: t.dialog.userMainPhoto.contentText2,
                context: context,
                value: mainPhotoUrl!,
                onConfirm: () async {
                  await notifier.submit();
                },
                isLargeConfirmation: true,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.07),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 240),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.file(
                        File(mainPhotoUrl),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
              );
            },
    );
  }
}
