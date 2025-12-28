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

  /* 
    チャット画面の時刻表示
      - 今日: hh:mm
      - 昨日: 昨日
      - 2日前以降: n日前
  */
  String toChatPageDisplay() {
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

  // チャット詳細画面の時刻表示 hh:mm
  String toMessageSentAtDisplay() {
    final hour = this.hour.toString().padLeft(2, '0');
    final minute = this.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
