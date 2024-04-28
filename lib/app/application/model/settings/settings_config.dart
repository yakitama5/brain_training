import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_config.freezed.dart';

@freezed
class SettingsConfig with _$SettingsConfig {
  const factory SettingsConfig({
    required String howToUseUrl,
    required String contactUsUrl,
    required String developperXAppUrl,
    required String developperXWebUrl,
    required String privacyPolicyUrl,
  }) = _SettingsConfig;
}
