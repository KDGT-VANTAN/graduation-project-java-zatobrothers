import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reimi_app/i18n/strings.g.dart';

void customDatePicker({
  required BuildContext context,
  required DateTime? initialDate,
  required void Function(DateTime) onPressedSelectedButton,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext builder) {
      final t = Translations.of(context).button;
      final theme = Theme.of(context);
      final DateTime now = DateTime.now();
      final defaultDate = DateTime(now.year - 18, 1, 1);
      DateTime selectedDate = initialDate ?? defaultDate;
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    onPressedSelectedButton(selectedDate);
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
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: selectedDate,
                // 最高年齢は100歳以下を想定
                minimumYear: now.year - 100,
                // 最低年齢は18歳以上を想定
                maximumYear: now.year - 18,
                onDateTimeChanged: (DateTime newDate) {
                  selectedDate = newDate;
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
