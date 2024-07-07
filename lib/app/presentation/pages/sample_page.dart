import 'package:brain_training/app/application/usecase/training/state/stt_recognized_text_provider.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SamplePage extends HookConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recognizedText =
        ref.watch(sttRecognizedTextProvider(locale: i18n.$meta.locale)).value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('テスト用のサンプルページ'),
      ),
      body: Center(
        child: Text(recognizedText ?? '?'),
      ),
    );
  }
}
