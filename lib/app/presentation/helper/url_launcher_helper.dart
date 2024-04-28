import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// URL文字列に遷移する
Future<bool> lanchUrlStringSafety(
  BuildContext context,
  String url, {
  String? secondUrl,
}) async {
  Future<void> showDialog() => showOkCancelAlertDialog(
        context: context,
        // TODO(yakitama5): 多言語化対応
        title: 'error',
        message: 'Error',
      );

  if (await canLaunchUrlString(url)) {
    return launchUrlString(url);
  } else if (secondUrl != null && await canLaunchUrlString(secondUrl)) {
    return launchUrlString(secondUrl);
  }

  await showDialog();
  return Future.value(false);
}
