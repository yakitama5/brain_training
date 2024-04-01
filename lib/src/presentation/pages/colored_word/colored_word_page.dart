import 'dart:async';
import 'dart:math';

import 'package:brain_training/src/application/model/training/training_result.dart';
import 'package:brain_training/src/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/src/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/src/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import 'components/mixed_colored_word_text.dart';

class ColoredWordPage extends HookConsumerWidget {
  ColoredWordPage({super.key});

  static const _duration = Duration(milliseconds: 100);

  final SpeechToText speech = SpeechToText();
  final Stopwatch stopwatch = Stopwatch();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final word = useState(_createMixedWord());
    final correct = useState(0);
    final questions = useState(0);
    final ms = useState(TrainingType.coloredWord.limitMillSecond);

    void updateStopWatch() {
      ms.value = TrainingType.coloredWord.limitMillSecond -
          stopwatch.elapsed.inMilliseconds;

      if (ms.value <= 0) {
        TrainingResultRouteData(
          TrainingType.coloredWord,
          $extra: TrainingResult(
            correct: correct.value,
            quesLength: questions.value,
          ),
        ).go(context);
        stopwatch.stop();
        return;
      }

      if (stopwatch.isRunning) {
        Timer(_duration, updateStopWatch);
      }
    }

    useEffect(
      () {
        // onListen((result) {
        // text.value = result.recognizedWords;
        // });
        // return speech.cancel;

        stopwatch.start();
        Timer(_duration, updateStopWatch);
        return stopwatch.reset;
        // return null;
      },
      [speech, stopwatch],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        title: const Text('色当てクイズ'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: GaugeChart(
                    value: 100 -
                        ms.value /
                            TrainingType.coloredWord.limitMillSecond *
                            100,
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
                      // Button版
                      Column(
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
                                    onPressed: () {
                                      if (word.value.color == e) {
                                        correct.value++;
                                      }
                                      questions.value++;
                                      word.value = _createMixedWord();
                                      stopwatch.start();
                                      Timer(_duration, updateStopWatch);
                                    },
                                    child: Text(e.hiragana),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

  Future<void> onListen(SpeechResultListener onResult) async {
    await speech.initialize();
    await speech.listen(
      onResult: onResult,
    );
  }
}
