import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:brain_training/app/presentation/components/src/google_icon_image.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../application/usecase/user/state/auth_status_provider.dart';
import '../../../application/usecase/user/user_usecase.dart';
import '../../components/importer.dart';
import '../../theme/importer.dart';
import '../error/components/error_view.dart';
import '../presentation_mixin.dart';
import 'components/themed_settings_list.dart';

class AccountPage extends HookConsumerWidget with PresentationMixin {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final trailing = Theme.of(context).isCupertinoPlatform
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    final authStatus = ref.watch(authStatusProvider);

    return authStatus.when(
      data: (data) => Scaffold(
        appBar: AppBar(
          title: Text(i18n.settings.account.title),
        ),
        body: ThemedSettingsList(
          sections: [
            SettingsSection(
              title: Text(i18n.settings.account.accountLink),
              tiles: [
                SettingsTile.switchTile(
                  leading: const GoogleIcon(),
                  title: Text(i18n.settings.account.google),
                  initialValue: data?.linkedGoogle,
                  onToggle: (value) => _onToggleGoogle(context, ref, value),
                ),
                SettingsTile.switchTile(
                  leading: Icon(
                    MdiIcons.apple,
                    color: colorScheme.onSurface,
                  ),
                  title: Text(i18n.settings.account.apple),
                  initialValue: data?.linkedApple,
                  onToggle: (value) => _onToggleApple(context, ref, value),
                ),
              ],
            ),
            SettingsSection(
              title: Text(i18n.settings.account.other),
              tiles: [
                // 連携していないユーザーはログアウトしても復帰できないので退会オンリー
                if (data?.isAnonymous != true)
                  SettingsTile.navigation(
                    leading: const Icon(Icons.logout),
                    trailing: trailing,
                    title: Text(i18n.settings.account.logout),
                    onPressed: (context) => _onLogout(context, ref),
                  ),
                SettingsTile.navigation(
                  leading: Icon(Icons.delete, color: colorScheme.error),
                  trailing: trailing,
                  title: Text(i18n.settings.account.leave),
                  onPressed: (context) => _onDeleteAccount(context, ref),
                ),
              ],
            ),
          ],
        ),
      ),
      error: ErrorView.new,
      loading: CircularProgressIndicator.new,
    );
  }

  Future<void> _onToggleGoogle(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async {
    // TODO(yakitama5): 未作成
    MaintenanceSnackbar.showByContext(context);
    // return execute(
    //   context,
    //   action: () {
    //     final usecase = ref.read(userUsecaseProvider);
    //     return value ? usecase.signInWithGoogle() : usecase.unlinkWithGoogle();
    //   },
    // );
  }

  Future<void> _onToggleApple(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) async {
    // TODO(yakitama5): 未作成
    MaintenanceSnackbar.showByContext(context);
    // execute(
    //   context,
    //   action: () {
    //     final usecase = ref.read(userUsecaseProvider);
    //     return value ? usecase.signInWithApple() : usecase.unlinkWithApple();
    //   },
    // );
  }

  Future<void> _onLogout(BuildContext context, WidgetRef ref) => execute(
        context,
        action: () => ref.read(userUsecaseProvider).signOut(),
      );

  Future<void> _onDeleteAccount(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final result = await showOkCancelAlertDialog(
      context: context,
      title: i18n.settings.account.leaveConfirmDialog.title,
      message: i18n.settings.account.leaveConfirmDialog.body,
    );
    if (result != OkCancelResult.ok) {
      return;
    }

    // 削除処理
    if (context.mounted) {
      return execute(
        context,
        action: () => ref.read(userUsecaseProvider).delete(),
      );
    }
  }
}
