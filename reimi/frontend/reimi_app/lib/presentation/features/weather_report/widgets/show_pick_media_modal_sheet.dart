import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/utils/show_app_modal_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_modal_sheet.dart';

void showPickMediaModalSheet({
  required BuildContext context,
  required void Function() selectExistingPhoto,
}) {
  showAppModalBottomSheet(
    context: context,
    child: PickMediaModalSheet(
      selectExistingPhoto: selectExistingPhoto,
    ),
  );
}

class PickMediaModalSheet extends StatelessWidget {
  const PickMediaModalSheet({
    super.key,
    required this.selectExistingPhoto,
  });
  final void Function() selectExistingPhoto;

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return AppModalSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ActionButton(
            label: t.modalSheet.pickMedia.label.takePhoto,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 8),
          _ActionButton(
            label: t.modalSheet.pickMedia.label.recordVideo,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 8),
          _ActionButton(
            label: t.modalSheet.pickMedia.label.selectExistingPhoto,
            onTap: () {
              selectExistingPhoto();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 8),
          _ActionButton(
            label: t.modalSheet.pickMedia.label.selectExistingVideo,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 24),
          _CancelButton(
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.label,
    required this.onTap,
  });

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            label,
            style: theme.textTheme.labelLarge!.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1F2937),
            ),
          ),
        ),
      ),
    );
  }
}

class _CancelButton extends StatelessWidget {
  const _CancelButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFEDEEEF),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'キャンセル',
            style: theme.textTheme.labelLarge!.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
