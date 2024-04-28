import 'package:brain_training/app/presentation/pages/settings/account_page.dart';
import 'package:brain_training/app/presentation/pages/settings/rank_category_select_page.dart';
import 'package:brain_training/app/presentation/pages/settings/settings_page.dart';
import 'package:brain_training/app/presentation/pages/settings/theme_mode_select_page.dart';
import 'package:brain_training/app/presentation/pages/settings/ui_style_select_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../pages/settings/license_page.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SETTINGS');

const settingsBranch = TypedStatefulShellBranch<BranchSettingsData>(
  routes: [
    TypedGoRoute<SettingsRouteData>(
      path: SettingsRouteData.path,
      routes: [
        TypedGoRoute<SettingsAccountRouteData>(
          path: SettingsAccountRouteData.path,
        ),
        TypedGoRoute<SettingsLayoutRankCategoryRouteData>(
          path: SettingsLayoutRankCategoryRouteData.path,
        ),
        TypedGoRoute<SettingsUIStyleRouteData>(
          path: SettingsUIStyleRouteData.path,
        ),
        TypedGoRoute<SettingsThemeModeRouteData>(
          path: SettingsThemeModeRouteData.path,
        ),
        TypedGoRoute<SettingsLicenseRouteData>(
          path: SettingsLicenseRouteData.path,
        ),
      ],
    ),
  ],
);

class BranchSettingsData extends StatefulShellBranchData {
  const BranchSettingsData();
}

class SettingsRouteData extends GoRouteData {
  const SettingsRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class SettingsAccountRouteData extends GoRouteData {
  const SettingsAccountRouteData();

  static const path = 'account';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AccountPage();
}

class SettingsLayoutRankCategoryRouteData extends GoRouteData {
  const SettingsLayoutRankCategoryRouteData();

  static const path = 'rank_category';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RankCategorySelectPage();
}

class SettingsUIStyleRouteData extends GoRouteData {
  const SettingsUIStyleRouteData();

  static const path = 'ui_style';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UIStyleSelectPage();
}

class SettingsThemeModeRouteData extends GoRouteData {
  const SettingsThemeModeRouteData();

  static const path = 'theme_mode';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ThemeModeSelectPage();
}

class SettingsLicenseRouteData extends GoRouteData {
  const SettingsLicenseRouteData();

  static const path = 'license';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MyLincensePage();
}
