import 'package:ptc_quiz1/Question1/Manual/availability.dart';
import 'package:ptc_quiz1/Question1/Mixins/dateMixin.dart';

class Departement with DateMixin {
  String deptId;
  String name;
  String manager;
  double budget;
  String meeting_time;
  int? year;
  Availability? availability;

  // DateFormat time12 = DateFormat('hh:mm a');
  // DateFormat time24 = DateFormat('HH:MM');

  Departement({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meeting_time,
  });
  factory Departement.fromJson(Map<String, dynamic> json) {
    Departement d;
    if (!json.containsKey('year') && !json.containsKey('availability')) {
      d = Departement(
        deptId: json['deptId'],
        name: json['name'],
        manager: json['manager'],
        budget: json['budget'],
        meeting_time: json['meeting_time'],
      );
    } else {
      d = Departement(
        deptId: json['deptId'],
        name: json['name'],
        manager: json['manager'],
        budget: json['budget'],
        year: json['year'],
        availability: Availability.fromJson(json['availability']),
        meeting_time: json['meeting_time'],
      );
    }
    return d;
  }

  Map<String, dynamic> toJson() {
    if (year == null && availability == null) {
      return {
        'deptId': deptId,
        'name': name,
        'manager': manager,
        'budget': budget,
        'meeting_time': meeting_time,
      };
    } else {
      return {
        'deptId': deptId,
        'name': name,
        'manager': manager,
        'budget': budget,
        'year': year,
        'availability': availability!.toJson(),
        'meeting_time': meeting_time,
      };
    }
  }
}
