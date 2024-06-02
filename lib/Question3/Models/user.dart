import 'package:faker/src/faker.dart';

class User {
  int id;

  User(this.id);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['id']);
  }

  Map<String, dynamic> toJson() => {'id': id};

}
