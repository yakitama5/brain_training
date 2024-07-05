import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// メンテナンス表示スナックバー
class MaintenanceSnackbar extends SnackBar {
  MaintenanceSnackbar._()
      : super(
          content: Text(i18n.maintenance.snackbarMessage),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          duration: const Duration(milliseconds: 2000),
        );

  static void show(ScaffoldMessengerState scaffoldMessenger) {
    scaffoldMessenger
      ..hideCurrentSnackBar()
      ..showSnackBar(MaintenanceSnackbar._());
  }

  static void showByContext(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    show(scaffoldMessenger);
  }
}
