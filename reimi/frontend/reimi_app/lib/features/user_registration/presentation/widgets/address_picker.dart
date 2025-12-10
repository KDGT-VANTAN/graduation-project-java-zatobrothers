import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reimi_app/domain/values/address.dart';
import 'package:reimi_app/i18n/strings.g.dart';
import 'package:reimi_app/shared/extensions/values/address_extension.dart';

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
      final t = Translations.of(
        context,
      ).userRegistration.common.modalBottomSheet;
      final theme = Theme.of(context);
      const items = Address.values;
      final int defaultIndex = items.indexOf(Address.hokkaido);
      int selectedIndex = initAddress == null
          ? defaultIndex
          : items.indexOf(initAddress);
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
                    context.pop();
                  },
                  child: Text(
                    t.button.selected,
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
