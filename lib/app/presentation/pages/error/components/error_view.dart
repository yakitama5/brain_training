import 'package:brain_training/app/application/model/flavor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../application/config/app_config.dart';
import '../../../../domain/exception/exceptions.dart';

class ErrorView extends HookWidget {
  const ErrorView(this.error, this.stackTrace, {super.key});

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          const _CornLottie(
            height: 80,
          ),
          // 環境に応じて表示を切り替える
          switch (appConfig.flavor) {
            Flavor.dev => Text(
                error.errorMessage,
                style:
                    textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            Flavor.prod => Text(
                'エラーが発生しました。',
                style:
                    textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
          },
          const Gap(40),
        ],
      ),
    );
  }
}

class SliverErrorView extends ErrorView {
  const SliverErrorView(super.error, super.stackTrace, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: super.build(context),
    );
  }
}

class _CornLottie extends StatelessWidget {
  const _CornLottie({required this.height});

  final double height;

  // static const errorLayers = [
  //   {
  //     'cono 3': [
  //       'Group 4',
  //       'Group 5',
  //       'Group 8',
  //     ],
  //   }
  // ];

  // static const errorStrokeLayers = [
  //   'linea 1',
  //   'linea 2',
  //   'linea 3',
  // ];

  // static const surfaceContainerLayers = [
  //   {
  //     'mancha Outlines 2': [
  //       '**',
  //     ],
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Lottie.asset(
      Assets.lottie.sorry,
      height: height,
      delegates: LottieDelegates(
        values: [
          // びっくりのせん
          // ...errorStrokeLayers.map(
          //   (e) => ValueDelegate.strokeColor(
          //     [e, '**'],
          //     value: cs.error,
          //   ),
          // ),
          ValueDelegate.strokeColor(
            ['o1 Outlines', '**'],
            value: cs.onSurface,
          ),
          // 背景色
          ValueDelegate.color(
            const ['mancha Outlines 2', '**'],
            value: cs.surfaceContainerHighest,
          ),
          // // 下の途中までの縁(右側)
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 1', '**'],
          //   value: cs.onError,
          // ),
          // // 下の途中までの縁(左側)
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 2', '**'],
          //   value: cs.onError,
          // ),
          // // 全体のアウトライン
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 3', '**'],
          //   value: cs.onSurface,
          // ),
          // // コーン下側の縁
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 4', '**'],
          //   value: cs.error,
          // ),
          // // コーン右側の線
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 5', '**'],
          //   value: cs.error,
          // ),
          // // 1本目の線
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 7', '**'],
          //   value: cs.onError,
          // ),
          // // 2本目の線
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 6', '**'],
          //   value: cs.onError,
          // ),
          // // コーン本体の色
          // ValueDelegate.color(
          //   const ['cono 3', 'Group 8', '**'],
          //   value: cs.error,
          // ),
        ],
      ),
    );
  }
}

extension ExceptionObjectX on Object {
  String get errorMessage {
    if (this is RequiredRecordExistsException) {
      return (this as RequiredRecordExistsException).errorMessage;
    } else if (this is DeletePermissionException) {
      return (this as DeletePermissionException).errorMessage;
    } else if (this is AccountLinkException) {
      return (this as AccountLinkException).errorMessage;
    } else if (this is BusinessException) {
      return (this as BusinessException).errorMessage;
    }

    return toString();
  }
}
