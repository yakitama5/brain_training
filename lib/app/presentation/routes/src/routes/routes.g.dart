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
          routes: [
            GoRouteData.$route(
              path: 'colored_word/:answerType',
              factory: $ColoredWordRouteDataExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'fill_in_the_blank_calc/:answerType',
              factory: $FillInTheBlankCalcRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/tutorial/:trainingType',
          factory: $TutorialRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'answer_select',
              factory: $AnswerSelectRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/training_result',
          factory: $TrainingResultRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/onboard',
          factory: $OnboardRouteDataExtension._fromState,
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
                    GoRouteData.$route(
                      path: 'rank_category',
                      factory: $SettingsLayoutRankCategoryRouteDataExtension
                          ._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'ui_style',
                      factory: $SettingsUIStyleRouteDataExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'theme_mode',
                      factory: $SettingsThemeModeRouteDataExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'color_style',
                      factory: $SettingsColorStyleRouteDataExtension._fromState,
                    ),
                    GoRouteData.$route(
                      path: 'license',
                      factory: $SettingsLicenseRouteDataExtension._fromState,
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

extension $ColoredWordRouteDataExtension on ColoredWordRouteData {
  static ColoredWordRouteData _fromState(GoRouterState state) =>
      ColoredWordRouteData(
        _$AnswerTypeEnumMap._$fromName(state.pathParameters['answerType']!),
      );

  String get location => GoRouteData.$location(
        '/colored_word/${Uri.encodeComponent(_$AnswerTypeEnumMap[answerType]!)}',
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

extension $FillInTheBlankCalcRouteDataExtension on FillInTheBlankCalcRouteData {
  static FillInTheBlankCalcRouteData _fromState(GoRouterState state) =>
      FillInTheBlankCalcRouteData(
        _$AnswerTypeEnumMap._$fromName(state.pathParameters['answerType']!),
      );

  String get location => GoRouteData.$location(
        '/fill_in_the_blank_calc/${Uri.encodeComponent(_$AnswerTypeEnumMap[answerType]!)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TutorialRouteDataExtension on TutorialRouteData {
  static TutorialRouteData _fromState(GoRouterState state) => TutorialRouteData(
        _$TrainingTypeEnumMap._$fromName(state.pathParameters['trainingType']!),
      );

  String get location => GoRouteData.$location(
        '/tutorial/${Uri.encodeComponent(_$TrainingTypeEnumMap[trainingType]!)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$TrainingTypeEnumMap = {
  TrainingType.coloredWord: 'colored-word',
  TrainingType.themeShiritori: 'theme-shiritori',
  TrainingType.fillInTheBlankCalc: 'fill-in-the-blank-calc',
};

extension $AnswerSelectRouteDataExtension on AnswerSelectRouteData {
  static AnswerSelectRouteData _fromState(GoRouterState state) =>
      AnswerSelectRouteData(
        _$TrainingTypeEnumMap._$fromName(state.pathParameters['trainingType']!),
      );

  String get location => GoRouteData.$location(
        '/tutorial/${Uri.encodeComponent(_$TrainingTypeEnumMap[trainingType]!)}/answer_select',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

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

extension $SettingsLayoutRankCategoryRouteDataExtension
    on SettingsLayoutRankCategoryRouteData {
  static SettingsLayoutRankCategoryRouteData _fromState(GoRouterState state) =>
      const SettingsLayoutRankCategoryRouteData();

  String get location => GoRouteData.$location(
        '/settings/rank_category',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsUIStyleRouteDataExtension on SettingsUIStyleRouteData {
  static SettingsUIStyleRouteData _fromState(GoRouterState state) =>
      const SettingsUIStyleRouteData();

  String get location => GoRouteData.$location(
        '/settings/ui_style',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsThemeModeRouteDataExtension on SettingsThemeModeRouteData {
  static SettingsThemeModeRouteData _fromState(GoRouterState state) =>
      const SettingsThemeModeRouteData();

  String get location => GoRouteData.$location(
        '/settings/theme_mode',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsColorStyleRouteDataExtension on SettingsColorStyleRouteData {
  static SettingsColorStyleRouteData _fromState(GoRouterState state) =>
      const SettingsColorStyleRouteData();

  String get location => GoRouteData.$location(
        '/settings/color_style',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsLicenseRouteDataExtension on SettingsLicenseRouteData {
  static SettingsLicenseRouteData _fromState(GoRouterState state) =>
      const SettingsLicenseRouteData();

  String get location => GoRouteData.$location(
        '/settings/license',
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
