import 'package:intl/intl.dart';

class DateUtil {

  static DateFormat dbFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  static DateFormat longDateFormat = DateFormat("EEE, d MMM yyyy", "en-US");
  static DateFormat shortDateFormat = DateFormat("d MM yyyy");

  static String convertDateStringDbToNormalDate(String dbDate, DateFormat targetFormat) {
    DateTime dateTime = dbFormat.parse(dbDate);
    return targetFormat.format(dateTime);
  }

  static String convertDateStringDbToAdaptiveFormat(String dbDate) {
    DateTime dateTime = dbFormat.parse(dbDate);

    DateTime dateYesterday = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day-1,
        0,
        0
    );

    if (dateTime.isBefore(dateYesterday)) {
      return longDateFormat.format(dateTime);
    }
    if (dateTime.day == (DateTime.now().day-1)) {
      return "Kemarin";
    }
    if (dateTime.hour != DateTime.now().hour) {
      return "${DateTime.now().hour - dateTime.hour} jam";
    }
    if (dateTime.minute != DateTime.now().minute) {
      return "${DateTime.now().minute - dateTime.minute} menit";
    }
    return "Baru saja";
  }

}