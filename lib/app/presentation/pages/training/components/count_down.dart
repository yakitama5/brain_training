import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountDown extends HookWidget {
  CountDown({
    super.key,
    required this.initialSecond,
    this.onEnd,
  });

  static const _duration = Duration(milliseconds: 1000);

  final int initialSecond;
  final VoidCallback? onEnd;

  final Stopwatch stopwatch = Stopwatch();

  @override
  Widget build(BuildContext context) {
    final ts = Theme.of(context).textTheme;
    final sec = useState(initialSecond);

    void updateStopWatch() {
      sec.value = initialSecond - stopwatch.elapsed.inSeconds;

      if (sec.value <= 0) {
        stopwatch.stop();
        if (onEnd != null) {
          onEnd!();
        }
        return;
      }

      if (stopwatch.isRunning) {
        Timer(_duration, updateStopWatch);
      }
    }

    useEffect(
      () {
        stopwatch.start();
        Timer(_duration, updateStopWatch);
        return stopwatch.reset;
      },
      [stopwatch],
    );

    return Center(
      child: Text(
        '${sec.value}',
        style: ts.displayLarge,
      ),
    );
  }
}
