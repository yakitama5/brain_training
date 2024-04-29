import 'dart:async';
import 'dart:math';

import 'package:brain_training/app/application/model/app_sound_players.dart';
import 'package:brain_training/app/application/state/app_sound_players_provider.dart';
import 'package:brain_training/app/application/usecase/training/training_usecase.dart';
import 'package:brain_training/app/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/app/domain/read_color/value_object/colored_word.dart';
import 'package:brain_training/app/presentation/pages/training/components/adaptive_answer_widget.dart';
import 'package:brain_training/app/presentation/pages/training/components/count_down.dart';
import 'package:brain_training/app/presentation/pages/training/components/playing_pop_scope_scaffold.dart';
import 'package:brain_training/app/presentation/pages/training/components/stopwatch_builder.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nested/nested.dart';

import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/answer_result.dart';
import '../../../domain/training/value_object/answer_type.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import '../../routes/src/routes/routes.dart';
import 'components/answer_result_widget.dart';
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
            AnswerResultWidget(result: answerResult.value),

            // 色付き文字
            MixedColoredWordText(coloredWord: word.value),
            const Gap(80),

            // 回答方法
            AdaptiveAnswerWidget(
              answerType: answerType,
              values: ColoredWord.values,
              titleBuilder: (value) => Text(
                i18n.training.coloredWord.displayWord(context: value),
              ),
              readBuilder: (value) =>
                  i18n.training.coloredWord.readWord(context: value),
              onAnswered: (answer) => onAnswered(
                answer,
                word,
                questions,
                correct,
                answerResult,
                appSoundPlayers,
              ),
            ),
          ],
        );
      },
      onEnd: () {
        final result = ColoredWordResult.initialize(
          correct: correct.value,
          questions: questions.value,
          doneAt: DateTime.now(),
        );

        Future<void> addResult() async {
          final usecase = ref.read(trainingUsecaseProvider);

          await usecase.finishColoredWordTraining(
            score: result.score,
            rank: result.rank,
            correct: result.correct,
            questions: result.questions,
            correctRate: result.correctRate,
            doneAt: result.doneAt,
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
