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
        GoRouteData.$route(
          path: '/onboard',
          factory: $OnboardRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/tutorial',
          factory: $ColoredWordTutorialRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'select',
              factory: $ColoredWordSelectRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/home/colored_word/:answerType',
          factory: $ColoredWordRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/training_result',
          factory: $TrainingResultRouteDataExtension._fromState,
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
                  routes: [
                    GoRouteData.$route(
                      path: 'sample',
                      factory: $SampleRouteDataExtension._fromState,
                    ),
                  ],
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
                  routes: [
                    GoRouteData.$route(
                      path: 'account',
                      factory: $SettingsAccountRouteDataExtension._fromState,
                    ),
                  ],
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

extension $OnboardRouteDataExtension on OnboardRouteData {
  static OnboardRouteData _fromState(GoRouterState state) =>
      const OnboardRouteData();

  String get location => GoRouteData.$location(
        '/onboard',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ColoredWordTutorialRouteDataExtension
    on ColoredWordTutorialRouteData {
  static ColoredWordTutorialRouteData _fromState(GoRouterState state) =>
      const ColoredWordTutorialRouteData();

  String get location => GoRouteData.$location(
        '/tutorial',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ColoredWordSelectRouteDataExtension on ColoredWordSelectRouteData {
  static ColoredWordSelectRouteData _fromState(GoRouterState state) =>
      const ColoredWordSelectRouteData();

  String get location => GoRouteData.$location(
        '/tutorial/select',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ColoredWordRouteDataExtension on ColoredWordRouteData {
  static ColoredWordRouteData _fromState(GoRouterState state) =>
      ColoredWordRouteData(
        _$AnswerTypeEnumMap._$fromName(state.pathParameters['answerType']!),
      );

  String get location => GoRouteData.$location(
        '/home/colored_word/${Uri.encodeComponent(_$AnswerTypeEnumMap[answerType]!)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$AnswerTypeEnumMap = {
  AnswerType.voice: 'voice',
  AnswerType.list: 'list',
};

extension $TrainingResultRouteDataExtension on TrainingResultRouteData {
  static TrainingResultRouteData _fromState(GoRouterState state) =>
      TrainingResultRouteData(
        state.extra as TrainingResult,
      );

  String get location => GoRouteData.$location(
        '/training_result',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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

extension $SampleRouteDataExtension on SampleRouteData {
  static SampleRouteData _fromState(GoRouterState state) =>
      const SampleRouteData();

  String get location => GoRouteData.$location(
        '/home/sample',
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

extension $SettingsAccountRouteDataExtension on SettingsAccountRouteData {
  static SettingsAccountRouteData _fromState(GoRouterState state) =>
      const SettingsAccountRouteData();

  String get location => GoRouteData.$location(
        '/settings/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
