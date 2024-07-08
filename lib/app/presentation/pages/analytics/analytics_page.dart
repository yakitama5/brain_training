import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';

import '../../components/importer.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.analytics.title),
      ),
      body: const MaintenanceView(),
    );
  }
}
