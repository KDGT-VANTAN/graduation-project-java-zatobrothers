import 'package:flutter/material.dart';
import 'package:reimi_app/presentation/features/home/enum/sort_type.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/utils/show_app_modal_bottom_sheet.dart';
import 'package:reimi_app/presentation/shared/widgets/app_modal_sheet.dart';

void showSortUserModalSheet({
  required BuildContext context,
  required SortType initialValue,
  required ValueChanged<SortType> onApply,
}) {
  showAppModalBottomSheet(
    context: context,
    child: SortUserModalSheet(
      initialValue: initialValue,
      onApply: onApply,
    ),
  );
}

class SortUserModalSheet extends StatefulWidget {
  const SortUserModalSheet({
    super.key,
    required this.initialValue,
    required this.onApply,
  });
  final SortType initialValue;
  final ValueChanged<SortType> onApply;

  @override
  State<SortUserModalSheet> createState() => _SortUserModalSheetState();
}

class _SortUserModalSheetState extends State<SortUserModalSheet> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = Translations.of(context);
    SortType selectedSortType = widget.initialValue;
    return AppModalSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.modalSheet.sortUser.title,
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 0.5),
          const SizedBox(height: 20),
          _SortItem(
            label: t.kEnum.sortType.login,
            isSelected: selectedSortType == SortType.login,
            onTap: () {
              setState(() {
                selectedSortType = SortType.login;
              });
            },
          ),
          const SizedBox(height: 12),
          _SortItem(
            label: t.kEnum.sortType.compatibility,
            isSelected: selectedSortType == SortType.compatibility,
            onTap: () {
              setState(() {
                selectedSortType = SortType.compatibility;
              });
            },
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 0,
              ),
              onPressed: () {
                widget.onApply(selectedSortType);
                Navigator.pop(context);
              },
              child: Text(
                t.button.apply,
                style: theme.textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SortItem extends StatelessWidget {
  const _SortItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? theme.colorScheme.primary.withValues(alpha: 0.2)
              : const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w500,
                  color:
                      isSelected ? theme.colorScheme.primary : Colors.black87,
                ),
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check,
                color: theme.colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }
}
