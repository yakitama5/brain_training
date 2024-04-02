import 'dart:async';
import 'dart:math';

import 'package:brain_training/app/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/app/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../application/state/speech_to_text_provider.dart';
import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/answer_type.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import '../training/components/count_down.dart';
import 'components/mixed_colored_word_text.dart';

class ColoredWordPage extends HookConsumerWidget {
  const ColoredWordPage({super.key, required this.answerType});

  final AnswerType answerType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completedCountDown = useState(false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        title: const Text('色当てクイズ'),
      ),
      body: completedCountDown.value
          ? PlayPage(answerType: answerType)
          : CountDown(
              initialSecond: 3,
              onEnd: () => completedCountDown.value = true,
            ),
    );
  }
}

class PlayPage extends HookWidget {
  PlayPage({super.key, required this.answerType});

  static const _timerDuration = Duration(milliseconds: 100);

  final AnswerType answerType;
  final Stopwatch stopwatch = Stopwatch();

  @override
  Widget build(BuildContext context) {
    final word = useState(_createMixedWord());
    final correct = useState(0);
    final questions = useState(0);
    final ms = useState(TrainingType.coloredWord.limitMillSecond);

    void updateStopWatch() {
      ms.value = TrainingType.coloredWord.limitMillSecond -
          stopwatch.elapsed.inMilliseconds;

      // 終了時
      if (ms.value <= 0) {
        stopwatch.stop();

        TrainingResultRouteData(
          ColoredWordResult(
            correct: correct.value,
            questions: questions.value,
          ),
        ).go(context);
        return;
      }

      if (stopwatch.isRunning) {
        Timer(_timerDuration, updateStopWatch);
      }
    }

    void onAnswered(ColoredWord answer) {
      if (word.value.color == answer) {
        correct.value++;
      }
      questions.value++;
      word.value = _createMixedWord();
      stopwatch.start();
      Timer(
        _timerDuration,
        updateStopWatch,
      );
    }

    useEffect(
      () {
        stopwatch.start();
        Timer(_timerDuration, updateStopWatch);
        return stopwatch.reset;
      },
      [stopwatch],
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: GaugeChart(
                  value: 100 -
                      ms.value / TrainingType.coloredWord.limitMillSecond * 100,
                  radius: 56,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(top: 64, bottom: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MixedColoredWordText(coloredWord: word.value),

                    // 回答エリア
                    switch (answerType) {
                      AnswerType.voice => VoiceAnswer(onAnswered: onAnswered),
                      AnswerType.list => ListAnswer(onAnswered: onAnswered),
                    },
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
        // speech.initialize();
        // return null;
        // onListen((result) {
        //   logger.d(result.alternates.map((e) => e.recognizedWords).join(','));
        // });
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
