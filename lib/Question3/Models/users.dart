import 'package:ptc_quiz1/Question3/Models/user.dart';

class Users {
  List<User> users = [];

  Users(this.users);

  factory Users.fromJson(List<dynamic> json) =>
      Users(json.map((x) => User.fromJson(x)).toList());

  List<dynamic> toJson() => users.map((x) => x.toJson()).toList();
}
