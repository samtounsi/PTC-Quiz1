import 'package:intl/intl.dart';

class Time {
  late DateTime meeting_time;
  late String format;

  Time(String timeString) { 
    try {
      DateFormat dateFormat = DateFormat('HH:mm');
      meeting_time = dateFormat.parseStrict(timeString);
      format = 'HH:mm';
    } catch (e) {
      DateFormat dateFormat = DateFormat('h:mm a');
      meeting_time = dateFormat.parseStrict(timeString);
      format = 'h:mm a';
    }
  }

  factory Time.fromJson(String meeting_time) {
    return Time(meeting_time);
  }

  String toJson(){
    DateFormat dateFormat = DateFormat(format);
    return dateFormat.format(meeting_time);
  }
}
