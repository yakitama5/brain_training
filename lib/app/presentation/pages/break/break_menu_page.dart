import 'package:flutter/material.dart';

import '../../../../i18n/strings.g.dart';
import '../../components/importer.dart';

class BreakMenuPage extends StatelessWidget {
  const BreakMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.breather.title),
      ),
      body: const MaintenanceView(),
    );
  }
}
