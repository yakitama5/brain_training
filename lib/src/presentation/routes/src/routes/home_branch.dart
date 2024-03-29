import 'package:brain_training/src/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'HOME');

const homeBranch = TypedStatefulShellBranch<BranchHomeData>(
  routes: [
    TypedGoRoute<HomeRouteData>(path: HomeRouteData.path),
  ],
);

class BranchHomeData extends StatefulShellBranchData {
  const BranchHomeData();
}

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
