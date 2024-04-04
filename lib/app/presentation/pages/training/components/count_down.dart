import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../../gen/assets.gen.dart';

class CountDown extends HookWidget {
  CountDown({
    super.key,
    required this.initialSecond,
    this.onEnd,
  });

  static const _duration = Duration(milliseconds: 1000);

  final int initialSecond;
  final VoidCallback? onEnd;

  final countPlayer = AudioPlayer();
  final endPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final ts = Theme.of(context).textTheme;
    final sec = useState(initialSecond);

    void updateCountDown() {
      sec.value--;

      if (sec.value <= 0) {
        endPlayer.play();

        if (onEnd != null) {
          onEnd!();
        }
        return;
      }

      countPlayer
        ..seek(Duration.zero)
        ..play();
      Timer(_duration, updateCountDown);
    }

    useEffect(
      () {
        initialSoundTimer(updateCountDown);

        // 音が途切れるため、`dispose`は行わない
        return null;
      },
      [countPlayer, endPlayer],
    );

    return Center(
      child: Text(
        '${sec.value}',
        style: ts.displayLarge,
      ),
    );
  }

  Future<void> initialSoundTimer(void Function() fuga) async {
    // 効果音の読み込み
    await countPlayer.setAsset(Assets.sounds.countdownCount);
    await endPlayer.setAsset(Assets.sounds.countdownEnd);

    unawaited(countPlayer.play());
    Timer(_duration, fuga);
  }
}
