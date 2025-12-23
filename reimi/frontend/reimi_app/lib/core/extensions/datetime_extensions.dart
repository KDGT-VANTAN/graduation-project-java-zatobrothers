import 'package:intl/intl.dart';

extension DateTimeFormatExtension on DateTime {
  // yyyy年MM月dd日形式
  String get toJapaneseDate => DateFormat('yyyy年MM月dd日').format(this);

  // yyyy年M月d日形式(0埋めなし)
  String get toJapaneseDateShort => DateFormat('yyyy年M月d日').format(this);

  // yyyy-MM-dd形式
  String get toIsoDate => DateFormat('yyyy-MM-dd').format(this);

  // yyyy/MM/dd形式
  String get toSlashDate => DateFormat('yyyy/MM/dd').format(this);

  // 曜日付き
  String get toJapaneseDateWithWeekday =>
      DateFormat('yyyy年MM月dd日(E)', 'ja').format(this);

  // 年齢
  String get toAge => '(${DateTime.now().year - year})';
}
