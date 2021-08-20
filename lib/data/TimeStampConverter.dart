import 'package:intl/intl.dart';

extension TimeStampConverter on int {
  String timeStampDateFormatted() {
    return DateFormat('yyyy-MM-dd').format(new DateTime.fromMillisecondsSinceEpoch(this));
  }

  String timeStampDateAndTimeFormatted() {
    return DateFormat.Hms().format(new DateTime.fromMillisecondsSinceEpoch(this));
  }
}
