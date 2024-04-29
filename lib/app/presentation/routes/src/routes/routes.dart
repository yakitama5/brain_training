import 'package:brain_training/app/domain/training/value_object/answer_type.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/pages/colored_word/colored_word_page.dart';
import 'package:brain_training/app/presentation/routes/src/routes/analytics_branch.dart';
import 'package:brain_training/app/presentation/routes/src/routes/break_branch.dart';
import 'package:brain_training/app/presentation/routes/src/routes/home_branch.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/training/entity/training_result.dart';
import '../../../pages/settings/onboard_page.dart';
import '../../../pages/training/answer_selection_page.dart';
import '../../../pages/training/training_result_page.dart';
import '../../../pages/training/training_tutorial_page.dart';
import 'navigator_page.dart';
import 'settings_branch.dart';
import 'training_branch.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<BaseShellSrouteData>(
  routes: [
    TypedGoRoute<RootRouteData>(
      path: RootRouteData.path,
      routes: [
        // Willpopとするため、Rootパス配下に組む
        TypedGoRoute<ColoredWordRouteData>(path: ColoredWordRouteData.path),
      ],
    ),
    TypedGoRoute<TutorialRouteData>(
      path: TutorialRouteData.path,
      routes: [
        TypedGoRoute<AnswerSelectRouteData>(
          path: AnswerSelectRouteData.path,
        ),
      ],
    ),
    TypedGoRoute<TrainingResultRouteData>(
      path: TrainingResultRouteData.path,
    ),
    TypedGoRoute<OnboardRouteData>(path: OnboardRouteData.path),
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

class TutorialRouteData extends GoRouteData {
  const TutorialRouteData(this.trainingType);

  static const path = '/tutorial/:trainingType';
  final TrainingType trainingType;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(
        child: TrainingTutorialPage(
          trainingType: trainingType,
        ),
        fullscreenDialog: true,
      );
}

class AnswerSelectRouteData extends GoRouteData {
  const AnswerSelectRouteData(this.trainingType);

  static const path = 'answer_select';
  final TrainingType trainingType;
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      AnswerSelectionPage(trainingType: trainingType);
}

class ColoredWordRouteData extends GoRouteData {
  const ColoredWordRouteData(this.answerType);

  static const path = 'colored_word/:answerType';
  final AnswerType answerType;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(
        child: ColoredWordPage(
          answerType: answerType,
        ),
        fullscreenDialog: true,
      );
}

class TrainingResultRouteData extends GoRouteData {
  const TrainingResultRouteData(this.$extra);

  static const path = '/training_result';
  final TrainingResult $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) => TrainingResultPage(
        result: $extra,
      );
}

class OnboardRouteData extends GoRouteData {
  const OnboardRouteData();

  static const path = '/onboard';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardPage();
}
