import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_quiz1/Question1/Serilizable/availability.dart';

part 'department.g.dart';

@JsonSerializable()
class Department {
  @JsonKey(name: 'deptID')
  String deptId;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'manager')
  String manager;
  @JsonKey(name: 'budget')
  double budget;
  @JsonKey(name: 'meeting_time')
  String meeting_time;
  @JsonKey(name: 'year')
  int? year;
  @JsonKey(name: 'availability')
  Availability? availability;

  // DateFormat time12 = DateFormat('hh:mm a');
  // DateFormat time24 = DateFormat('HH:MM');

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meeting_time,
  });

  factory Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentToJson(this);
}
