import 'package:brain_training/app/application/state/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

/// Brightness指定でThemeをoverrideするWidget
class BrightnessScope extends SingleChildStatelessWidget {
  const BrightnessScope({
    super.key,
    super.child,
    required this.brightness,
  });

  final Brightness brightness;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => Consumer(
        builder: (context, ref, _) {
          final appTheme = ref.watch(appThemeProvider);

          final theme = switch (brightness) {
            Brightness.light => appTheme.light,
            Brightness.dark => appTheme.dark,
          };

          return Theme(
            data: theme,
            child: child!,
          );
        },
      );
}
