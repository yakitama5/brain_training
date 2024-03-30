import 'package:brain_training/src/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TrainingTutorialPage extends HookConsumerWidget {
  const TrainingTutorialPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('チュートリアル'),
      ),
      body: Center(
        child: FilledButton(
          child: const Text('スタート！'),
          onPressed: () =>
              const ColoredWordSelectRouteData().push<void>(context),
        ),
      ),
    );
  }
}
