import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'share_payload.dart';

class ShareService {
  const ShareService();

  Future<void> share(SharePayload payload) async {
    switch (payload) {
      case ImageSharePayload():
        await _shareImage(payload);
        break;
      case FileSharePayload():
        await _shareFile(payload);
        break;
      case TextSharePayload():
        await _shareText(payload);
        break;
    }
  }

  Future<void> _shareImage(ImageSharePayload payload) async {
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/${payload.fileName}');
    await file.writeAsBytes(payload.bytes);

    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(file.path)],
        text: payload.text,
      ),
    );
  }

  Future<void> _shareFile(FileSharePayload payload) async {
    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(payload.file.path)],
        text: payload.text,
      ),
    );
  }

  Future<void> _shareText(TextSharePayload payload) async {
    await SharePlus.instance.share(
      ShareParams(
        text: payload.text,
      ),
    );
  }
}
