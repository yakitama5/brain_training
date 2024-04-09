import 'dart:async';
import 'dart:math';

import 'package:brain_training/app/application/usecase/training/training_usecase.dart';
import 'package:brain_training/app/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/app/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../../gen/assets.gen.dart';
import '../../../application/state/speech_to_text_provider.dart';
import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/answer_result.dart';
import '../../../domain/training/value_object/answer_type.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import '../../routes/src/routes/routes.dart';
import '../training/components/count_down.dart';
import 'components/mixed_colored_word_text.dart';

class ColoredWordPage extends HookConsumerWidget {
  const ColoredWordPage({super.key, required this.answerType});

  final AnswerType answerType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completedCountDown = useState(false);

    return Theme(
      data: Theme.of(context).copyWith(brightness: Brightness.light),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
          title: Text(
            i18n.training.trainingType.title(context: TrainingType.coloredWord),
          ),
        ),
        body: completedCountDown.value
            ? PlayPage(answerType: answerType)
            : CountDown(
                initialSecond: 3,
                onEnd: () => completedCountDown.value = true,
              ),
      ),
    );
  }
}

class PlayPage extends HookConsumerWidget {
  PlayPage({super.key, required this.answerType});

  static const interval = Duration(milliseconds: 100);

  final AnswerType answerType;
  final Stopwatch stopwatch = Stopwatch();
  final int limit = TrainingType.coloredWord.limitMillSecond;
  final AudioPlayer correctSoundPlayer = AudioPlayer()
    ..setAsset(Assets.sounds.quizCorrect);
  final AudioPlayer incorrectSoundPlayer = AudioPlayer()
    ..setAsset(Assets.sounds.quizIncorrect);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 内部関数のためリビルドは不要
    final correct = useRef(0);
    final questions = useRef(0);

    final word = useState(_createMixedWord());
    final ms = useState(0);
    final answerResult = useState<AnswerResult?>(null);

    useEffect(
      () {
        stopwatch.start();
        Timer(
          interval,
          () => updateStopWatch(ms, () async {
            // TODO(yakitama5): 登録処理を追加...？

            ref.read(trainingUsecaseProvider).finishColoredWordTraining(
                  userId: userId,
                  score: score,
                  rank: rank,
                  correct: correct,
                  questions: questions,
                  correctRate: correctRate,
                  doneAt: doneAt,
                );

            TrainingResultRouteData(
              ColoredWordResult(
                correct: correct.value,
                questions: questions.value,
              ),
            ).go(context);
          }),
        );
        return stopwatch.reset;
      },
      [stopwatch],
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GaugeChart(
                value: ms.value / limit * 100,
                radius: 56,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                children: [
                  // 正誤表示
                  _AnswerResult(result: answerResult.value),

                  // 色付き文字
                  MixedColoredWordText(coloredWord: word.value),
                  const Gap(80),

                  // 回答方法
                  switch (answerType) {
                    AnswerType.voice => VoiceAnswer(
                        onAnswered: (answer) => onAnswered(
                          answer,
                          word,
                          questions,
                          correct,
                          answerResult,
                        ),
                      ),
                    AnswerType.list => ListAnswer(
                        onAnswered: (answer) => onAnswered(
                          answer,
                          word,
                          questions,
                          correct,
                          answerResult,
                        ),
                      ),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateStopWatch(ValueNotifier<int> ms, void Function() onEnd) {
    ms.value = stopwatch.elapsed.inMilliseconds;

    // 終了時
    if (ms.value >= limit) {
      stopwatch.stop();
      onEnd();
      return;
    }

    if (stopwatch.isRunning) {
      Timer(interval, () => updateStopWatch(ms, onEnd));
    }
  }

  void onAnswered(
    ColoredWord answer,
    ValueNotifier<MixedColoredWord> word,
    ObjectRef<int> questions,
    ObjectRef<int> correct,
    ValueNotifier<AnswerResult?> answerResult,
  ) {
    final isCorrect = word.value.color == answer;
    late final AudioPlayer? player;
    if (isCorrect) {
      correct.value++;
      answerResult.value = AnswerResult.correct;
      player = correctSoundPlayer;
    } else {
      answerResult.value = AnswerResult.incorrect;
      player = incorrectSoundPlayer;
    }

    player
      ..seek(Duration.zero)
      ..play();
    questions.value++;
    word.value = _createMixedWord();
  }

  MixedColoredWord _createMixedWord() {
    final max = ColoredWord.values.length;

    return MixedColoredWord(
      color: ColoredWord.values[Random().nextInt(max)],
      word: ColoredWord.values[Random().nextInt(max)],
    );
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
                  child: Text(e.hiragana),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class VoiceAnswer extends HookConsumerWidget {
  VoiceAnswer({super.key, required this.onAnswered});

  final void Function(ColoredWord answer) onAnswered;

  final SpeechToText speech = SpeechToText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final stt = ref.watch(sTTProvider);

    useEffect(
      () {
        stt.startListening();
        return null;
      },
    );

    return Column(
      children: [
        const Icon(
          Icons.mic,
          size: 92,
        ),
        const Gap(12),
        Text('声で回答して下さい', style: ts.headlineMedium),
        Text(stt.speechToText.lastRecognizedWords, style: ts.headlineMedium),
      ],
    );
  }

  Future<void> onListen(SpeechResultListener onResult) async {
    await speech.initialize();
    await speech.listen(
      onResult: onResult,
      listenFor: const Duration(seconds: 60),
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
