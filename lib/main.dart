import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/app.dart';
import 'src/application/state/initial_location_provider.dart';

void main() {
  // Flutter Initialize
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      overrides: [
        // 初期ロケーションの設定
        initialLocationProvider.overrideWith((ref) => '/home'),
      ],
      child: const App(),
    ),
  );
}
