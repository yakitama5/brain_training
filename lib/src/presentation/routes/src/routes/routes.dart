import 'package:brain_training/src/presentation/routes/src/routes/analytics_branch.dart';
import 'package:brain_training/src/presentation/routes/src/routes/break_branch.dart';
import 'package:brain_training/src/presentation/routes/src/routes/home_branch.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigator_page.dart';
import 'settings_branch.dart';
import 'training_branch.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<BaseShellSrouteData>(
  routes: [
    TypedGoRoute<RootRouteData>(path: RootRouteData.path),
    TypedStatefulShellRoute<BottomNavitorShellRouteData>(
      branches: [
        homeBranch,
        analyticsBranch,
        trainingBranch,
        breakBranch,
        settingsBranch,
      ],
    ),
  ],
)
class BaseShellSrouteData extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = _rootNavigatorKey;

  // ルート設定のために定義だけ
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      navigator;
}

class RootRouteData extends GoRouteData {
  const RootRouteData();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      // ぐるぐる回すだけ
      const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
}

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

class BottomNavitorShellRouteData extends StatefulShellRouteData {
  const BottomNavitorShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return NavigatorPage(
      navigationShell: navigationShell,
    );
  }

  static const String $restorationScopeId = 'app_router';
}
