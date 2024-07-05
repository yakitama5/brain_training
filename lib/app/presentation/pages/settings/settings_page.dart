import 'package:brain_training/app/application/state/color_style_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/theme_mode_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/ui_style_provider.dart';
import 'package:brain_training/app/presentation/pages/sample_page.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../components/importer.dart';
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
    final uiStyle = ref.watch(uiStyleProvider);
    final themeMode = ref.watch(themeModeProvider);
    final colorStyle = ref.watch(colorStyleProvider);

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
                description: Text(
                  i18n.training.result.category(context: rankCategory),
                ),
                onPressed: _onRankCategory,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.style),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.uiStyle),
                description: Text(i18n.settings.uiStyle.type(context: uiStyle)),
                onPressed: _onUIStyle,
              ),
              SettingsTile.navigation(
                // TODO(yakitama5): アイコンを変えること
                leading: const Icon(Icons.light_mode),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.themeMode),
                description:
                    Text(i18n.settings.themeMode.type(context: themeMode)),
                onPressed: _onThemeMode,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.color_lens),
                trailing: trailing,
                title: Text(i18n.settings.list.layout.colorTheme),
                description:
                    Text(i18n.settings.colorStyle.type(context: colorStyle)),
                onPressed: _onColorStyle,
              ),
            ],
          ),
          SettingsSection(
            title: Text(i18n.settings.list.help.head),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(CustomIcons.beginner),
                trailing: trailing,
                title: Text(i18n.settings.list.help.howToUse),
                onPressed: _onHowToUse,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.help),
                trailing: trailing,
                title: Text(i18n.settings.list.help.contactUs),
                onPressed: _onContactUs,
              ),
              SettingsTile.navigation(
                leading: Icon(MdiIcons.twitter),
                trailing: trailing,
                title: Text(i18n.settings.list.help.developperTwitter),
                onPressed: _onDevelopperTwitter,
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                trailing: trailing,
                title: Text(i18n.settings.list.help.privacyPollicy),
                onPressed: _onPrivacyPolicy,
              ),
              SettingsTile.navigation(
                trailing: trailing,
                title: Text(i18n.settings.list.help.license),
                onPressed: _onLicense,
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

  void _onRankCategory(BuildContext context) {
    const SettingsLayoutRankCategoryRouteData().go(context);
  }

  void _onUIStyle(BuildContext context) {
    const SettingsUIStyleRouteData().go(context);
  }

  void _onThemeMode(BuildContext context) {
    const SettingsThemeModeRouteData().go(context);
  }

  void _onColorStyle(BuildContext context) {
    const SettingsColorStyleRouteData().go(context);
  }

  Future<bool> _onHowToUse(BuildContext context) async {
    // TODO(yakitama5): 未作成
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SamplePage()));
    // MaintenanceSnackbar.showByContext(context);
    return false;
    // return lanchUrlStringSafety(context, settingsConfig.howToUseUrl);
  }

  Future<bool> _onContactUs(BuildContext context) async {
    // TODO(yakitama5): 未作成
    MaintenanceSnackbar.showByContext(context);
    return false;
    // return lanchUrlStringSafety(context, settingsConfig.contactUsUrl);
  }

  Future<bool> _onDevelopperTwitter(BuildContext context) async {
    // TODO(yakitama5): 未作成
    MaintenanceSnackbar.showByContext(context);
    return false;
    // Notes: https://pub.dev/packages/url_launcher#configuration
    // return lanchUrlStringSafety(
    //   context,
    //   settingsConfig.developperXAppUrl,
    //   secondUrl: settingsConfig.developperXWebUrl,
    // );
  }

  Future<bool> _onPrivacyPolicy(BuildContext context) async {
    // TODO(yakitama5): 未作成
    MaintenanceSnackbar.showByContext(context);
    return false;
    // return lanchUrlStringSafety(context, settingsConfig.privacyPolicyUrl);
  }

  void _onLicense(BuildContext context) {
    const SettingsLicenseRouteData().go(context);
  }
}
