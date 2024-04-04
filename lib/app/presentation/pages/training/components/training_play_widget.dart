import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'count_down.dart';

abstract class TrainingPlayWidget extends HookConsumerWidget {
  const TrainingPlayWidget({super.key});

  String get title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completedCountDown = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: completedCountDown.value
          ? buildPlayPage(context, ref)
          : CountDown(
              initialSecond: 3,
              onEnd: () => completedCountDown.value = true,
            ),
    );
  }

  Widget buildPlayPage(BuildContext context, WidgetRef ref);
}
