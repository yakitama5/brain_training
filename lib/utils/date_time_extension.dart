import 'package:flutter/material.dart';

extension DateTimeX on DateTime {
  /// 日付の00:00から23:59までの範囲に変換する
  DateTimeRange get dayRange => DateTimeRange(
        start: DateTime(year, month, day),
        end: DateTime(year, month, day + 1).copyWith(microsecond: -1),
      );
}
