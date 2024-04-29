import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../routes/src/routes/home_branch.dart';

class PlayingPopScopeScaffold extends SingleChildStatelessWidget {
  const PlayingPopScopeScaffold({super.key, super.child, this.title});

  final String? title;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (child == null) {
      return const SizedBox.shrink();
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => _onWillPopScope(context, didPop),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () async => _onCancel(context),
          ),
          title: Text(title ?? ''),
        ),
        body: child,
      ),
    );
  }

  Future<void> _onWillPopScope(
    BuildContext context,
    bool didPop,
  ) async {
    // 移行ガイドに沿って変更
    // Notes: https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
    if (didPop) {
      return;
    }

    // ダイアログを表示して確認
    return _onCancel(context);
  }

  Future<void> _onCancel(BuildContext context) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: i18n.training.cancelDialog.title,
      message: i18n.training.cancelDialog.messages,
      cancelLabel: i18n.training.cancelDialog.cancel,
      okLabel: i18n.training.cancelDialog.ok,
    );

    if (result == OkCancelResult.ok && context.mounted) {
      const HomeRouteData().go(context);
    }
  }
}
