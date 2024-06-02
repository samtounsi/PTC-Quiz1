import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_quiz1/Question1/Mixins/dateMixin.dart';
import 'package:ptc_quiz1/Question1/Serilizable/address.dart';
import 'package:ptc_quiz1/Question1/Serilizable/department.dart';
part 'company.g.dart';

@JsonSerializable()
class Company with DateMixin {
  @JsonKey(name: 'is_active')
  //@JsonKey(name: 'isActive')
  int isActive;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'address')
  Address? address;
  @JsonKey(
      name: 'established', fromJson: _$formatEstablish, toJson: _$returnToUTC)
  String established;
  @JsonKey(name: 'departements')
  List<Department>? departements = [];

  Company({
    required this.isActive,
    required this.name,
    this.address,
    required this.established,
    this.departements,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  static String _$formatEstablish(String date) {
    return DateMixin.formatDate(date, 'dd-MMM, yyyy');
  }

  static String _$returnToUTC(String date) {
    return DateMixin.formatUtcDate(date);
  }
}
