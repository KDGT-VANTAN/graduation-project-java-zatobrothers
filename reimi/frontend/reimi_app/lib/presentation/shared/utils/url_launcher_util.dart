import 'package:flutter/material.dart';
import 'package:reimi_app/core/i18n/strings.g.dart';
import 'package:reimi_app/presentation/shared/widgets/app_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL({
  required BuildContext context,
  required String urlString,
}) async {
  try {
    final t = Translations.of(context);
    final Uri url = Uri.parse(urlString);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      if (context.mounted) {
        AppSnackBar.error(
          context,
          t.snackBar.launchUrl.failure,
        );
      }
    }
  } catch (e) {
    if (context.mounted) {
      AppSnackBar.error(
        context,
        t.snackBar.launchUrl.errorOccurred(error: e.toString()),
      );
    }
  }
}

Future<void> launchTOSUrl({
  required BuildContext context,
}) async {
  launchURL(
    context: context,
    urlString:
        'https://spectacled-hourglass-e75.notion.site/3078a732ffd480f89903de1bf77471ba?source=copy_link',
  );
}

Future<void> launchPPUrl({
  required BuildContext context,
}) async {
  launchURL(
    context: context,
    urlString:
        'https://spectacled-hourglass-e75.notion.site/3078a732ffd48063b2b7cf83eda9add0?source=copy_link',
  );
}
