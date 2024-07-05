import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/app/presentation/pages/training/components/training_card.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:brain_training/utils/date_time_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/usecase/training/state/training_result_provider.dart';
import '../../components/importer.dart';
import '../error/components/error_view.dart';
import '../home/components/headline_pane.dart';

class TrainingMenuPage extends HookConsumerWidget {
  const TrainingMenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rankCategory = ref.watch(rankCategoryProvider);

    // HACK(yakitama5): メニューを状態管理したい
    final results = TrainingType.values.map(
      (type) => (
        type,
        ref.watch(
          trainingResultProvider(
            trainingType: type,
            dateTime: DateTime.now().dayStart,
          ),
        ),
      ),
    );

    final doneMenu = results.map(
      (result) => result.$2.when(
        data: (resultData) => resultData == null
            ? const SizedBox.shrink()
            : TrainingCard.detail(
                trainingType: result.$1,
                result: resultData,
                rankCategory: rankCategory,
              ),
        error: ErrorView.new,
        loading: _Shimmer.new,
      ),
    );

    final menu = results.map(
      (result) => result.$2.when(
        data: (resultData) => resultData != null
            ? const SizedBox.shrink()
            : TrainingCard.detail(
                trainingType: result.$1,
                rankCategory: rankCategory,
              ),
        error: ErrorView.new,
        loading: _Shimmer.new,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.menu),
      ),
      body: SingleChildScrollView(
        child: PagePadding(
          child: Column(
            children: [
              ...menu,
              const Gap(32),
              HeadlinePane(
                label: i18n.training.doneMenu,
                child: Column(
                  children: [...doneMenu],
                ),
              ),
              const Gap(120),
            ],
          ),
        ),
      ),
    );
  }
}

class _Shimmer extends StatelessWidget {
  const _Shimmer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ShimmerWidget.circular(
        width: double.infinity,
        height: 144,
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
