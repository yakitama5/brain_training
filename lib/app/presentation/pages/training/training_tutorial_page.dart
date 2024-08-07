import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/gen/assets.gen.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';

part 'training_tutorial_page.g.dart';

/// dispose管理を容易にするため、当画面内専用のStateとして定義
@riverpod
// HACK(yakitama5): 推奨されていない利用方法のため、適用方法を検討する (useFutureでもよい)
// ignore: unsupported_provider_value
Future<VideoPlayerController> _videoPlayer(_VideoPlayerRef ref,
    {required TrainingType trainingType}) async {
  final asset = switch (trainingType) {
    TrainingType.coloredWord => Assets.movie.tutorialColor,
    // TODO(yakitama5): 未作成
    TrainingType.themeShiritori => throw UnimplementedError(),
    TrainingType.fillInTheBlankCalc => throw UnimplementedError(),
  };

  final controller = VideoPlayerController.asset(asset);
  await controller.initialize();
  await controller.setLooping(true);
  await controller.setVolume(0);
  await controller.play();

  ref.onDispose(controller.dispose);

  return controller;
}

class TrainingTutorialPage extends HookConsumerWidget {
  const TrainingTutorialPage({
    super.key,
    required this.trainingType,
  });

  final TrainingType trainingType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tt = Theme.of(context).textTheme;

    final snapshot =
        ref.watch(_videoPlayerProvider(trainingType: trainingType));

    // UX優先のため、非同期部分だけをローディング表示
    late final Widget videoWidget;
    if (snapshot.hasValue) {
      videoWidget = VideoPlayer(snapshot.value!);
    } else {
      videoWidget = const ShimmerWidget.rectangular(height: 360);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.tutorial),
      ),
      body: PagePadding(
        child: SingleChildScrollView(
          child: FilledCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 360),
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: videoWidget,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  i18n.training.trainingType.descriptionTitleLarge,
                  style: tt.titleLarge,
                ),
                Text(i18n.training.trainingType
                    .description(context: trainingType)),
                const Gap(8),
                Text(
                  i18n.training.trainingType.howToPlayTitleLarge,
                  style: tt.titleLarge,
                ),
                Text(i18n.training.trainingType
                    .howToPlayBody(context: trainingType)),
                const Gap(16),
                WidthFillBox(
                  child: FilledButton(
                    child: Text(i18n.common.start),

                    // チュートリアル画面をContainerTransitionにするため、`push`を採用
                    onPressed: () {
                      switch (trainingType) {
                        case TrainingType.coloredWord:
                          AnswerSelectRouteData(trainingType)
                              .push<void>(context);
                          return;
                        case TrainingType.themeShiritori:
                        case TrainingType.fillInTheBlankCalc:
                          // TODO(yakitama5): コンテスト用
                          MaintenanceSnackbar.showByContext(context);
                          return;
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
