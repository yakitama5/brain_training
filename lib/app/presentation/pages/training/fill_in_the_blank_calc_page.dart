import 'package:brain_training/app/presentation/pages/training/components/list_answer.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import '../../../domain/training/value_object/answer_result.dart';
import '../../../domain/training/value_object/answer_type.dart';
import '../../../domain/training/value_object/four_arithmetic_operator.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../../components/importer.dart';
import '../training/components/count_down.dart';
import 'components/answer_result_widget.dart';
import 'components/playing_pop_scope_scaffold.dart';
import 'components/stopwatch_builder.dart';

class FillInTheBlankCalcPage extends HookConsumerWidget {
  const FillInTheBlankCalcPage({super.key, required this.answerType});

  final AnswerType answerType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Nested(
      children: [
        const BrightnessScope(brightness: Brightness.light),
        PlayingPopScopeScaffold(
          title: i18n.training.trainingType
              .title(context: TrainingType.fillInTheBlankCalc),
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
    // 内部関数のためリビルドは不要
    final correct = useRef(0);
    final questions = useRef(0);

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
            // MixedColoredWordText(coloredWord: word.value),
            const Gap(80),

            // 回答方法
            ListAnswer(
              values: ForArithmeticOperator.values,
              // TODO(yakitama5): 多言語化対応
              titleBuilder: (value) => const Text('演算子'),
              onAnswered: (answer) {},
            ),
          ],
        );
      },
      onEnd: () {
        // final result = FillInTheBlankCalcResult(
        //   correct: correct.value,
        //   questions: questions.value,
        // );

        // Future<void> addResult() async {
        //   final usecase = ref.read(trainingUsecaseProvider);

        //   await usecase.finishColoredWordTraining(
        //     score: result.score,
        //     rank: result.createRank,
        //     correct: result.correct,
        //     questions: result.questions,
        //     correctRate: result.correctRate,
        //     doneAt: DateTime.now(),
        //   );
        // }

        // // 非同期で処理する
        // unawaited(addResult());
        // TrainingResultRouteData(
        //   result,
        // ).go(context);
      },
    );
  }

  // void onAnswered(
  //   ColoredWord answer,
  //   ValueNotifier<MixedColoredWord> word,
  //   ObjectRef<int> questions,
  //   ObjectRef<int> correct,
  //   ValueNotifier<AnswerResult?> answerResult,
  //   AppSoundPlayers appSoundPlayers,
  // ) {
  //   final isCorrect = word.value.color == answer;
  //   late final AudioPlayer? player;
  //   if (isCorrect) {
  //     correct.value++;
  //     answerResult.value = AnswerResult.correct;
  //     player = appSoundPlayers.quizCorrect;
  //   } else {
  //     answerResult.value = AnswerResult.incorrect;
  //     player = appSoundPlayers.quizIncorrect;
  //   }

  //   player
  //     ..seek(Duration.zero)
  //     ..play();
  //   questions.value++;
  //   word.value = _createMixedWord();
  // }
}
