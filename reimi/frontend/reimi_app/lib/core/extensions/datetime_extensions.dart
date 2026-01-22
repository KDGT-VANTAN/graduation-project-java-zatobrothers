import 'package:intl/intl.dart';

extension DateTimeFormatExtension on DateTime {
  // yyyy年MM月dd日形式
  String get toJapaneseDateyyyyMMdd => DateFormat('yyyy年MM月dd日').format(this);

  // yyyy年MM月形式
  String get toJapaneseDateyyyyMM => DateFormat('yyyy年MM月').format(this);

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

  /* 
    チャット画面の時刻表示
      - 今日: HH:mm
      - 昨日: 昨日
      - 2日前以降: n日前
  */
  String toDisplayDateText() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final targetDate = DateTime(year, month, day);
    final differenceInDays = today.difference(targetDate).inDays;

    if (differenceInDays == 0) {
      final hour = this.hour.toString().padLeft(2, '0');
      final minute = this.minute.toString().padLeft(2, '0');
      return '$hour:$minute';
    } else if (differenceInDays == 1) {
      return '昨日';
    } else {
      return '$differenceInDays日前';
    }
  }

  // HH:mm
  String toHHmmTimeDisplay() {
    final hour = this.hour.toString().padLeft(2, '0');
    final minute = this.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  String toRelativeDateTime() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.isNegative) {
      return 'たった今';
    }

    final isToday = now.year == year && now.month == month && now.day == day;

    if (isToday) {
      if (difference.inMinutes < 1) {
        return 'たった今';
      } else if (difference.inMinutes < 60) {
        return '${difference.inMinutes}分前';
      } else {
        return '${difference.inHours}時間前';
      }
    } else {
      if (difference.inDays == 1) {
        return '1日前';
      } else {
        return '${difference.inDays}日前';
      }
    }
  }
}
