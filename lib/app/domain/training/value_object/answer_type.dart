import 'package:flutter/material.dart';

enum AnswerType {
  voice('声で回答する', Icons.mic_rounded),
  list('選択肢から回答する', Icons.list_rounded);

  const AnswerType(this.text, this.iconData);

  final String text;
  final IconData iconData;
}
