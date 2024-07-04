import 'package:brain_training/app/domain/settings/interface/settings_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'first_result_provider.g.dart';

@riverpod
class TrainingFirstDone extends _$TrainingFirstDone {
  @override
  bool build() => ref.read(settingsServiceProvider).isFirstResult();

  Future<void> done() async {
    await ref.read(settingsServiceProvider).doneFirstResult();
    state = true;
  }
}
