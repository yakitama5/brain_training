import 'package:brain_training/src/presentation/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'SETTINGS');

const settingsBranch = TypedStatefulShellBranch<BranchSettingsData>(
  routes: [
    TypedGoRoute<SettingsRouteData>(path: SettingsRouteData.path),
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
