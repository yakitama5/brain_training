import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_list_tile.dart';
import 'package:brain_training/app/presentation/pages/settings/components/settings_radio_scaffold.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/settings/settings_usecase.dart';
import '../../../domain/training/value_object/rank_category.dart';

class RankCategorySelectPage extends HookConsumerWidget {
  const RankCategorySelectPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(rankCategoryProvider);
    final selected = useState<RankCategory?>(initialValue);

    return SettingsRadioScaffold(
      title: i18n.settings.list.layout.rankType,
      tiles: RankCategory.values.map((type) {
        return SettingsRadioListTile<RankCategory>(
          title: Text(i18n.training.result.category(context: type)),
          value: type,
          groupValue: selected.value,
          leading: Icon(type.iconData),
          onChanged: (value) {
            selected.value = value;
            ref
                .read(settingsUsecaseProvider)
                .updateRankCategory(rankCategory: value);
          },
        );
      }).toList(),
    );
  }
}
