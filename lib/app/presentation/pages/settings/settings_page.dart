import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
          SettingsSection(
            title: Text(i18n.settings.list.layout.head),
            tiles: [
              SettingsTile.navigation(
                leading: Icon(MdiIcons.trophy),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.rankType),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.style),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.style),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.light_mode),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.themeMode),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.color_lens),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.colorTheme),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            title: Text(i18n.settings.list.help.head),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.how_to_vote),
                trailing: trailing,
                title: Text(i18n.settings.list.help.howToUse),
                onPressed: _onAccount,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.help),
                trailing: trailing,
                title: Text(i18n.settings.list.help.contactUs),
                onPressed: _onAccount,
              ),
              SettingsTile.navigation(
                leading: Icon(MdiIcons.twitter),
                trailing: trailing,
                title: Text(i18n.settings.list.help.developperTwitter),
                onPressed: _onAccount,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                trailing: trailing,
                title: Text(i18n.settings.list.help.privacyPollicy),
                onPressed: _onAccount,
              ),
              SettingsTile.navigation(
                trailing: trailing,
                title: Text(i18n.settings.list.help.license),
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
