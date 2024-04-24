import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nested/nested.dart';

class HeadlinePane extends SingleChildStatelessWidget {
  const HeadlinePane({super.key, super.child, required this.label});

  final String label;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    final ts = Theme.of(context).textTheme;

    if (child == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ts.titleLarge,
        ),
        const Gap(8),
        child,
      ],
    );
  }
}
