import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/extensions/datetime_extensions.dart';
import 'package:reimi_app/core/extensions/image_path_extension.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/core/theme/custom_colors.dart';
import 'package:reimi_app/domain/read_models/user_with_profile_read_model.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/profile_detail_notifier.dart';
import 'package:reimi_app/presentation/shared/utils/show_app_modal_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_modal_sheet.dart';

void showRainbowLikeModalSheet({
  required BuildContext context,
  required ProfileDetailNotifier notifier,
}) {
  showAppModalBottomSheet(
    context: context,
    child: RainbowLikeModalSheet(
      notifier: notifier,
    ),
  );
}

class RainbowLikeModalSheet extends HookConsumerWidget {
  const RainbowLikeModalSheet({
    super.key,
    required this.notifier,
  });
  final ProfileDetailNotifier notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref
        .watch(profileDetailNotifierProvider.select((state) => state.profile))!;
    final message = ref
        .watch(profileDetailNotifierProvider.select((state) => state.message));
    final controller = useTextEditingController(text: message);
    final textLength = useState(0);

    useEffect(() {
      controller.addListener(() {
        textLength.value = controller.text.length;
      });
      return null;
    }, []);

    return AppModalSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Header(),
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 0.5),
          const SizedBox(height: 16),
          _UserInfo(profile: profile),
          const SizedBox(height: 16),
          _MessageInputField(
            controller: controller,
            textLength: textLength.value,
            onChanged: (value) {
              notifier.updateMessage(value);
            },
          ),
          const SizedBox(height: 16),
          _NoticeTexts(),
          const SizedBox(height: 20),
          _SendButton(
            onTap: message.isEmpty || message.length > 100
                ? null
                : () {
                    notifier.onTapRainbowLikeButton(profile.id);
                    Navigator.pop(context);
                  },
          ),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Align(
      alignment: AlignmentGeometry.center,
      child: Text(
        t.modalSheet.rainbowLike.title,
        style: theme.textTheme.titleSmall!.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({
    required this.profile,
  });
  final UserWithProfileReadModel profile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: profile.mainPhotoUrl.toImageProvider(),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profile.name,
                style: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${profile.birthDate.toAge} ${profile.address.displayName(context)}',
                style: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Tooltip(
          verticalOffset: -104,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          message: t.modalSheet.rainbowLike.messageTips.contentText,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                side: BorderSide(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            onPressed: () {},
            icon: const Icon(Icons.help_outline, size: 16),
            label: Text(
              t.modalSheet.rainbowLike.messageTips.label,
              style: theme.textTheme.labelMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _MessageInputField extends StatelessWidget {
  const _MessageInputField({
    required this.controller,
    required this.textLength,
    required this.onChanged,
  });
  final TextEditingController? controller;
  final int textLength;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Column(
      children: [
        const Divider(height: 1, thickness: 0.5),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          minLines: 1,
          maxLines: 5,
          maxLength: 100,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hint: Text(
              t.modalSheet.rainbowLike.textField.placeHolder,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
            border: InputBorder.none,
            counter: Text(
              '$textLength/100',
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          onChanged: onChanged,
        ),
        const SizedBox(height: 16),
        const Divider(height: 1, thickness: 0.5),
      ],
    );
  }
}

class _NoticeTexts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.modalSheet.rainbowLike.noticeTexts.contentText1,
          style: theme.textTheme.bodySmall!.copyWith(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          t.modalSheet.rainbowLike.noticeTexts.contentText2,
          style: theme.textTheme.bodySmall!.copyWith(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _SendButton extends StatelessWidget {
  const _SendButton({
    required this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);

    return SafeArea(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 52,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            gradient: onTap == null
                ? earthToneRainbowSweepGradient.withOpacity(0.1)
                : earthToneRainbowSweepGradient.withOpacity(0.9),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Text(
              t.button.rainbowLike,
              style: theme.textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
