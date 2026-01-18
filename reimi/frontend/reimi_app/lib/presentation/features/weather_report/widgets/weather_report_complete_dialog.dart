import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reimi_app/domain/read_models/reward_item.dart';
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/widgets/item_reward_dialog.dart';

Future<void> weatherReportCompleteDialog({
  required BuildContext context,
  required void Function() onConfirm,
}) async {
  return showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withValues(alpha: 0.6),
    builder: (_) {
      final t = Translations.of(context);
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: ItemRewardDialog(
          title: t.dialog.weatherReportComplete.title,
          rewards: [
            RewardItem(
              icon: Assets.images.items.rainbowLike.image(
                height: 48,
              ),
              amountText: '×1',
            ),
          ],
          onClose: () {
            Navigator.pop(context);
            onConfirm();
          },
        ),
      );
    },
  );
}
