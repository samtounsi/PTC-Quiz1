import 'package:ptc_quiz1/Question1/Manual/company.dart';

class Test {
  Company company;

  Test(this.company);

  factory Test.fromJson(Map<String, dynamic> json) {
    return Test(Company.fromJson(json['company']));
  }

  Map<String, dynamic> toJson() {
    return {'company': company.toJson()};
  }
}
