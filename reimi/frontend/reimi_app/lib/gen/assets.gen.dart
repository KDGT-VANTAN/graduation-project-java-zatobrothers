// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/icons
  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();

  /// Directory path: assets/images/items
  $AssetsImagesItemsGen get items => const $AssetsImagesItemsGen();

  /// Directory path: assets/images/logo
  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();

  /// Directory path: assets/images/sample
  $AssetsImagesSampleGen get sample => const $AssetsImagesSampleGen();

  /// Directory path: assets/images/weather_personality
  $AssetsImagesWeatherPersonalityGen get weatherPersonality =>
      const $AssetsImagesWeatherPersonalityGen();
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/icons/app_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [appIcon];
}

class $AssetsImagesItemsGen {
  const $AssetsImagesItemsGen();

  /// File path: assets/images/items/rainbow_like.png
  AssetGenImage get rainbowLike =>
      const AssetGenImage('assets/images/items/rainbow_like.png');

  /// List of all assets
  List<AssetGenImage> get values => [rainbowLike];
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/icons8_google.png
  AssetGenImage get icons8Google =>
      const AssetGenImage('assets/images/logo/icons8_google.png');

  /// List of all assets
  List<AssetGenImage> get values => [icons8Google];
}

class $AssetsImagesSampleGen {
  const $AssetsImagesSampleGen();

  /// File path: assets/images/sample/chat_user_001_sample_image.png
  AssetGenImage get chatUser001SampleImage => const AssetGenImage(
      'assets/images/sample/chat_user_001_sample_image.png');

  /// File path: assets/images/sample/chat_user_002_sample_image.png
  AssetGenImage get chatUser002SampleImage => const AssetGenImage(
      'assets/images/sample/chat_user_002_sample_image.png');

  /// File path: assets/images/sample/chat_user_003_sample_image.png
  AssetGenImage get chatUser003SampleImage => const AssetGenImage(
      'assets/images/sample/chat_user_003_sample_image.png');

  /// File path: assets/images/sample/chat_user_004_sample_image.png
  AssetGenImage get chatUser004SampleImage => const AssetGenImage(
      'assets/images/sample/chat_user_004_sample_image.png');

  /// File path: assets/images/sample/chat_user_005_sample_image.png
  AssetGenImage get chatUser005SampleImage => const AssetGenImage(
      'assets/images/sample/chat_user_005_sample_image.png');

  /// File path: assets/images/sample/main_photo_sample.png
  AssetGenImage get mainPhotoSample =>
      const AssetGenImage('assets/images/sample/main_photo_sample.png');

  /// File path: assets/images/sample/user_000_sample_image.png
  AssetGenImage get user000SampleImage =>
      const AssetGenImage('assets/images/sample/user_000_sample_image.png');

  /// File path: assets/images/sample/user_001_sample_image.png
  AssetGenImage get user001SampleImage =>
      const AssetGenImage('assets/images/sample/user_001_sample_image.png');

  /// File path: assets/images/sample/user_002_sample_image.png
  AssetGenImage get user002SampleImage =>
      const AssetGenImage('assets/images/sample/user_002_sample_image.png');

  /// File path: assets/images/sample/user_003_sample_image.png
  AssetGenImage get user003SampleImage =>
      const AssetGenImage('assets/images/sample/user_003_sample_image.png');

  /// File path: assets/images/sample/user_004_sample_image.png
  AssetGenImage get user004SampleImage =>
      const AssetGenImage('assets/images/sample/user_004_sample_image.png');

  /// File path: assets/images/sample/user_005_sample_image.png
  AssetGenImage get user005SampleImage =>
      const AssetGenImage('assets/images/sample/user_005_sample_image.png');

  /// File path: assets/images/sample/user_006_sample_image.png
  AssetGenImage get user006SampleImage =>
      const AssetGenImage('assets/images/sample/user_006_sample_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        chatUser001SampleImage,
        chatUser002SampleImage,
        chatUser003SampleImage,
        chatUser004SampleImage,
        chatUser005SampleImage,
        mainPhotoSample,
        user000SampleImage,
        user001SampleImage,
        user002SampleImage,
        user003SampleImage,
        user004SampleImage,
        user005SampleImage,
        user006SampleImage
      ];
}

class $AssetsImagesWeatherPersonalityGen {
  const $AssetsImagesWeatherPersonalityGen();

  /// File path: assets/images/weather_personality/nfie_soft_octopus_image.png
  AssetGenImage get nfieSoftOctopusImage => const AssetGenImage(
      'assets/images/weather_personality/nfie_soft_octopus_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [nfieSoftOctopusImage];
}

class Assets {
  const Assets._();

  static const String aEnv = '.env';
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
