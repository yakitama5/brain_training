import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class PagePadding extends SingleChildStatelessWidget {
  const PagePadding({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}
