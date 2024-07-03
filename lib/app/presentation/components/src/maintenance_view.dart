import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../gen/assets.gen.dart';

class MaintenanceView extends StatelessWidget {
  const MaintenanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _MaintenanceLottie(),
          Text(
            'test',
            style: tt.titleLarge,
          ),
        ],
      ),
    );
  }
}

class _MaintenanceLottie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Lottie.asset(
      Assets.lottie.maintenance,
      delegates: const LottieDelegates(
        values: [
          // ...primary.map((e) => ValueDelegate.strokeColor(
          //       e,
          //       value: cs.primary,
          //     )),
          // ...primary.map((e) => ValueDelegate.color(
          //       e,
          //       value: cs.primary,
          //     )),
          // ...fixedDim.map((e) => ValueDelegate.strokeColor(
          //       e,
          //       value: cs.primaryFixedDim,
          //     )),
          // ...fixedDim.map((e) => ValueDelegate.color(
          //       e,
          //       value: cs.primaryFixedDim,
          //     )),
          // ...primaryContainer.map((e) => ValueDelegate.strokeColor(
          //       e,
          //       value: cs.primaryContainer,
          //     )),
          // ...primaryContainer.map((e) => ValueDelegate.color(
          //       e,
          //       value: cs.primaryContainer,
          //     )),
        ],
      ),
    );
  }
}
