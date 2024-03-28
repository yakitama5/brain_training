import 'dart:async';

import 'package:flutter/material.dart';

mixin CountdownMixin on StatefulWidget {
  CountdownMixin({
    required this.seconds,
  });
  
  final int seconds;

  @override
  State<StatefulWidget> createState() => _CountdownMixinState();
}

class _CountdownMixinState extends State<CountdownMixin> with TickerProviderStateMixin {
  late Timer _timer;
  int _remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.seconds;
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_remainingSeconds > 0) {
          setState(() {
            _remainingSeconds--;
          });
        } else {
          _timer.cancel();
          onCountdownFinished();
        }
      },
    );
  }

  void onCountdownFinished() {}

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_remainingSeconds',
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}