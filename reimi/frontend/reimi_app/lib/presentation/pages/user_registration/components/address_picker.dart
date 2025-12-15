import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/core/extensions/value_objects/address_extension.dart';

void addressPicker({
  required BuildContext context,
  required Address? initAddress,
  required Function(Address) onPressedSelectedButton,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (BuildContext builder) {
      final t = Translations.of(context).button;
      final theme = Theme.of(context);
      const items = Address.values;
      final int defaultIndex = items.indexOf(Address.hokkaido);
      int selectedIndex =
          initAddress == null ? defaultIndex : items.indexOf(initAddress);
      return SizedBox(
        height: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    onPressedSelectedButton(items[selectedIndex]);
                    Navigator.pop(context);
                  },
                  child: Text(
                    t.select,
                    style: theme.textTheme.labelMedium!.copyWith(
                      color: theme.colorScheme.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
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
                    .map((e) => Center(child: Text(e.displayName(context))))
                    .toList(),
              ),
            ),
          ],
        ),
      );
    },
  );
}
