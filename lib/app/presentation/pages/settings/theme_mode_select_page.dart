import 'package:brain_training/app/application/usecase/settings/state/theme_mode_provider.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_list_tile.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_scaffold.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/settings/settings_usecase.dart';

class ThemeModeSelectPage extends HookConsumerWidget {
  const ThemeModeSelectPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(themeModeProvider);
    final selected = useState<ThemeMode?>(initialValue);

    return SettingsRadioScaffold(
      title: i18n.settings.list.layout.uiStyle,
      tiles: ThemeMode.values.map((themeMode) {
        return SettingsRadioListTile<ThemeMode>(
          title: Text(i18n.settings.themeMode.type(context: themeMode)),
          value: themeMode,
          groupValue: selected.value,
          leading: Icon(
            switch (themeMode) {
              ThemeMode.system => Icons.accessibility,
              ThemeMode.light => Icons.light_mode,
              ThemeMode.dark => Icons.dark_mode,
            },
          ),
          onChanged: (value) {
            selected.value = value;
            ref
                .read(settingsUsecaseProvider)
                .updateThemeMode(themeMode: themeMode);
          },
        );
      }).toList(),
    );
  }
}
