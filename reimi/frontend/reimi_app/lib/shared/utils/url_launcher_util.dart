import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL({
  required BuildContext context,
  required String urlString,
}) async {
  try {
    final Uri url = Uri.parse(urlString);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      // TODO: エラーダイアログ作成予定
      // _showError(context, 'このURLを開けません');
    }
  } catch (e) {
    // _showError(context, 'エラーが発生しました: $e');
  }
}
