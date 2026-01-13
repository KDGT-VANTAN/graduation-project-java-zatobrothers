import 'dart:io';
import 'dart:typed_data';

sealed class SharePayload {
  const SharePayload();
}

/// 画像バイト（スクリーンショット等）
class ImageSharePayload extends SharePayload {
  const ImageSharePayload({
    required this.bytes,
    this.fileName = 'shared_image.png',
    this.text,
  });

  final Uint8List bytes;
  final String fileName;
  final String? text;
}

/// 既存ファイルを共有
class FileSharePayload extends SharePayload {
  const FileSharePayload({
    required this.file,
    this.text,
  });

  final File file;
  final String? text;
}

/// テキストのみ共有
class TextSharePayload extends SharePayload {
  const TextSharePayload(this.text);

  final String text;
}
