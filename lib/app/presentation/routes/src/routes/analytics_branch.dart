import 'package:brain_training/app/presentation/pages/analytics/analytics_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'ANALYTICS');

const analyticsBranch = TypedStatefulShellBranch<BranchAnalyticsData>(
  routes: [
    TypedGoRoute<AnalyticsRouteData>(path: AnalyticsRouteData.path),
  ],
);

class BranchAnalyticsData extends StatefulShellBranchData {
  const BranchAnalyticsData();
}

class AnalyticsRouteData extends GoRouteData {
  const AnalyticsRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/analytics';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AnalyticsPage();
}
