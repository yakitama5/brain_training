import 'package:brain_training/app/application/usecase/settings/settings_usecase.dart';
import 'package:brain_training/app/domain/settings/value_object/color_style.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_style_provider.g.dart';

@riverpod
ColorStyle colorStyle(ColorStyleRef ref) =>
    ref.read(settingsUsecaseProvider).fetchColorStyle();
