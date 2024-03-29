import 'package:brain_training/src/presentation/pages/training/training_menu_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'TRAINING');

const trainingBranch = TypedStatefulShellBranch<BranchTrainingData>(
  routes: [
    TypedGoRoute<TrainingRouteData>(path: TrainingRouteData.path),
  ],
);

class BranchTrainingData extends StatefulShellBranchData {
  const BranchTrainingData();
}

class TrainingRouteData extends GoRouteData {
  const TrainingRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = _navigatorKey;
  static const path = '/training';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TrainingMenuPage();
}
