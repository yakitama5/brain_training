import 'package:brain_training/app/presentation/pages/break/break_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'BREAK');

const breakBranch = TypedStatefulShellBranch<BranchBreakData>(
  routes: [
    TypedGoRoute<BreakRouteData>(path: BreakRouteData.path),
  ],
);

class BranchBreakData extends StatefulShellBranchData {
  const BranchBreakData();
}

class BreakRouteData extends GoRouteData {
  const BreakRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/break';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BreakMenuPage();
}
