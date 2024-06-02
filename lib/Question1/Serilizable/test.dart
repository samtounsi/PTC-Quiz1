import 'package:json_annotation/json_annotation.dart';
import 'package:ptc_quiz1/Question1/Serilizable/company.dart';
part 'test.g.dart';

@JsonSerializable()
class Test {
  @JsonKey(name: 'company')
  Company company;

  Test(this.company);

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);

  Map<String, dynamic> toJson() => _$TestToJson(this);
}
