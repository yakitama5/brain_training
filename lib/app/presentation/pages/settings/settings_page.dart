import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/app/presentation/theme/importer.dart';
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
        title: const Text('せってい'),
      ),
      body: ThemedSettingsList(
        sections: [
          SettingsSection(
            title: const Text('アカウント'),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.link),
                trailing: trailing,
                title: const Text('アカウント'),
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
