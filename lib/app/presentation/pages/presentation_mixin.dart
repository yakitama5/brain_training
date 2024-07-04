import 'dart:io' as io;
import 'dart:ui' as ui;

import 'package:brain_training/app/presentation/pages/error/components/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart' as share;
import 'package:uuid/uuid.dart';

import '../components/importer.dart';

/// プレゼンテーション層用の共通処理 Mixin
mixin PresentationMixin {
  /// エラーハンドリングをラップした実行処理
  Future<void> execute(
    BuildContext context, {
    required Future<void> Function() action,
    String? successMessage,
  }) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    try {
      await action();
      if (successMessage != null) {
        InfoSnackBar.show(scaffoldMessenger, message: successMessage);
      }
    } on Exception catch (e) {
      ErrorSnackBar.show(scaffoldMessenger, message: e.errorMessage);
    }
  }

  /// RepaintBounderKeyを基にXFileを取得
  Future<share.XFile?> captureToXFile(GlobalKey key) async {
    // RenderObjectを取得
    final boundary = key.currentContext?.findRenderObject();
    if (boundary == null || boundary is! RenderRepaintBoundary) {
      return null;
    }

    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final bytes = byteData!.buffer.asUint8List();
    final temporaryFile = await _getTemporaryFile(bytes);
    final path = temporaryFile.path;

    return share.XFile(path);
  }

  /// キャッシュ領域にファイルを保存し、パスを取得する.
  Future<io.File> _getTemporaryFile(List<int> imageData) async {
    final directory = await getTemporaryDirectory();

    final uuid = const Uuid().v4();
    final exportFile = io.File('${directory.path}/$uuid.png');
    if (!exportFile.existsSync()) {
      await exportFile.create(recursive: true);
    }
    final file = await exportFile.writeAsBytes(imageData);
    return file;
  }
}
