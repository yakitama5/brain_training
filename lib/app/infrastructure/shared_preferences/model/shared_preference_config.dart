import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_preference_config.freezed.dart';

@freezed
class SharedPreferenceConfig with _$SharedPreferenceConfig {
  const factory SharedPreferenceConfig({
    required String rankCategoryKey,
    required String uiStyleKey,
    required String themeModeKey,
    required String colorStyleKey,
    required String firstResultKey,
  }) = _SharedPreferenceConfig;
}
