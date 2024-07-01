import 'package:brain_training/app/application/config/app_build_config_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyLincensePage extends HookConsumerWidget {
  const MyLincensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBuildConfig = ref.watch(appBuildConfigProvider);
    return LicensePage(
      applicationName: appBuildConfig.appName,
      applicationVersion: appBuildConfig.version,
      applicationIcon: const Icon(Icons.flutter_dash),
      applicationLegalese: '@Yakuran',
    );
  }
}
