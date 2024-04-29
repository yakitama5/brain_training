import 'package:flutter/material.dart';

class ListAnswer<T> extends StatelessWidget {
  const ListAnswer({
    super.key,
    required this.onAnswered,
    required this.values,
    required this.titleBuilder,
  });

  final void Function(T answer) onAnswered;
  final List<T> values;
  final Widget Function(T value) titleBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: values
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 8,
              ),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => onAnswered(e),
                  child: titleBuilder(e),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
