import 'package:brain_training/app/application/state/loading_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../i18n/strings.g.dart';
import 'application/state/color_scheme_provider.dart';
import 'presentation/components/importer.dart';
import 'presentation/routes/src/routes/router.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final colorSchemes = ref.watch(colorSchemesProvider);

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

      // Slang
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      // アプリ全体のスクロール制御を変更
      scrollBehavior: ScrollConfiguration.of(context)
          .copyWith(physics: const BouncingScrollPhysics()),

      // テーマ設定
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorSchemes.lightColorScheme,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: colorSchemes.darkColorScheme,
        brightness: Brightness.dark,
      ),
    );
  }
}
