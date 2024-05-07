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
  Widget build(BuildContext context) =>
      // 環境に応じて表示を切り替える
      switch (appConfig.flavor) {
        Flavor.dev => _ProdErrorView(error, stackTrace),
        // Flavor.dev => _DebugErrorView(error, stackTrace),
        Flavor.prod => _ProdErrorView(error, stackTrace),
      };
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

/// 本番環境用のエラー表示
class _ProdErrorView extends HookWidget {
  const _ProdErrorView(this.error, this.stackTrace);

  final Object error;
  final StackTrace? stackTrace;

  static const errorLayers = [
    {
      'cono 3': [
        'Group 4',
        'Group 5',
        'Group 8',
      ],
    }
  ];

  static const bounceStrokeLayers = [
    // 'Shape Layer 1',
    'linea 1',
    'linea 2',
    'linea 3',
    // 'bounce',
    // 'escalador',
    // 'NULL CONTROL',
    // 'o1 Outlines',
  ];

  static const surfaceContainerLayers = [
    {
      'mancha Outlines 2': [
        '**',
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    /// 利用者向けにわかりやすい表示を行う
    /// エラー情報の収集などはWidgetではなく設定で対応するため不要
    // TODO(yakitama5): 利用者用のアニメーションとエラー表示を追加
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          Lottie.asset(
            Assets.lottie.sorry,
            height: 80,
            delegates: LottieDelegates(
              values: [
                // びっくりのせん
                ...bounceStrokeLayers.map(
                  (e) => ValueDelegate.strokeColor(
                    [e, '**'],
                    value: cs.error,
                  ),
                ),
                ValueDelegate.strokeColor(
                  ['o1 Outlines', '**'],
                  value: cs.onSurface,
                ),
                // 背景色
                ValueDelegate.color(
                  const ['mancha Outlines 2', '**'],
                  value: cs.surfaceVariant,
                ),
                // 下の途中までの縁(右側)
                ValueDelegate.color(
                  const ['cono 3', 'Group 1', '**'],
                  value: cs.onError,
                ),
                // 下の途中までの縁(左側)
                ValueDelegate.color(
                  const ['cono 3', 'Group 2', '**'],
                  value: cs.onError,
                ),
                // 全体のアウトライン
                ValueDelegate.color(
                  const ['cono 3', 'Group 3', '**'],
                  value: cs.onSurface,
                ),
                // コーン下側の縁
                ValueDelegate.color(
                  const ['cono 3', 'Group 4', '**'],
                  value: cs.error,
                ),
                // コーン右側の線
                ValueDelegate.color(
                  const ['cono 3', 'Group 5', '**'],
                  value: cs.error,
                ),
                // 1本目の線
                ValueDelegate.color(
                  const ['cono 3', 'Group 7', '**'],
                  value: cs.onError,
                ),
                // 2本目の線
                ValueDelegate.color(
                  const ['cono 3', 'Group 6', '**'],
                  value: cs.onError,
                ),
                // コーン本体の色
                ValueDelegate.color(
                  const ['cono 3', 'Group 8', '**'],
                  value: cs.error,
                ),
              ],
            ),
          ),
          Text(
            'インターネットに接続されていません',
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}

/// 開発環境用のエラー表示
class _DebugErrorView extends HookWidget {
  const _DebugErrorView(this.error, this.stackTrace);

  final Object error;
  final StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // 開発者向けには単純なエラー内容を表示するのみ
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          Text(
            error.errorMessage,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
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
