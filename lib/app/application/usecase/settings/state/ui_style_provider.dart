import 'package:brain_training/app/application/usecase/settings/settings_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/settings/value_object/ui_style.dart';

part 'ui_style_provider.g.dart';

@Riverpod(keepAlive: true)
UIStyle uiStyle(UiStyleRef ref) =>
    ref.watch(settingsUsecaseProvider).fetchUIStyle();
