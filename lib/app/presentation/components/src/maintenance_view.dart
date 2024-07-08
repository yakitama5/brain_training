import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../i18n/strings.g.dart';

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
          const Gap(32),
          Text(
            i18n.maintenance.sorryMessage,
            style: tt.titleLarge,
          ),
        ],
      ),
    );
  }
}

class _MaintenanceLottie extends StatelessWidget {
  static const _surfaceLayer = [
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 6', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 3', '**'],
  ];

  static const _primaryLayer = [
    ['Maintenance_page', 'Cursor1 Outlines', '**'],
    ['Maintenance_page', 'BoxGrid Outlines 2', '**'],
    ['Maintenance_page', 'BoxGrid Outlines', '**'],
    ['Maintenance_page', 'Shape Layer 1', '**'],
    ['Maintenance_page', 'SwingHead Outlines', 'Group 2', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 3', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 1', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 7', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 8', '**'],
    ['Maintenance_page', 'Cursor2 Outlines', '**'],
    ['Maintenance_page', 'GridMove Outlines', '**'],
    ['Maintenance_page', 'Grid Outlines', '**'],
    ['Maintenance_page', 'Line Outlines', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 1', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 4', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 5', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 23', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 35', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 36', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 76', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 79', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 81', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 82', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 83', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 86', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 87', '**'],
  ];

  static const _primaryFixedDimLayer = [
    ['Maintenance_page', 'SwingHead Outlines', 'Group 3', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 2', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 4', '**'],
    ['Maintenance_page', 'SwingAtas Outlines', 'Group 4', 'Group 5', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 2', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 6', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 7', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 8', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 3', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 6', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 8', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 11', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 2', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 5', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 14', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 15', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 17', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 24', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 25', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 26', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 27', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 28', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 29', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 30', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 31', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 32', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 33', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 34', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 39', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 40', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 41', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 68', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 69', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 71', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 72', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 74', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 75', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 77', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 85', '**'],
  ];

  static const _primaryContainerLayer = [
    ['Maintenance_page', 'Box Outlines', '**'],
    ['Maintenance_page', 'LazyLoad Outlines', '**'],
    ['Maintenance_page', 'SwingHead Outlines', 'Group 4', '**'],
    ['Maintenance_page', 'BoxGrid2 Outlines', '**'],
    ['Maintenance_page', 'PC Outlines', 'Group 9', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 1', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 4', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 7', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 9', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 10', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 12', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 13', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 16', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 18', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 37', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 42', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 43', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 44', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 45', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 46', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 47', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 48', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 49', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 50', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 51', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 52', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 53', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 54', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 55', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 56', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 57', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 58', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 59', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 60', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 61', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 62', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 63', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 64', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 65', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 66', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 67', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 70', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 73', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 78', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 80', '**'],
    ['Maintenance_page', 'Crane Outlines', 'Group 84', '**'],
  ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Lottie.asset(
      Assets.lottie.maintenance,
      delegates: LottieDelegates(
        values: [
          ..._surfaceLayer.map((e) => ValueDelegate.color(
                e,
                value: cs.surfaceContainer,
              )),
          ..._primaryLayer.map((e) => ValueDelegate.strokeColor(
                e,
                value: cs.primary,
              )),
          ..._primaryLayer.map((e) => ValueDelegate.color(
                e,
                value: cs.primary,
              )),
          ..._primaryFixedDimLayer.map((e) => ValueDelegate.color(
                e,
                value: cs.primaryFixedDim,
              )),
          ..._primaryContainerLayer.map((e) => ValueDelegate.color(
                e,
                value: cs.primaryContainer,
              )),
        ],
      ),
    );
  }
}
