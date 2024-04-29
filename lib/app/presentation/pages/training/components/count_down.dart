import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nested/nested.dart';

import '../../../../../gen/assets.gen.dart';

class CountDownContainer extends SingleChildStatelessWidget {
  const CountDownContainer({
    super.key,
    this.initialSecond,
    super.child,
  });

  final int? initialSecond;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return HookBuilder(
      builder: (context) {
        final completedCountDown = useState(false);

        return completedCountDown.value
            ? child ?? const SizedBox.shrink()
            : CountDown(
                // TODO(yakitama5): マジックナンバーをコンフィグ化
                initialSecond: initialSecond ?? 3,
                onEnd: () => completedCountDown.value = true,
              );
      },
    );
  }
}

class CountDown extends StatelessWidget {
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
  Widget build(BuildContext context) => FutureBuilder(
        future: loadAssetsSound(),
        builder: (context, snapshot) => switch (snapshot.connectionState) {
          ConnectionState.done => HookBuilder(
              builder: (context) {
                final ts = Theme.of(context).textTheme;
                final seconds = useState(initialSecond);

                useEffect(
                  () {
                    // 初回再生とカウントダウンの開始
                    countPlayer.play();
                    Timer(_duration, () => updateCountDown(context, seconds));

                    // 音が途切れるため、`dispose`は行わない
                    return null;
                  },
                  [countPlayer, endPlayer],
                );

                return Center(
                  child: Text(
                    '${seconds.value}',
                    style: ts.displayLarge,
                  ),
                );
              },
            ),
          _ => const Center(child: CircularProgressIndicator.adaptive()),
        },
      );

  /// 効果音の読み込み
  Future<void> loadAssetsSound() async {
    await countPlayer.setAsset(Assets.sounds.countdownCount);
    await endPlayer.setAsset(Assets.sounds.countdownEnd);
  }

  // カウントダウンの更新
  void updateCountDown(BuildContext context, ValueNotifier<int> seconds) {
    if (!context.mounted) {
      return;
    }

    seconds.value--;

    if (seconds.value <= 0) {
      endPlayer.play();

      if (onEnd != null) {
        onEnd!();
      }
      return;
    }

    countPlayer
      ..seek(Duration.zero)
      ..play();
    Timer(_duration, () => updateCountDown(context, seconds));
  }
}
