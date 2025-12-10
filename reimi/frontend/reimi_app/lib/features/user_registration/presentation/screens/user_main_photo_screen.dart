import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/features/matching/presentation/home_screen.dart';
import 'package:reimi_app/features/user_registration/application/user_registration_notifier.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/confirmation_dialog.dart';
import 'package:reimi_app/features/user_registration/presentation/widgets/user_registration_base_screen.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/shared/utils/pick_image_from_gallery.dart';

class UserMainPhotoScreen extends ConsumerWidget {
  const UserMainPhotoScreen({super.key});
  static String get routeName => 'user_main_photo';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context).userRegistration.mainPhoto;
    final theme = Theme.of(context);
    final mainPhotoUrl = ref.watch(
      userRegistrationNotifierProvider
          .select((state) => state.data!.mainPhotoUrl),
    );
    final notifier = ref.read(userRegistrationNotifierProvider.notifier);
    return UserRegistrationBaseScreen(
      question: t.question,
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
                          child: Assets.images.mainPhotoSample.image(
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
                                t.items.photoSelectInstructionText,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  fontSize: 18,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                t.items.photoRecommendationHint,
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
      nextButtonOnPressed: () {
        confirmationDialog(
          title: t.dialog.title,
          contentText1: t.dialog.contentText1,
          contentText2: t.dialog.contentText2,
          context: context,
          value: mainPhotoUrl!,
          onConfirm: () {
            context.go(HomeScreen.routeLocation);
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
