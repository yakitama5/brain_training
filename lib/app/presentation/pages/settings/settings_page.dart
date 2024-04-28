import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/pages/error/components/error_view.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../routes/src/routes/settings_branch.dart';
import 'components/themed_settings_list.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // プラットフォームに応じたアイコンの出し訳
    final trailing = Theme.of(context).isCupertinoPlatform
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    final rankCategory = ref.watch(rankCategoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.settings.title),
      ),
      body: rankCategory.when(
        data: (rankCategoryData) {
          return ThemedSettingsList(
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
                    description: Text(
                      i18n.training.result.category(context: rankCategoryData),
                    ),
                    onPressed: _onRankCategory,
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
          );
        },
        error: ErrorView.new,
        loading: () => ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => ShimmerWidget.circular(
            width: double.infinity,
            height: 160,
            shapeBorder:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ),
    );
  }

  void _onAccount(BuildContext context) {
    const SettingsAccountRouteData().go(context);
  }

  void _onRankCategory(BuildContext context) {
    const SettingsLayoutRankCategoryRouteData().go(context);
  }
}
