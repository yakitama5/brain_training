import 'package:brain_training/app/application/usecase/user/user_usecase.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/pages/presentation_mixin.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OnboardPage extends HookConsumerWidget with PresentationMixin {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('オンボード'),
      ),
      body: Column(
        children: [
          WidthFillBox(
            child: FilledButton(
              onPressed: () => execute(
                context,
                action: () async => ref.read(userUsecaseProvider).signUp(),
              ),
              child: const Text('ゲストとしてログイン'),
            ),
          ),
          WidthFillBox(
            child: FilledButton(
              onPressed: () {},
              child: const Text('Google'),
            ),
          ),
          WidthFillBox(
            child: FilledButton(
              onPressed: () {},
              child: const Text('Apple'),
            ),
          ),
        ],
      ),
    );
  }
}
