import 'package:faker/faker.dart';

class UserInfo {
  int id;
  String firstName;
  String lastName;
  String about;
  String image;

  UserInfo({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.about,
    required this.image,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      about: json['about'],
      image: json['image']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'about': about,
        'image': image,
      };

  String getFullname() {
    return this.firstName + " " + this.lastName;
  }
}
