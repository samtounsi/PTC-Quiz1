import 'package:intl/intl.dart';

mixin DateMixin {
  late String format;
  static String formatDate(String date, String format) {
    DateTime t = DateTime.parse(date).toLocal();
    final DateFormat formatter = DateFormat(format);
    return formatter.format(t);
  }

  static String formatUtcDate(String date) {
    DateTime t = DateTime.parse(date).toUtc();
    return t.toIso8601String();
  }

  // String saveFormat(String date) {
  //   DateTime dt;
  //   try {
  //     DateFormat dateFormat = DateFormat('HH:mm');
  //     dt = dateFormat.parseStrict(date, true);
  //     format = 'HH:mm';
  //     return date;
  //   } catch (e) {
  //     DateFormat dateFormat = DateFormat('h:mm a');
  //     dt = dateFormat.parseStrict(date, true);
  //     format = 'h:mm a';
  //     return date;
  //   }
  // }
}
