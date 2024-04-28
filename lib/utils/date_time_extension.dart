import 'package:flutter/material.dart';

extension DateTimeX on DateTime {
  /// 当日日付の00:00:00を取得する
  DateTime get dayStart => DateTime(year, month, day);

  /// 当日日付の23:59:59を取得する
  DateTime get dayEnd =>
      DateTime(year, month, day + 1).copyWith(microsecond: -1);

  /// 日付の00:00から23:59までの範囲に変換する
  DateTimeRange get dayRange => DateTimeRange(start: dayStart, end: dayEnd);

  /// 一週間の開始(月曜日)と終了(日曜日)の範囲に変換する
  DateTimeRange get weekRange {
    // 日曜日開始ならこっち
    // final start = subtract(Duration(days: (weekday - 7).abs())).dayStart;

    final start = subtract(Duration(days: weekday - 1)).dayStart;
    final end = start.add(const Duration(days: 6)).dayEnd;
    return DateTimeRange(start: start, end: end);
  }
}
