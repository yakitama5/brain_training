import 'dart:async';
import 'dart:math';

import 'package:brain_training/app/application/model/app_sound_players.dart';
import 'package:brain_training/app/application/state/app_sound_players_provider.dart';
import 'package:brain_training/app/application/usecase/training/training_usecase.dart';
import 'package:brain_training/app/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/app/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/app/presentation/pages/training/components/count_down.dart';
import 'package:brain_training/app/presentation/pages/training/components/playing_pop_scope_scaffold.dart';
import 'package:brain_training/app/presentation/pages/training/components/stopwatch_builder.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nested/nested.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../../utils/logger.dart';
import '../../../application/usecase/user/state/auth_user_provider.dart';
import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/answer_result.dart';
import '../../../domain/training/value_object/answer_type.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import '../../routes/src/routes/routes.dart';
import 'components/mixed_colored_word_text.dart';

class ColoredWordPage extends HookConsumerWidget {
  const ColoredWordPage({super.key, required this.answerType});

  final AnswerType answerType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Nested(
      children: [
        const BrightnessScope(brightness: Brightness.light),
        PlayingPopScopeScaffold(
          title: i18n.training.trainingType
              .title(context: TrainingType.coloredWord),
        ),
        const CountDownContainer(),
      ],
      child: PlayPage(answerType: answerType),
    );
  }
}

class PlayPage extends HookConsumerWidget {
  PlayPage({super.key, required this.answerType});

  static const interval = Duration(milliseconds: 100);
  static const endDuration = Duration(milliseconds: 2000);

  final AnswerType answerType;
  final Stopwatch stopwatch = Stopwatch();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appSoundPlayers = ref.watch(appSoundPlayersProvider);

    // 内部関数のためリビルドは不要
    final correct = useRef(0);
    final questions = useRef(0);

    final word = useState(_createMixedWord());
    final answerResult = useState<AnswerResult?>(null);

    return StopwatchBuilder(
      stopwatch: stopwatch,
      limit: TrainingType.coloredWord.limitMillSecond,
      builder: (context) {
        return Column(
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
                    appSoundPlayers,
                  ),
                ),
              AnswerType.list => ListAnswer(
                  onAnswered: (answer) => onAnswered(
                    answer,
                    word,
                    questions,
                    correct,
                    answerResult,
                    appSoundPlayers,
                  ),
                ),
            },
          ],
        );
      },
      onEnd: () {
        final result = ColoredWordResult(
          correct: correct.value,
          questions: questions.value,
        );

        Future<void> addResult() async {
          final usecase = ref.read(trainingUsecaseProvider);
          final user = await ref.read(authUserProvider.future);

          await usecase.finishColoredWordTraining(
            userId: user!.id,
            score: result.score,
            rank: result.rank,
            correct: result.correct,
            questions: result.questions,
            correctRate: result.correctRate,
            doneAt: DateTime.now(),
          );
        }

        // 非同期で処理する
        unawaited(addResult());
        TrainingResultRouteData(
          result,
        ).go(context);
      },
    );
  }

  void onAnswered(
    ColoredWord answer,
    ValueNotifier<MixedColoredWord> word,
    ObjectRef<int> questions,
    ObjectRef<int> correct,
    ValueNotifier<AnswerResult?> answerResult,
    AppSoundPlayers appSoundPlayers,
  ) {
    final isCorrect = word.value.color == answer;
    late final AudioPlayer? player;
    if (isCorrect) {
      correct.value++;
      answerResult.value = AnswerResult.correct;
      player = appSoundPlayers.quizCorrect;
    } else {
      answerResult.value = AnswerResult.incorrect;
      player = appSoundPlayers.quizIncorrect;
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

class VoiceAnswer extends HookConsumerWidget {
  VoiceAnswer({super.key, required this.onAnswered});

  final void Function(ColoredWord answer) onAnswered;

  final SpeechToText client = SpeechToText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final enableListening = useRef(true);
    final listenText = useState('');

    useEffect(
      () {
        startListening(enableListening, listenText);
        return () {
          enableListening.value = false;
          client.cancel();
        };
      },
      [client],
    );

    return Column(
      children: [
        const Icon(
          Icons.mic,
          size: 92,
        ),
        const Gap(12),
        // TODO(yakitama5): 多言語化対応
        Text('声で回答して下さい', style: ts.headlineMedium),
        Text(listenText.value, style: ts.headlineMedium),
      ],
    );
  }

  Future<void> startListening(
    ObjectRef<bool> enableListening,
    ValueNotifier<String> listenText,
  ) async {
    await client.initialize(
      onStatus: (status) => onStatus(status, enableListening, listenText),
    );
    return onListen(enableListening, listenText);
  }

  void onStatus(
    String status,
    ObjectRef<bool> enableListening,
    ValueNotifier<String> listenText,
  ) {
    // ステータスの変化を受け取って保存
    if (status == 'listening') {
      // 入力音声の取得中
      // - SpeechRecognition.onStart
      // - SpeechRecognition.onSpeechStart
    } else if (status == 'notListening') {
      // 入力音声の取得停止中
      // - SpeechRecognition.onEnd
    } else if (status == 'done' || status == 'doneNoResult') {
      // 音声認識が完了(結果あり)
      // - SpeechRecognition.onEnd、かつ、結果があるとき
      // 音声認識が完了(結果なし)
      // - SpeechRecognition.onEnd、かつ、結果がないとき
      if (enableListening.value) {
        onListen(enableListening, listenText);
      }
    }
  }

  Future<void> onListen(
    ObjectRef<bool> enableListening,
    ValueNotifier<String> listenText,
  ) async {
    await client.listen(
      pauseFor: const Duration(seconds: 10),
      onResult: (result) {
        listenText.value = result.recognizedWords;

        logger.d(result.alternates.map((e) => e.recognizedWords).join(','));
        final answer = ColoredWord.values.firstWhereOrNull(
          (type) => result.alternates
              .where(
                (word) => word.recognizedWords.contains(
                  i18n.training.coloredWord.readWord(context: type),
                ),
              )
              .isNotEmpty,
        );

        if (answer == null) {
          // TODO(yakitama5): 聞こえにくい！みたいな文字を出す
          return;
        }

        return onAnswered(answer);
      },
      listenFor: const Duration(seconds: 60),
      listenOptions: SpeechListenOptions(
        listenMode: ListenMode.dictation,
      ),
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
