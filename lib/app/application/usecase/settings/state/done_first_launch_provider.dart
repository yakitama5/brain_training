import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/settings/interface/settings_service.dart';

part 'done_first_launch_provider.g.dart';

@riverpod
class DoneFirstLaunch extends _$DoneFirstLaunch {
  @override
  bool build() {
    return false;
  }

  Future<void> done() async {
    await ref.read(settingsServiceProvider).doneLaunch();
    state = true;
  }
}
