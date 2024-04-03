import 'package:brain_training/app/application/state/loading_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/components/importer.dart';
import 'presentation/routes/src/routes/router.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      builder: (context, child) => Consumer(
        builder: (context, ref, _) {
          final isLoading = ref.watch(loadingNotifierProvider);
          return Stack(
            children: [
              child ?? const SizedBox.shrink(),
              if (isLoading) const OverlayLoading(),
            ],
          );
        },
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      // アプリ全体のスクロール制御を変更
      scrollBehavior: ScrollConfiguration.of(context)
          .copyWith(physics: const BouncingScrollPhysics()),
    );
  }
}
