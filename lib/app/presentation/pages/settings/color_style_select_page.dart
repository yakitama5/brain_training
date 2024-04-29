import 'package:brain_training/app/application/state/color_style_provider.dart';
import 'package:brain_training/app/application/state/dynamic_color_supported_provider.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_list_tile.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_scaffold.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/settings/settings_usecase.dart';
import '../../../domain/settings/value_object/color_style.dart';

class ColorStyleSelectPage extends HookConsumerWidget {
  const ColorStyleSelectPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDynamicColorSupported = ref.watch(dynamicColorSupportedProvider);
    final initialValue = ref.watch(colorStyleProvider);
    final selected = useState<ColorStyle?>(initialValue);

    // ダイナミックカラーが対象外の場合は除外する
    final values = ColorStyle.values.where(
      (e) => switch (e) {
        ColorStyle.dynamicColor => isDynamicColorSupported,
        _ => true,
      },
    );

    return SettingsRadioScaffold(
      title: i18n.settings.list.layout.colorTheme,
      tiles: values.map((colorStyle) {
        return SettingsRadioListTile<ColorStyle>(
          title: Text(i18n.settings.colorStyle.type(context: colorStyle)),
          value: colorStyle,
          groupValue: selected.value,
          leading: switch (colorStyle) {
            ColorStyle.dynamicColor => const Icon(Icons.person),
            ColorStyle.systemColor => const Icon(Icons.settings),
            // 参考カラーを表示
            ColorStyle.blue ||
            ColorStyle.purple ||
            ColorStyle.green ||
            ColorStyle.red ||
            ColorStyle.pink ||
            ColorStyle.yellow ||
            ColorStyle.orange =>
              SizedBox(
                height: 24,
                width: 24,
                child: ColoredBox(
                  color: colorStyle.seedColor!,
                ),
              ),
          },
          onChanged: (value) {
            selected.value = value;
            ref
                .read(settingsUsecaseProvider)
                .updateColorStyle(colorStyle: colorStyle);
          },
        );
      }).toList(),
    );
  }
}
