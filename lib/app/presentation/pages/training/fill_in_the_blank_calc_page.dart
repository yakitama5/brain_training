import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:brain_training/app/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/app/presentation/routes/src/routes/home_branch.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';

import '../../../../gen/assets.gen.dart';
import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/answer_result.dart';
import '../../../domain/training/value_object/answer_type.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import '../../routes/src/routes/routes.dart';
import '../training/components/count_down.dart';

class FillInTheBlankCalcPage extends HookConsumerWidget {
  const FillInTheBlankCalcPage({super.key, required this.answerType});

  final AnswerType answerType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completedCountDown = useState(false);

    return BrightnessScope(
      brightness: Brightness.light,
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) => _onWillPopScope(context, didPop),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () async => _onCancel(context),
            ),
            title: Text(
              i18n.training.trainingType
                  .title(context: TrainingType.fillInTheBlankCalc),
            ),
          ),
          body: completedCountDown.value
              ? PlayPage(answerType: answerType)
              : CountDown(
                  initialSecond: 3,
                  onEnd: () => completedCountDown.value = true,
                ),
        ),
      ),
    );
  }

  Future<void> _onWillPopScope(
    BuildContext context,
    bool didPop,
  ) async {
    // 移行ガイドに沿って変更
    // Notes: https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
    if (didPop) {
      return;
    }

    // ダイアログを表示して確認
    return _onCancel(context);
  }

  Future<void> _onCancel(BuildContext context) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: i18n.training.cancelDialog.title,
      message: i18n.training.cancelDialog.messages,
      cancelLabel: i18n.training.cancelDialog.cancel,
      okLabel: i18n.training.cancelDialog.ok,
    );

    if (result == OkCancelResult.ok && context.mounted) {
      const HomeRouteData().go(context);
    }
  }
}

class PlayPage extends HookConsumerWidget {
  PlayPage({super.key, required this.answerType});

  static const interval = Duration(milliseconds: 100);
  static const endDuration = Duration(milliseconds: 2000);

  final AnswerType answerType;
  final Stopwatch stopwatch = Stopwatch();
  final int limit = TrainingType.coloredWord.limitMillSecond;
  final AudioPlayer correctSoundPlayer = AudioPlayer()
    ..setAsset(Assets.sounds.quizCorrect);
  final AudioPlayer incorrectSoundPlayer = AudioPlayer()
    ..setAsset(Assets.sounds.quizIncorrect);
  final AudioPlayer endSoundPlayer = AudioPlayer()
    ..setAsset(Assets.sounds.quizEnd);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 内部関数のためリビルドは不要
    final correct = useRef(0);
    final questions = useRef(0);

    final ms = useState(0);
    final answerResult = useState<AnswerResult?>(null);
    final ended = useState(false);

    useEffect(
      () {
        stopwatch.start();
        Timer(
          interval,
          () => updateStopWatch(context, ms, () {
            ended.value = true;
            endSoundPlayer.play();

            Timer(endDuration, () {
              final result = FillInTheBlankCalcResult(
                correct: correct.value,
                questions: questions.value,
              );

              // Future<void> addResult() async {
              //   final usecase = ref.read(trainingUsecaseProvider);
              //   final user = await ref.read(authUserProvider.future);

              //   await usecase.finishColoredWordTraining(
              //     userId: user!.id,
              //     score: result.score,
              //     rank: result.rank,
              //     correct: result.correct,
              //     questions: result.questions,
              //     correctRate: result.correctRate,
              //     doneAt: DateTime.now(),
              //   );
              // }

              // 非同期で処理する
              // unawaited(addResult());
              TrainingResultRouteData(
                result,
              ).go(context);
            });
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
                child: Column(
                  children: [
                    // 正誤表示
                    _AnswerResult(result: answerResult.value),

                    // 色付き文字
                    // MixedColoredWordText(coloredWord: word.value),
                    const Gap(80),

                    // 回答方法
                  ],
                ),
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

class ListAnswer extends StatelessWidget {
  const ListAnswer({super.key, required this.onAnswered});

  final void Function(ColoredWord answer) onAnswered;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ColoredWord.values
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => onAnswered(e),
                  child:
                      Text(i18n.training.coloredWord.displayWord(context: e)),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _AnswerResult extends StatelessWidget {
  const _AnswerResult({required this.result});

  static const _size = 80.0;

  final AnswerResult? result;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return switch (result) {
      AnswerResult.correct => Icon(
          Icons.circle_outlined,
          size: _size,
          color: cs.outline,
        ),
      AnswerResult.incorrect => Icon(
          Icons.close,
          size: _size,
          color: cs.outline,
        ),
      _ => const Gap(_size),
    };
  }
}
