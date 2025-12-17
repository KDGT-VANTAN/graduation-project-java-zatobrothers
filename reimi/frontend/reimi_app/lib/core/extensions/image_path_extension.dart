import 'dart:io';

import 'package:flutter/material.dart';
import 'package:reimi_app/gen/assets.gen.dart';

extension ImagePathX on String? {
  ImageProvider<Object> toImageProvider() {
    if (this == null || this!.isEmpty) {
      return AssetImage(Assets.images.icons.appIcon.path);
    }

    if (this!.startsWith('http')) {
      return NetworkImage(this!);
    }

    if (this!.startsWith('/')) {
      return FileImage(File(this!));
    }

    return AssetImage(this!);
  }
}
