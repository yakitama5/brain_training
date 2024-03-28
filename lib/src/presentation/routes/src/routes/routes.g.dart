// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $baseShellSrouteData,
    ];

RouteBase get $baseShellSrouteData => ShellRouteData.$route(
      navigatorKey: BaseShellSrouteData.$navigatorKey,
      factory: $BaseShellSrouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $RootRouteDataExtension._fromState,
        ),
        StatefulShellRouteData.$route(
          restorationScopeId: BottomNavitorShellRouteData.$restorationScopeId,
          factory: $BottomNavitorShellRouteDataExtension._fromState,
          branches: [
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/home',
                  factory: $HomeRouteDataExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/analytics',
                  factory: $AnalyticsRouteDataExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/training',
                  factory: $TrainingRouteDataExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/break',
                  factory: $BreakRouteDataExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              routes: [
                GoRouteData.$route(
                  path: '/settings',
                  factory: $SettingsRouteDataExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $BaseShellSrouteDataExtension on BaseShellSrouteData {
  static BaseShellSrouteData _fromState(GoRouterState state) =>
      BaseShellSrouteData();
}

extension $RootRouteDataExtension on RootRouteData {
  static RootRouteData _fromState(GoRouterState state) => const RootRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BottomNavitorShellRouteDataExtension on BottomNavitorShellRouteData {
  static BottomNavitorShellRouteData _fromState(GoRouterState state) =>
      const BottomNavitorShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnalyticsRouteDataExtension on AnalyticsRouteData {
  static AnalyticsRouteData _fromState(GoRouterState state) =>
      const AnalyticsRouteData();

  String get location => GoRouteData.$location(
        '/analytics',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TrainingRouteDataExtension on TrainingRouteData {
  static TrainingRouteData _fromState(GoRouterState state) =>
      const TrainingRouteData();

  String get location => GoRouteData.$location(
        '/training',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BreakRouteDataExtension on BreakRouteData {
  static BreakRouteData _fromState(GoRouterState state) =>
      const BreakRouteData();

  String get location => GoRouteData.$location(
        '/break',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteDataExtension on SettingsRouteData {
  static SettingsRouteData _fromState(GoRouterState state) =>
      const SettingsRouteData();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
