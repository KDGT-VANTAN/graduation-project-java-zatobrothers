import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';

void enumPicker<T extends Enum>({
  required BuildContext context,
  required List<T> items,
  required T? initialValue,
  required String Function(T item, BuildContext context) displayBuilder,
  required void Function(T selected) onSelected,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (_) {
      final theme = Theme.of(context);
      const defaultIndex = 0;
      int selectedIndex =
          initialValue == null ? defaultIndex : items.indexOf(initialValue);

      return SizedBox(
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    onSelected(items[selectedIndex]);
                    Navigator.pop(context);
                  },
                  child: Text(
                    Translations.of(context).button.select,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: theme.colorScheme.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
            Expanded(
              child: CupertinoPicker(
                itemExtent: 40,
                scrollController: FixedExtentScrollController(
                  initialItem: selectedIndex,
                ),
                onSelectedItemChanged: (index) {
                  selectedIndex = index;
                },
                children: items
                    .map(
                      (e) => Center(
                        child: Text(displayBuilder(e, context)),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      );
    },
  );
}
