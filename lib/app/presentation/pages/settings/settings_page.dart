import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../routes/src/routes/settings_branch.dart';
import 'components/themed_settings_list.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // プラットフォームに応じたアイコンの出し訳
    final trailing = Theme.of(context).isCupertinoPlatform
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.settings.title),
      ),
      body: ThemedSettingsList(
        sections: [
          SettingsSection(
            title: Text(i18n.settings.list.account.head),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.link),
                trailing: trailing,
                title: Text(i18n.settings.list.account.account),
                onPressed: _onAccount,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onAccount(BuildContext context) {
    const SettingsAccountRouteData().go(context);
  }
}
