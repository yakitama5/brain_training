import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'components/error_view.dart';

class ErrorPage extends HookWidget {
  const ErrorPage({super.key, this.exception});

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ErrorView(
            exception ?? '未知のエラー',
            null,
          ),
        ),
      ),
    );
  }
}
