import 'dart:io';

import 'package:brain_training/app/application/state/app_theme_provider.dart';
import 'package:brain_training/app/application/state/color_style_provider.dart';
import 'package:brain_training/app/application/state/dynamic_color_supported_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/ui_style_provider.dart';
import 'package:brain_training/app/domain/news/interface/news_repository.dart';
import 'package:brain_training/app/domain/settings/interface/settings_service.dart';
import 'package:brain_training/app/domain/training/interface/training_repository.dart';
import 'package:brain_training/app/domain/weather/interface/weather_service.dart';
import 'package:brain_training/app/infrastructure/firebase/repository/firebase_training_repository.dart';
import 'package:brain_training/app/infrastructure/shared_preferences/service/shared_preferences_settings_service.dart';
import 'package:brain_training/app/infrastructure/shared_preferences/state/shared_preference_provider.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'app/application/config/app_config.dart';
import 'app/application/model/app_theme.dart';
import 'app/application/model/flavor.dart';
import 'app/application/state/initial_location_provider.dart';
import 'app/domain/user/interface/user_repository.dart';
import 'app/infrastructure/firebase/repository/firebase_user_repository.dart';
import 'app/infrastructure/news_api/repository/news_api_news_repository.dart';
import 'app/infrastructure/open_weather/service/open_weather_weather_service.dart';
import 'firebase_options.dart';
import 'firebase_options_dev.dart' as dev;
import 'i18n/strings.g.dart';

void main() async {
  // Flutter Initialize
  WidgetsFlutterBinding.ensureInitialized();

  // Theme
  final corePalette = await DynamicColorPlugin.getCorePalette();
  final isDynamicColorSupported =
      corePalette != null && !Platform.isIOS && !Platform.isMacOS;

  // Slang
  LocaleSettings.useDeviceLocale();

  // Flavor に応じた FirebaseOptions を準備する
  final firebaseOptions = switch (appConfig.flavor) {
    Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
  };

  // SharedPreference
  final sharedPreferences = await SharedPreferences.getInstance();

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

        // アプリ内で利用するThemeの定義
        dynamicColorSupportedProvider
            .overrideWithValue(isDynamicColorSupported),
        appThemeProvider.overrideWith(
          (ref) => AppTheme.createAppTheme(
            isDynamicColorSupported: isDynamicColorSupported,
            corePalette: corePalette,
            uiStyle: ref.watch(uiStyleProvider),
            colorStyle: ref.watch(colorStyleProvider),
          ),
        ),

        // インフラ層のDI
        // Firebase
        userRepositoryProvider.overrideWith(FirebaseUserRepository.new),
        trainingRepositoryProvider.overrideWith(FirebaseTrainingRepository.new),

        // OpenWeatherM
        weatherServiceProvider.overrideWith(OpenWeatherWeatherService.new),

        // News API
        newsRepositoryProvider.overrideWith(NewsApiNewsRepository.new),

        // SharedPreference
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
        settingsServiceProvider
            .overrideWith(SharedPreferencesSettingsService.new),
      ],
      child: TranslationProvider(
        child: const App(),
      ),
    ),
  );
}
