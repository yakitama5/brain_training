import 'package:flutter/material.dart';

extension DateTimeX on DateTime {
  /// 当日日付の00:00:00を取得する
  DateTime get dayStart => DateTime(year, month, day);

  /// 当日日付の23:59:59を取得する
  DateTime get dayEnd =>
      DateTime(year, month, day + 1).copyWith(microsecond: -1);

  /// 日付の00:00から23:59までの範囲に変換する
  DateTimeRange get dayRange => DateTimeRange(start: dayStart, end: dayEnd);

  /// 一週間の開始と終了の範囲に変換する
  DateTimeRange get weekRange {
    final start = subtract(Duration(days: weekday - 1)).dayStart;
    final end = start.add(const Duration(days: 6)).dayEnd;
    return DateTimeRange(start: start, end: end);
  }
}
