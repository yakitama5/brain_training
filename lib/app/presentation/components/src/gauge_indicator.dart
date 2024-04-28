import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

import '../../theme/importer.dart';

class GaugeChart extends HookWidget {
  const GaugeChart({
    super.key,
    required this.value,
    this.radius = 96,
    this.thickness = 20,
    this.color,
    this.emptyColor,
  });

  final double value;
  final double radius;
  final Color? color;
  final Color? emptyColor;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    // HACK(yakitama5): fl_chartで対応されたら変更
    // https://github.com/imaNNeo/fl_chart/issues/199

    final cs = Theme.of(context).colorScheme;

    return RotatedBox(
      quarterTurns: 2,
      child: AnimatedRadialGauge(
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
        radius: radius,
        value: value,
        axis: GaugeAxis(
          max: 100,
          degrees: 360,
          pointer: const GaugePointer.circle(radius: 0, color: Colors.white),
          style: GaugeAxisStyle(thickness: thickness),
          progressBar: GaugeProgressBar.rounded(
            // 値が0以下の場合表示が崩れるので、透明色を設定して表示を調整する
            color: value <= 0 ? Colors.transparent : color ?? cs.primary,
          ),
          segments: [
            GaugeSegment(
              from: 0,
              to: 100,
              color: emptyColor ?? cs.surfaceContainer,
            ),
          ],
        ),
      ),
    );
  }
}
