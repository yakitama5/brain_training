/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/google.svg
  String get google => 'assets/images/google.svg';

  /// File path: assets/images/i1.png
  AssetGenImage get i1 => const AssetGenImage('assets/images/i1.png');

  /// File path: assets/images/i2.png
  AssetGenImage get i2 => const AssetGenImage('assets/images/i2.png');

  /// File path: assets/images/i3.png
  AssetGenImage get i3 => const AssetGenImage('assets/images/i3.png');

  /// File path: assets/images/i4.png
  AssetGenImage get i4 => const AssetGenImage('assets/images/i4.png');

  /// File path: assets/images/i5.png
  AssetGenImage get i5 => const AssetGenImage('assets/images/i5.png');

  /// File path: assets/images/i6.png
  AssetGenImage get i6 => const AssetGenImage('assets/images/i6.png');

  /// File path: assets/images/welcome_cats.svg
  String get welcomeCats => 'assets/images/welcome_cats.svg';

  /// List of all assets
  List<dynamic> get values => [google, i1, i2, i3, i4, i5, i6, welcomeCats];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/maintenance.json
  String get maintenance => 'assets/lottie/maintenance.json';

  /// File path: assets/lottie/sorry.json
  String get sorry => 'assets/lottie/sorry.json';

  /// List of all assets
  List<String> get values => [maintenance, sorry];
}

class $AssetsMovieGen {
  const $AssetsMovieGen();

  /// File path: assets/movie/tutorial_color.mp4
  String get tutorialColor => 'assets/movie/tutorial_color.mp4';

  /// List of all assets
  List<String> get values => [tutorialColor];
}

class $AssetsSensitiveGen {
  const $AssetsSensitiveGen();

  /// File path: assets/sensitive/google-speech-to-text-key.json
  String get googleSpeechToTextKey =>
      'assets/sensitive/google-speech-to-text-key.json';

  /// List of all assets
  List<String> get values => [googleSpeechToTextKey];
}

class $AssetsSoundsGen {
  const $AssetsSoundsGen();

  /// File path: assets/sounds/countdown_count.mp3
  String get countdownCount => 'assets/sounds/countdown_count.mp3';

  /// File path: assets/sounds/countdown_end.mp3
  String get countdownEnd => 'assets/sounds/countdown_end.mp3';

  /// File path: assets/sounds/quiz_correct.mp3
  String get quizCorrect => 'assets/sounds/quiz_correct.mp3';

  /// File path: assets/sounds/quiz_end.mp3
  String get quizEnd => 'assets/sounds/quiz_end.mp3';

  /// File path: assets/sounds/quiz_incorrect.mp3
  String get quizIncorrect => 'assets/sounds/quiz_incorrect.mp3';

  /// List of all assets
  List<String> get values =>
      [countdownCount, countdownEnd, quizCorrect, quizEnd, quizIncorrect];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsMovieGen movie = $AssetsMovieGen();
  static const $AssetsSensitiveGen sensitive = $AssetsSensitiveGen();
  static const $AssetsSoundsGen sounds = $AssetsSoundsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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
