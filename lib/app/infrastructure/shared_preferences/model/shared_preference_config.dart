import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_preference_config.freezed.dart';

@freezed
class SharedPreferenceConfig with _$SharedPreferenceConfig {
  const factory SharedPreferenceConfig({
    required String rankCategoryKey,
  }) = _SharedPreferenceConfig;
}