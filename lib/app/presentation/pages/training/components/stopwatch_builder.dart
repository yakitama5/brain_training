import 'dart:async';

import 'package:brain_training/app/application/state/app_sound_players_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../components/importer.dart';

class StopwatchBuilder extends HookConsumerWidget {
  const StopwatchBuilder({
    super.key,
    required this.stopwatch,
    required this.limit,
    this.builder,
    this.onEnd,
  });

  static const interval = Duration(milliseconds: 100);
  static const endDuration = Duration(milliseconds: 2000);

  final Stopwatch stopwatch;
  final int limit;
  final Widget Function(BuildContext context)? builder;
  final void Function()? onEnd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final finishSoundPlayer =
        ref.watch(appSoundPlayersProvider.select((value) => value.quizFinish));

    final ms = useState(0);
    final ended = useState(false);

    useEffect(
      () {
        stopwatch.start();
        Timer(
          interval,
          () => updateStopWatch(context, ms, () {
            ended.value = true;
            finishSoundPlayer.play();
            Timer(endDuration, onEnd ?? () {});
          }),
        );
        return stopwatch.reset;
      },
      [stopwatch],
    );

    if (ended.value) {
      return Center(
        child: Text(
          i18n.common.end,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      );
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: WidthFillBox(
                child: builder != null
                    ? builder!(context)
                    : const SizedBox.shrink(),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GaugeChart(
                value: ms.value / limit * 100,
                radius: 56,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateStopWatch(
    BuildContext context,
    ValueNotifier<int> ms,
    void Function() onEnd,
  ) {
    if (!context.mounted) {
      return;
    }
    ms.value = stopwatch.elapsed.inMilliseconds;

    // 終了時
    if (ms.value >= limit) {
      stopwatch.stop();
      onEnd();
      return;
    }

    if (stopwatch.isRunning) {
      Timer(interval, () => updateStopWatch(context, ms, onEnd));
    }
  }
}
