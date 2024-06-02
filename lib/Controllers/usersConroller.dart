import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:ptc_quiz1/Question3/Models/userInfo.dart';
import 'package:ptc_quiz1/Question3/Models/users.dart';

class UsersController {
  static late Users usersList;
  static late Map<int, UserInfo> infos;

  UsersController() {
    usersList = Users.fromJson(getList());
  }

  UserInfo getUserinfo(int id) {
    UserInfo userI;
    Map<String, dynamic> info = getUserById(id);
    userI = UserInfo.fromJson(info);
    infos.update(id, (value) => userI);
    return userI;
  }

  getUserById(int? id) {
    if (id == null || id < 0) return null;
    Map<String, dynamic> user = {};
    user = {
      "id": id,
      "first_name": faker.person.firstName(),
      "last_name": faker.person.lastName(),
      "about": faker.lorem.words(3).join(' '),
      "image": faker.image.image(),
    };
    return user;
  }

  List<dynamic> getList() {
    String json = '''
[
    {
        "id":0
    },
    {
        "id":1
    },
    {
        "id":2
    },
    {
        "id":3
    },
    {
        "id":4
    },
    {
        "id":5
    },
    {
        "id":6
    },
    {
        "id":7
    },
    {
        "id":8
    },
    {
        "id":9
    },
    {
        "id":10
    }

]
''';
    List<dynamic> jsonFile = jsonDecode(json);
    return jsonFile;
  }
}
