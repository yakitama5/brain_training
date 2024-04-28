import 'package:brain_training/app/application/usecase/settings/state/ui_style_provider.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_list_tile.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_scaffold.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/settings/settings_usecase.dart';
import '../../../domain/settings/value_object/ui_style.dart';

class UIStyleSelectPage extends HookConsumerWidget {
  const UIStyleSelectPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(uiStyleProvider);
    final selected = useState<UIStyle?>(initialValue);

    return SettingsRadioScaffold(
      title: i18n.settings.list.layout.rankType,
      tiles: UIStyle.values.map((style) {
        return SettingsRadioListTile<UIStyle>(
          title: Text(i18n.settings.uiStyle.type(context: style)),
          value: style,
          groupValue: selected.value,
          leading: Icon(style.iconData),
          onChanged: (value) {
            selected.value = value;
            ref.read(settingsUsecaseProvider).updateUIStyle(style: style);
          },
        );
      }).toList(),
    );
  }
}
