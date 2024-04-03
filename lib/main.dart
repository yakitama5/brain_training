import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/app.dart';
import 'app/application/config/app_config.dart';
import 'app/application/model/flavor.dart';
import 'app/application/state/initial_location_provider.dart';
import 'firebase_options.dart';
import 'firebase_options_dev.dart' as dev;

void main() async {
  // Flutter Initialize
  WidgetsFlutterBinding.ensureInitialized();

  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = switch (appConfig.flavor) {
    Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  // Initialize Firebase
  await Firebase.initializeApp(
    options: firebaseOptions,
  );

  // Firebase Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

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
